//
//  StopWatch.swift
//  StopWatchSample1
//
//  Created by MsMacM on 2024/01/22.
//

import Foundation

class Stopwatch: ObservableObject {
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.counter += 1
        }
    }
    
    func stop() {
        timer.invalidate()
    }
    
    func reset() {
        timer.invalidate()
        counter = 0
    }
}
