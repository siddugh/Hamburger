//
//  ViewController.swift
//  MenuTest
//
//  Created by Siddu Hallikeri on 08/05/21.
//

import UIKit
import FBMenu

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let fb = FBXMenu()
    let fc = FirstViewController()
    
    fb.addControllers(startingController: self, menuController: MenuViewController(), initialController: fc)
    
  }
}

