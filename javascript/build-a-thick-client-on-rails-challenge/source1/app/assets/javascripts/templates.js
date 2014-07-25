Templates = {};

Templates.quizTitle = []

Templates.quizEntry = [
                  "<div class='entry'>",
                  "<a href='/quizzes/{{id}}/questions/next'>",
                  "<h1><span class='id'>{{id}}</span>: {{name}}</h1>",
                  "</div>",
                  "</a>"].join("");

Templates.question = [
                  "<div class='entry'>",
                  "<h1><span class='id'>{{question_id}}</span>: {{question_content}}</h1>",
                  "{{#each choices}}",
                  "<div class='choice' id='{{this.choice_id}}'>",
                  "{{this.choice}}</div>",
                  "{{/each}}",
                  "</a>",
                  "</div>",
                  ].join("");

Templates.summary = [
                  "<div class='entry'>",
                  "{{num_correct}} correct, {{num_incorrect}} incorrect",
                  "</div>",
                  ].join("");