QuizApp.View = function(){

};

QuizApp.View.prototype = {
  renderQuizzes: function(quizList){
    this.clearScreen();
    for(var i=0; i < quizList.length; i++ ){
      var template = Handlebars.compile(Templates.quizEntry);
      var templateInput = {id: quizList[i].quiz_id, name: quizList[i].name};
      view.renderTemplate(template, templateInput);
    }
  },
  clearScreen: function(){
    $('.container').html("");
  },
  renderQuestion: function(question){
    var template = Handlebars.compile(Templates.question);
    templateInput = {question_id: question.question_id, 
                     question_content: question.question,
                     choices: question.choices};
    view.renderTemplate(template, templateInput);
  },
  renderSummary: function(summaryInfo){
    this.clearScreen();
    var template = Handlebars.compile(Templates.summary);
    var templateInput = {numCorrect: summaryInfo.num_correct, num_incorrect: summaryInfo.num_incorrect};
    view.renderTemplate(template, templateInput);
  },
  renderTemplate: function(template, templateInput){
    var html = template(templateInput);
    $('.container').append(html);
  }
};