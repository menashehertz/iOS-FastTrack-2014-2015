//
//  PresentedViewController.swift
//  Rotate1
//
//  Created by Nicholas Outram on 25/07/2016.
//  Copyright © 2016 Nicholas Outram. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dismissButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      if let _ = self.navigationController {
         self.titleLabel.text = "Pushed"
         self.dismissButton.hidden = true
         
      } else {
         self.titleLabel.text = "Presented"
      }
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func doDismiss(sender: AnyObject) {
      self.dismissViewControllerAnimated(true, completion: { })
   }
      
   
   // ***************************************************************************************
   // * The following are only called when used as a root view controller or when presented *
   // ***************************************************************************************
   override func shouldAutorotate() -> Bool {
      return false
   }
   
   override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
      return .AllButUpsideDown
   }
   
   //When a root view controller or when presented
   override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
      //For presentation, only use landscapeRight
      return .LandscapeRight
   }
   

}
