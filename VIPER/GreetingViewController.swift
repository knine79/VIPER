//
//  ViewController.swift
//  VIPER
//
//  Created by Samuel Kim on 2018. 1. 19..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

import UIKit

protocol GreetingView: class {
    func setGreeting(greeting: String)
}
class GreetingViewController: UIViewController, GreetingView {    // View

    var eventHandler: GreetingEventHandler!
    
    @IBOutlet weak var label: UILabel!
    @IBAction func didTapButton(_ sender: Any) {
        eventHandler.didTapButton()
    }

    func setGreeting(greeting: String) {
        self.label.text = greeting
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

