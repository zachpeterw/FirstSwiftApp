//
//  ViewController.swift
//  FirstSwiftApp
//
//  Created by Whitehead, Zachary on 9/26/16.
//  Copyright © 2016 Whitehead, Zachary. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var firstButton: UIButton!
    @IBOutlet private weak var firstSwitch: UISwitch!
    
    @IBOutlet private var appBackground: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func firstButtonClick(sender: UIButton)
    {
        textLabel.text = "You clicked the button!"
        textLabel.textColor = makeRandomColor()
        appBackground.backgroundColor = makeRandomColor()
    }
    @IBAction func firstSwitchclick(sender: UISwitch)
    {
        
    }
    private func makeRandomColor() -> UIColor
    {
        let randomColor : UIColor
        //color in swift is a percentage - from 0-1 inclusive.
        //of type CGFloat for all components; RGBA
        let redColor :CGFloat = CGFloat(drand48())
        let greenColor :CGFloat = CGFloat(Double(arc4random_uniform(256))/255.00)
        let blueColor :CGFloat = CGFloat(drand48())
        let alphaChannel :CGFloat = 1.0
        
        randomColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: alphaChannel)
        
        
        return randomColor
    }

}

