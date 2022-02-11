//
//  ContentView.swift
//  war-challenge
//
//  Created by Adam Matlacz on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card2"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack(){
            Image("background")
                .ignoresSafeArea()

            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                }) {
                    Image("dealbutton")
                }
                Spacer()
                HStack(){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
