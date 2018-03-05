//
//  ViewController.swift
//  HackwichSix
//
//  Created by Tayler Anne Fitzsimmons on 3/5/18.
//  Copyright © 2018 Tayler Anne Fitzsimmons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
    //5. New variable message that displays a message that includes current Value
        let message = "The value is: \(currentValue)"
    //1. Createing the alert view
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
    //2. Button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
    //3. add the button to the alertview
        alert.addAction(action)
        
    //4. present alertview on the screen
        present(alert, animated: true, completion: nil)
    
    
    }
    
}

