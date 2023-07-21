//
//  Trivia.swift
//  Eco Educator
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Trivia: View {
    @State private var currentQuestion: Question?
    @State private var waitingForQuestion = false
    @State private var grade: String = ""
    
    var body: some View {
        ZStack {
            Color("darkGreen").ignoresSafeArea()
                VStack {
                    Text(currentQuestion?.text ?? "Tap the button to generate a question.")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        //.font(.largeTitle)
                        .font(.custom("Fresca", size: 40))
                        .foregroundColor(Color.white)

                    
                    Spacer()
                    ForEach(currentQuestion?.choices ?? [], id: \.self) { choice in
                        Button(action: {
                            checkAnswer(choice)}) {
                                Text(choice)
                                    .padding()
                            }
                            .disabled(currentQuestion == nil || waitingForQuestion)
                    }
                    Spacer()
                    Text(grade)
                        .font(.largeTitle)
                    Button(action: {
                        grade = ""
                        
                        if waitingForQuestion {
                            // The user needs to wait, show the alert.
                            waitingForQuestion = true
                            DispatchQueue.main.async {
                                waitingForQuestion = false
                            }
                        } else {
                            // Generate a new question if not waiting.
                            currentQuestion = generateRandomQuestionIfNeeded()
                            waitingForQuestion = true // Set waitingForQuestion to true to trigger the alert.
                        }
                    }, label: {
                        Text("Generate Question")
                            .foregroundColor(Color.white)
                            .font(.custom("Fresca", size: 17))

                    })    //add the formatting for the button right here
                    .padding()
                    .foregroundColor(Color.white)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                    
                    
                }
        .padding()
        //the next is the code to make the alert show up
        .alert(isPresented: $waitingForQuestion) {
            Alert(
                title: Text("Please wait!"),
                message: Text("A new question will be available in a day."),
                dismissButton: .default(Text("Got it!"))
                { currentQuestion = generateRandomQuestionIfNeeded()})
        }
    }
}
    func generateRandomQuestionIfNeeded() -> Question? {
        if shouldDisplayNewQuestion() {
            guard !questionBank.isEmpty else {
                fatalError("Question bank is empty. Add questions to the questionBank array.")
            }
            
            let randomIndex = Int.random(in: 0..<questionBank.count)
            let newQuestion = questionBank[randomIndex]
            
            // Store the current date as the last date a question was displayed.
            UserDefaults.standard.set(Date(), forKey: "LastQuestionDate")
            
            return newQuestion
        } else {
            return nil // Return nil when there's no need to display a new question.
        }
    }
    
    func shouldDisplayNewQuestion() -> Bool {
        // Retrieve the last date a question was displayed (using UserDefaults).
        if let lastQuestionDate = UserDefaults.standard.object(forKey: "LastQuestionDate") as? Date {
            // Get the current date.
            let currentDate = Date()
            // Compare the last question date with the current date and check if it's a different day.
            let calendar = Calendar.current
            return !calendar.isDate(lastQuestionDate, inSameDayAs: currentDate)
        }

        // If there's no last question date (first-time use), return true to display a new question.
        return true
    }
        //if right or wrong
    func checkAnswer(_ selectedAnswer: String) {
        guard let question = currentQuestion else {
            return
        }

        if selectedAnswer == question.correctAnswer {
            // Implement your logic for handling a correct answer other than printing.
            print("Correct!")
            grade = "You are correct!"
        } else {
            // Implement your logic for handling an incorrect answer other than printing.
            print("Incorrect!")
            grade = "You are incorrect!"

        }
    }
    
    
    } // closes contentview

let questionBank = [
    
    Question(text: "What is the main greenhouse gas responsible for climate change?", choices: ["Nitrous Oxide (N2O)", "Methane", "Carbon Dioxide (co2)", "Chlorofluorocarbons (CFCs)"], correctAnswer: "Carbon Dioxide (co2)"),
    Question(text: "Which marine animal, vital to ocean ecosystems, is threatened by ocean acidification caused by increased carbon dioxide absorption?", choices: ["Sea Turtles", "Jellyfish", "Dolphins", "Coral"], correctAnswer: "Coral"),
    Question(text: "Using dishwashers can save water:", choices: ["true", "false"], correctAnswer: "true"),
    Question(text: "Which environmental activist gained global recognition for their efforts to combat climate change and was nominated for the Nobel Peace Prize?", choices: ["Greta Thunberg", "Vandana Shiva", "David Suzuki", "Leonardo DiCaprio"], correctAnswer: "Greta Thunberg"),
    Question(text: "What is the term for the disappearance of a species from its natural habitat, often caused by environmental changes?", choices: ["Deforestation", "Biodiversity Loss", "Fragmentation", "Extinction"], correctAnswer: "Extinction"),
    Question(text: "Which of the following is NOT usually included in the three 'R's'", choices: ["Recycle", "Reclaim", "Reuse", "Reduce"], correctAnswer: "Reclaim"),
    Question(text: "Which of the following types of energy produces the least pollution?", choices: ["Wind", "Coal", "Natural Gas", "Oil"], correctAnswer: "Wind"),
    // Add more questions here...
]

//make sure  this is outside of the contentview struct
struct Question {
    let text: String
    let choices: [String]
    let correctAnswer: String
}

struct Trivia_Previews: PreviewProvider {
    static var previews: some View {
        Trivia()
    }
}
