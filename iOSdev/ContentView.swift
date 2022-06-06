//
//  ContentView.swift
//  iOSdev
//
//  Created by Anupreet Paulkar on 5/27/22.
//

import SwiftUI

struct ContentView: View {
    
  @State var playerCard = "card5"
  @State var comCard = "card9"
  @State var playerScore = 0
  @State var comScore = 0
    var body: some View {
        
        ZStack(){
            Image("background")
                .ignoresSafeArea()
            
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack(spacing: 80.0){
                    Image(playerCard)
                    Image(comCard)
                }
                Spacer()
                Button(action: {
                    
                    // For generating random number
                    
                    let randomPlayer = Int.random(in: 2...14)
                    let randomCom = Int.random(in: 2...14)
                    
                    // updating cards
                    playerCard = "card" + String(randomPlayer)
                    comCard = "card" + String(randomCom)
                    // updating score
                    
                    if (randomPlayer > randomCom) {
                        playerScore += 1
                    } else if (randomPlayer < randomCom){
                        comScore += 1
                    } 
                                        
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                VStack(spacing: 20.0){
                HStack(spacing: 100.0){
                    
                    VStack(spacing: 20.0){
                    Text("Player")
                        .foregroundColor(.white)
                    Text(String(playerScore))
                            .foregroundColor(.white)
                    }
                
                    VStack(spacing: 20.0) {
                    Text("CPU")
                        .foregroundColor(.white)
                        Text(String(comScore))
                        .foregroundColor(.white)
                   
                        }
                    }
                }
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
