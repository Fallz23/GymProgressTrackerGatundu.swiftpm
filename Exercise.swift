//
//  File.swift
//  GymProgressTrackerGatundu
//
//  Created by JOSHUA GATUNDU on 11/6/25.
//

import Foundation

class Exercise{
    var image: String
    var name: String
    var sets: Int
    var reps: Int
    var restTime: Double
    var max: Int
    
    init(image: String = "", name: String = "", sets: Int = 0, reps: Int = 0, restTime: Double = 0.0, max: Int = 0){
        self.image = image
        self.name = name
        self.sets = sets
        self.reps = reps
        self.restTime = restTime
        self.max = max
    }
}
