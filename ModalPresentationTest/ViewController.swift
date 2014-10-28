//
//  ViewController.swift
//  ModalPresentationTest
//
//  Created by Kolja Kube on 28/10/14.
//  Copyright (c) 2014 Kolja Kube. All rights reserved.
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
  
  @IBAction func unwind(segue: UIStoryboardSegue) {
    NSLog("unwind")
  }

  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    NSLog("prepare")
  }

}

