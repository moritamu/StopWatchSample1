//
//  ContentView.swift
//  StopWatchSample1
//
//  Created by MsMacM on 2024/01/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stopwatch = Stopwatch()
    //    p.302から
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    stopwatch.start()
                }) {
                    Image(systemName: "play")
                }.padding()
                Button(action: {
                    stopwatch.stop()
                }) {
                    Image(systemName: "pause")
                }.padding()
                Button(action: {
                    stopwatch.reset()
                }) {
                    Image(systemName: "backward.end")
                }.padding()
            }
            .frame(width: 200)
            .padding()
            Text("\(stopwatch.counter)")
                .font(.title)
        }
        
    }
}

#Preview {
    ContentView()
}
