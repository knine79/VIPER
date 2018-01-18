//
//  GreetingData.swift
//  VIPER
//
//  Created by Samuel Kim on 2018. 1. 19..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

struct GreetingData { // Transport Data Structure
    let greeting: String
    let fullName: String
}

protocol GreetingProvider {
    func provideGreetingData()
}

protocol GreetingReceiver: class {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingProvider { // Interactor
    weak var receiver: GreetingReceiver!
    
    func provideGreetingData() {
        let person = Person(firstName: "Samuel", lastName: "Kim") // usually from data access layer
        let greetingData = GreetingData(greeting: "Hello", fullName: "\(person.firstName) \(person.lastName)")
        self.receiver.receiveGreetingData(greetingData: greetingData)
    }
}
