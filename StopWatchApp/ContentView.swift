//
//  ContentView.swift
//  StopWatchApp
//
//  Created by Shuyu Zhou on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // background
            Color.black
                .ignoresSafeArea()
            
            //second layer
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundStyle(.white)
                
                ZStack {
                    //first layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 100)
                    //second layer
                    Circle()
                        .foregroundStyle(.black)
                        .frame(width: 93)
                    //third layer
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 89)
                    Text("Reset")
                        .foregroundStyle(.white)
                        .font(.title2)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
