//
//  ViewController.swift
//  HelloWorldEmoji
//
//  Created by Shaung Cheng on 2/1/18.
//  Copyright © 2018 ShaungCheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(sender: UIButton){
        if let emoji = sender.titleLabel?.text {
            var emojiDict = [
                "🤣":"rolling on the floor laughing face",
                "🤪":"goofy face",
                "🤨": "face with raised eyebow",
                "🤓": "nerdy face",
            ]
            
            if let explanation = emojiDict[emoji] {
                // message box
                let alertController = UIAlertController(title: "Welcome!", message: explanation, preferredStyle: UIAlertControllerStyle.alert)
                
                // add action button
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show message box
                present(alertController, animated: true, completion: nil)
            }
        }
    }
}

