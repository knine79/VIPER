//
//  GreetingPresenter.swift
//  VIPER
//
//  Created by Samuel Kim on 2018. 1. 19..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

import Foundation

protocol GreetingEventHandler {
    func didTapButton()
}

class GreetingPresenter: GreetingReceiver, GreetingEventHandler { // Presenter
    weak var view: GreetingView!
    var provider: GreetingProvider!
    
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "\(greetingData.greeting) \(greetingData.fullName)"
        view.setGreeting(greeting: greeting)
    }
    
    func didTapButton() {
        provider.provideGreetingData()
    }
    
    
}
