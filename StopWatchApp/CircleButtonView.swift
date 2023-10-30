//
//  CircleButtonView.swift
//  StopWatchApp
//
//  Created by Shuyu Zhou on 2023-10-30.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
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
}

#Preview {
    CircleButtonView()
}
