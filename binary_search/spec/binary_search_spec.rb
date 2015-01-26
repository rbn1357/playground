require './binary_search'

RSpec.describe BinarySearch do
  let(:search_num) { 4 }

  describe '.call' do
    let(:random_arr) { [1, 4, 6, 9] }

    before do
      allow(RandomNumberArrayGenerator).to receive(:call).and_return(random_arr)
    end

    context 'when the search num is not in the array' do
      let(:search_num) { 20 }
      it 'returns -1 if the search_num is not found' do
        expect(described_class.call(search_num)).to eq(-1)
      end
    end

    context 'when the search num is in the array' do
      let(:search_num) { 9 }
      it 'returns the index where the search num is found' do
        expect(described_class.call(search_num)).to eq(3)
      end
    end
  end
end
