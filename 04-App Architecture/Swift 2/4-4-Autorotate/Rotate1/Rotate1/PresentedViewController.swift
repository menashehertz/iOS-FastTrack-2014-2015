//
//  PresentedViewController.swift
//  Rotate1
//
//  Created by Nicholas Outram on 25/07/2016.
//  Copyright © 2016 Nicholas Outram. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func doDismiss(sender: AnyObject) {
      //This is forwarded automatically to the presenting controller
      //This is fine as we've no data to pass back
      self.dismissViewControllerAnimated(true, completion: {})
   }

   override func shouldAutorotate() -> Bool {
      return true
   }
   
   //Return all supported interface orientations
   override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
      return UIInterfaceOrientationMask.AllButUpsideDown
   }

   //This is used for modal presentation - a subset of the supported orientations
   override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
      return .Portrait
   }
   
   

}
