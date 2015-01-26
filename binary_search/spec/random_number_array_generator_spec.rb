require './random_number_array_generator'

RSpec.describe RandomNumberArrayGenerator do
  describe '.call' do
    let(:max_threshold) { 1000 }

    it 'returns an array of a specified quantity' do
      expect(described_class.call(5, max_threshold).count).to eq(5)
    end

    it 'takes a max number threshold argument' do
      result = described_class.call(5, max_threshold)
      invalid_nums = result.select { |num| num > max_threshold }
      expect(invalid_nums.count).to eq(0)
    end
  end
end
