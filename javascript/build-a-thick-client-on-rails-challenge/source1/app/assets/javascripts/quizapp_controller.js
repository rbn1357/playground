QuizApp.Controller = function(view){
  this.quizList = new QuizApp.QuizList();
  this.view = view;
  this.controller = this;
  this.sessionId = this.sessionMaker();
};

QuizApp.Controller.prototype = {
  gotQuizzes: function(collectionOfJsonQuizzes){
    this.quizList = new QuizApp.QuizzesFromQuizRetriever(collectionOfJsonQuizzes).createQuizzes();
    view.renderQuizzes(this.quizList);
  },
  setEventListeners: function(){
    $('.container').on('click', 'a', function(event){
      event.preventDefault();
      var id = $('.container').find('span').html();
      controller.getQuizQuestion(id);
    });
    $('.container').on('click', 'div[class=choice]', function(event){
      event.preventDefault();
      userChoice = this.getAttribute('id');
      questionId = $('span[class=id]').html();
      controller.postChoice(questionId, userChoice);
    });
  },
  sessionMaker: function(){
    var alphabet = "abcdefghijklmnopqrstuvwxyz1234567890";
    var sessionId = "";
    for(i=0; i < 14; i++){
      sessionId += alphabet[Math.floor((Math.random()* 36))];
    }
    return sessionId;
  },
  getQuizQuestion: function(id){
    params = {session_key: controller.sessionId};
    view.clearScreen();
    $.ajax({
      url: '/quizzes/' + id + '/questions/next.json',
      type: 'get',
      data: params
    }).done(function(server_data){
      view.renderQuestion(server_data.question);
    });
  },
  postChoice: function(questionId, userChoice){
    var questionData = {session_key: this.sessionId, question_id: questionId, choice_id: userChoice};
    $.ajax({
      url: '/questions/' + questionId + '/answers.json',
      type: 'post',
      data: questionData
    }).done(function(serverData){
      if (serverData.status.more_questions) {
        controller.getQuizQuestion(serverData.status.quiz_id);
      }
      else {
        view.renderSummary(serverData.status)
      }
    });
  }
};