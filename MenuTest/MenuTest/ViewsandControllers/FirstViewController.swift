//
//  FirstViewController.swift
//  MenuTest
//
//  Created by Siddu Hallikeri on 24/05/21.
//

import UIKit
import FBMenu

class FirstViewController: UIViewController,FBMenuDelegate {

  var menuDelegate: FBMenuControllerDelegate?
  
  override func loadView() {
    super.loadView()
    view.backgroundColor = .gray
    addMenuButton()
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()

      let lbl = UILabel()
      lbl.text = "First View Controller"
      view.addSubview(lbl)
      lbl.textAlignment = .center
      lbl.translatesAutoresizingMaskIntoConstraints = false
      
      lbl.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
      lbl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
      

        // Do any additional setup after loading the view.
    }
  
  func addMenuButton() {
    let menuButton = UIButton()
    menuButton.setTitle(" Menu ", for: .normal)
    menuButton.addTarget(self, action: #selector(menuAction), for: .touchUpInside)
    menuButton.frame = CGRect(x: 20, y: 40, width: 60, height: 44)
    self.view.addSubview(menuButton)
  }
  
  @objc func menuAction() {
    print("menuAction....")
    menuDelegate?.toggleLeftPanel()
  }
}
