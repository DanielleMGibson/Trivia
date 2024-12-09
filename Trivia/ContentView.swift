//
//  ContentView.swift
//  Trivia
//
//  Created by Student on 12/5/24.
//

import SwiftUI

struct ContentView: View {
    var title = "How To Train Your Dragon Trivia"
    var questions = [
        [
            "question": "What was the dragon called that Hiccup killed?",
            "options": ["The Red Death", "SeaShocker", "Death Song", "Night Fury"],
            "answer": "The Red Death"
        ],
        [
            "question": "What did they name the baby Death Song?",
            "options": ["Garffiljorg", "Stormfly", "Windsheer", "Barf and Belch"],
            "answer": "Garffiljorg"
        ],
        [
            "question": "What kind of egg was given to someone to care for at the end of Race To The Edge?",
            "options": ["Death Song", "Bewilderbeast", "Monsterous Nightmare", "Scauldron"],
            "answer": "Bewilderbeast"
        ],
        [
            "question": "How many dragons did Hiccup kill throughout the movies and shows?",
            "options": ["10", "7", "1", "13"],
            "answer": "1"
        ],
        [
            "question": "Who did Tuffnut stop eatting chicken for?",
            "options": ["Chicken", "Barf and Belch", "Toothless", "Ruffnut"],
            "answer": "Chicken"
        ],
        [
            "question": "Who is Heather's brother?",
            "options": ["Hiccup Haddock the Third", "Fishlegs Ingerman", "Oswald the Agreeable", "Dagur the Estranged"],
            "answer": "Dagur the Estranged"
        ],
        [
            "question": "How did Hiccup and Toothless meet?",
            "options": ["Hiccup shot Toothless down", "Hiccup found him in a cavern randomly one day", "Toothless hunted Hiccup", "Randomly"],
            "answer": "Hiccup shot Toothless down"
        ],
        [
            "question": "Who is NOT the bad guy?",
            "options": ["Drago Bloodfist", "Stoick the Vast", "Grimmel the Grizzly", "Ryker Grimborn"],
            "answer": "Stoick the Vast"
        ],
        [
            "question": "Which dragon did Viggo Grimborn bond with?",
            "options": ["Skrill", "Sand Wraith", "Light Fury", "Snow Wraith"],
            "answer": "Skrill"
        ],
        [
            "question": "What are the name's of the Night Lights?",
            "options": ["Scooter, Sally, Skeeter", "Ruff Runner, Dart, Pouncer", "Huey, Dewey, Louie", "Donnie, Donna, Don"],
            "answer": "Ruff Runner, Dart, Pouncer"
        ]
    ]
    
    let answersDictionary = [
        [
            "answer": ["The Red Death", "SeaShocker", "Death Song", "Night Fury"]
        ],
        [
            "answer": ["Garffiljorg", "Stormfly", "Windsheer", "Barf and Belch"]
        ],
        [
            "answer": ["Death Song", "Bewilderbeast", "Monsterous Nightmare", "Scauldron"]
        ],
        [
            "answer": ["10", "7", "1", "13"]
        ],
        [
            "answer": ["Chicken", "Barf and Belch", "Toothless", "Ruffnut"]
        ],
        [
            "answer": ["Hiccup Haddock the Third", "Fishlegs Ingerman", "Oswald the Agreeable", "Dagur the Estranged"]
        ],
        [
            "answer": ["Hiccup shot Toothless down", "Hiccup found him in a cavern randomly one day", "Toothless hunted Hiccup", "Randomly"]
        ],
        [
            "answer": ["Drago Bloodfist", "Stoick the Vast", "Grimmel the Grizzly", "Ryker Grimborn"]
        ],
        [
            "answer": ["Skrill", "Sand Wraith", "Light Fury", "Snow Wraith"]
        ],
        [
            "answer": ["Scooter, Sally, Skeeter", "Ruff Runner, Dart, Pouncer", "Huey, Dewey, Louie", "Donnie, Donna, Don"]
        ]
    ]
    @State private var questionIndex = 0
    @State private var message = "What was the dragon called that Hiccup killed?"
    @State private var ques = [
        [
            "question": "First Question",
            "answer": "First Answer"
        ],
        [
            "question": "Second Question",
            "answer": "Second Answer"
        ],
        [
            "question": "Third Question",
            "answer": "Third Answer"
        ],
        [
            "question": "Fourth Question",
            "answer": "Fourth Answer"
        ],
        [
            "question": "Fifth Question",
            "answer": "Fifth Answer"
        ],
        [
            "question": "Sixth Question",
            "answer": "Sixth Answer"
        ],
        [
            "question": "Seventh Question",
            "answer": "Seventh Answer"
        ],
        [
            "question": "Eighth Question",
            "answer": "Eighth Answer"
        ],
        [
            "question": "Ninth Question",
            "answer": "Ninth Answer"
        ],
        [
            "question": "Tenth Question",
            "answer": "Tenth Answer"
        ]
    ]
    
    var body: some View {
        VStack {
            Text(ques[questionIndex]["question"]!)
            
            Text("How To Train Your Dragon Trivia")
            
            Text(message)
            
            Button {
                checkAnswer(ans: 0)
            } label: {
                Text(displayAnswer(index: questionIndex)[0])
            }
            
            Button {
                checkAnswer(ans: 1)
            } label: {
                Text(displayAnswer(index: questionIndex)[1])
            }
            
            Button {
                checkAnswer(ans: 2)
            } label: {
                Text(displayAnswer(index: questionIndex)[2])
            }
            
            Button {
                checkAnswer(ans: 3)
            } label: {
                Text(displayAnswer(index: questionIndex)[3])
            }
             
            Button {
                nextQuestion()
            } label: {
                Text("Next Question")
            }
            
        }
    }
    func checkAnswer(ans: Int){
        if (displayAnswer(index: questionIndex)[ans] == questions[questionIndex]["answer"] as! String) {
            message = "CORRECT"
        } else {
            message = "WRONG"
        }
    }
    
    
    func nextQuestion() {
        if (questionIndex < questions.count - 1){
            questionIndex += 1
            message = questions[questionIndex]["question"] as! String
        } else {
            message = "Game Over. Thanks for playing!"
        }
    }
    
    
    func displayAnswer(index: Int) -> [String] {
        return questions[index]["options"]! as! [String]
    }
}
    #Preview {
        ContentView()
    }

