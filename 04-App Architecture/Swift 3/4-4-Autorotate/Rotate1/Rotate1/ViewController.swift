//
//  ViewController.swift
//  Rotate1
//
//  Created by Nicholas Outram on 25/07/2016.
//  Copyright © 2016 Nicholas Outram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var rotateSwitch: UISwitch!
   @IBOutlet weak var leftSwitch: UISwitch!
   @IBOutlet weak var rightSwitch: UISwitch!

   var doesRotate = true
   var leftAllowed = true
   var rightAllowed = true
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   @IBAction func doRotateSwitch(sender: AnyObject) {
      doesRotate = rotateSwitch.on
      UIViewController.attemptRotationToDeviceOrientation()
   }

   @IBAction func doLeftSwitch(sender: AnyObject) {
      leftAllowed = leftSwitch.on
      UIViewController.attemptRotationToDeviceOrientation()
   }
   
   @IBAction func doRightSwitch(sender: AnyObject) {
      rightAllowed = rightSwitch.on
      UIViewController.attemptRotationToDeviceOrientation()
   }
   
   override func shouldAutorotate() -> Bool {
      return doesRotate
   }
   
   override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {

      var maskSet : UIInterfaceOrientationMask = .Portrait
      
      if leftAllowed {
         maskSet = [maskSet, .LandscapeLeft]
      }
      if rightAllowed {
         maskSet = [maskSet, .LandscapeRight]
      }
      return maskSet
   }
   
   
}

