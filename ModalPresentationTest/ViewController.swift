//
//  ViewController.swift
//  ModalPresentationTest
//
//  Created by Kolja Kube on 28/10/14.
//  Copyright (c) 2014 Kolja Kube. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var rearViewController: UIViewController? = nil {
    didSet {
      oldValue?.removeFromParentViewController()
      if let theController = rearViewController {
        addChildViewController(theController)
        view.addSubview(theController.view)
      }
    }
  }
  
  var frontViewController: UIViewController? = nil {
    didSet {
      oldValue?.removeFromParentViewController()
      if let theController = frontViewController {
        addChildViewController(theController)
        view.addSubview(theController.view)
      }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setStoryboardSegueViewControllers()
    view.setTranslatesAutoresizingMaskIntoConstraints(false)
  }
  
  @IBAction func unwind(segue: UIStoryboardSegue) {
    NSLog("unwind")
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "rear" {
      rearViewController = segue.destinationViewController as? UIViewController
    }
    else if segue.identifier == "front" {
      frontViewController = segue.destinationViewController as? UIViewController
    }
    
    super.prepareForSegue(segue, sender: sender)
  }

  private func setStoryboardSegueViewControllers() {
    performSegueWithIdentifier("rear", sender: self)
    performSegueWithIdentifier("front", sender: self)
  }
  
}
