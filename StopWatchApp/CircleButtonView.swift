//
//  CircleButtonView.swift
//  StopWatchApp
//
//  Created by Shuyu Zhou on 2023-10-30.
//

import SwiftUI

struct CircleButtonView: View {
    
    //MARK: Stored properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    //MARK: Computed properties
    
    //returns the button's user interface
    var body: some View {
        ZStack {
            //first layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            //second layer
            Circle()
                .foregroundStyle(.black)
                .frame(width: 93)
            //third layer
            Circle()
                .foregroundStyle(buttonColor)
                .frame(width: 89)
            Text(label)
                .foregroundStyle(labelColor)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView(buttonColor: .red, label: "Reset", labelColor: .white)
}
