//
//  ContentView.swift
//  iOSdev
//
//  Created by Anupreet Paulkar on 5/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(){
            Image("background")
                .ignoresSafeArea()
            
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack(spacing: 80.0){
                    Image("card2")
                    Image("card3")
                }
                Spacer()
                Button(action: {
                    print("ssuppp")
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                VStack(spacing: 20.0){
                HStack(spacing: 100.0){
                    
                    VStack(spacing: 20.0){
                    Text("Player")
                        .foregroundColor(.white)
                    Text("0")
                            .foregroundColor(.white)
                    }
                
                    VStack(spacing: 20.0) {
                    Text("CPU")
                        .foregroundColor(.white)
                    Text("0")
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
