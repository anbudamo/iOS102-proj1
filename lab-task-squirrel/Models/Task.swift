//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite restaurant",
                 description: "What is your favorite spot to grab a bite with a friend?"),
            Task(title: "Your favorite study spot",
                 description: "What is your preferred study spot on your campus"),
            Task(title: "Your current skateboarding location",
                 description: "Where have you been skating the most recently"),
            Task(title: "Your closest McDonalds",
                 description: "Where is your closest beloved local McDonalds outlet")
        ]
    }
}
