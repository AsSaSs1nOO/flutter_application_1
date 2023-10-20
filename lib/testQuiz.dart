//Preposer la structure des donnees de Quiz

void main() {
  List Question=[
    {
      "Question 1":"what's ur favorite color",
      "reponses":[
        {
          "answer":"red",
          "score":2
        },

         {
          "answer":"blue",
          "score":3
        },

         {
          "answer":"green",
          "score":0
        }

        ]
    },
    {
      "Question 2":"what's ur favorite car",
      "reponses":[
        {
          "answer":"Dodge",
          "score":6
        },

         {
          "answer":"Mercedes",
          "score":9
        },

         {
          "answer":"BMW",
          "score":8
        }

        ]
    },
    
    {
      "Question 3":"what's ur favorite pet ?",
      "reponses":[
        {
          "answer":"cat",
          "score":2
        },

         {
          "answer":"dog",
          "score":3
        },

         {
          "answer":"Bird",
          "score":0
        }

        ]
    },
        ];
        print(Question[1]["reponses"][2]["score"]);
    }

