QuizApp.QuizRetriever = function(quizzesBearer){
  this.quizzesBearer = quizzesBearer;
};

QuizApp.QuizRetriever.prototype = {
  getQuizJson: function(){
    var quizzesBearer = this.quizzesBearer;
    $.ajax({
      url: '/quizzes.json',
      type: 'GET'
    }).done(function(server_data){
      quizzesBearer.gotQuizzes(server_data.quizzes);
    });
  }
};

QuizApp.QuizzesFromQuizRetriever = function(collectionOfJsonQuizzes){
  this.collectionOfJsonQuizzes = collectionOfJsonQuizzes;
  this.quizContainer = [];
};

QuizApp.QuizzesFromQuizRetriever.prototype = {
  createQuizzes: function(){
    for(var i = 0; i < this.collectionOfJsonQuizzes.length; i++){
      var Quiz = new QuizApp.Quiz(this.collectionOfJsonQuizzes[i]);
      this.quizContainer.push(Quiz);
    }
    return this.quizContainer;
  }
};

QuizApp.Quiz = function(JsonQuizData){
  this.quiz_id = JsonQuizData.quiz_id;
  this.name = JsonQuizData.name;
};

QuizApp.Quiz.prototype = {

};

QuizApp.QuizList = function() {
  this.list = [];
};

QuizApp.QuizList.prototype = {

};