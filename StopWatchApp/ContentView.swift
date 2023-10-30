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
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
