describe("Namespace", function(){
  it("is defined", function(){
    expect(QuizApp).toBeDefined(); 
  });
});

describe("Controller", function(){
  beforeEach(function(){
    controller = new QuizApp.Controller();
  });

  it("defines a controller attribute", function(){
    expect(controller.controller).toBeDefined();
  });

  it("sets the session", function(){
    expect(typeof controller.sessionId).toBe("string");
  });

  it("has a sessionId that is 14 characters long", function(){
    expect(controller.sessionId.length).toBe(14);
  });
});