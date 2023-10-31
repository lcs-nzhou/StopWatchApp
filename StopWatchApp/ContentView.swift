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
                Spacer()
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundStyle(.white)
                //create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("Dark Grey"), label: "Reset", labelColor: .white)
                    Spacer()
                    CircleButtonView(buttonColor: Color("Dark Green"), label: "Start", labelColor: .green)
                }
                List{
                    Group{
                        HStack {
                            Text("Lap 5")
                            Spacer()
                            Text("00:00.98")
                        }
                        .listRowSeparatorTint(.gray)
                        HStack {
                            Text("Lap 4")
                            Spacer()
                            Text("00:04.08")
                        }
                        .foregroundStyle(.red)
                        .listRowSeparatorTint(.gray)
                        HStack {
                            Text("Lap 3")
                            Spacer()
                            Text("00:00.96")
                        }
                        .foregroundStyle(.green)
                        .listRowSeparatorTint(.gray)
                        HStack {
                            Text("Lap 2")
                            Spacer()
                            Text("00:02.76")
                        }
                        .listRowSeparatorTint(.gray)
                        HStack {
                            Text("Lap 1")
                            Spacer()
                            Text("00:01.16")
                        }
                        
                    }
                    .font(Font.system(size: 20))
                    //remove inset from list items
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                //set the amount of vertical height we want this list to take up
                .frame(height:300)
                //Adjust list style to match design
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

#Preview {
    TabView(selection: Binding.constant(3)) {
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
    }
    // Change the accent olor for the currently active tab item
    .accentColor(.orange)
    //Ensure tab items that are not active remain visible
    .preferredColorScheme(.dark)
}
