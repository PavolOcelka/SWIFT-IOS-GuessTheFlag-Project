//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Pavol Ocelka on 13/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var scoreTitle = ""
    
    @State private var history: [String] = ["", "", ""]
    
    @State private var score = 0
        
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.mint, .black],startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Spacer()
                    Text(String(score))
                        .font(.system(size: 70).bold())
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .shadow(radius: 20)
                }
                Spacer()
            }
            
            VStack {
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack (spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .foregroundStyle(.black)
                            .font(.largeTitle.bold())
                    }
                    ForEach(0..<3) {number in
                        Button {
                            flagTapped(number)
                            askQuestion()
                            addToHistory(scoreTitle)
                        } label: {
                            Image(countries[number])
                        }
                        .clipShape(.capsule)
                        .shadow(radius: 10)
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                .padding()
            }
            
            VStack{
                Spacer()
                VStack{
                    Text(history[2])
                        .font(.title2)
                        .foregroundStyle(history[2] == "Correct" ? .green: history[2] == "Wrong" ? .red: .primary)
                    Text(history[1])
                        .font(.subheadline)
                        .foregroundStyle(history[1] == "Correct" ? .green: history[1] == "Wrong" ? .red: .primary)
                        .opacity(0.8)
                    Text(history[0])
                        .font(.caption)
                        .foregroundStyle(history[0] == "Correct" ? .green: history[0] == "Wrong" ? .red: .primary)
                        .opacity(0.5)
                }
                .foregroundStyle(.white)
            }
            Spacer()
            
            
        }
        
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        }else{
            scoreTitle = "Wrong"
            score = 0
        }
        
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func addToHistory(_ answer: String) {
        history.append(answer)
        if history.count > 3 {
            history.removeFirst()
        }
    }
}

#Preview {
    ContentView()
}
