//
//  MenuViewController.swift
//  MenuTest
//
//  Created by Siddu Hallikeri on 24/05/21.
//

import UIKit
import FBMenu

class MenuViewController: UIViewController, FBMenuDelegate  {
  var menuDelegate: FBMenuControllerDelegate?
    
  let firstViewController = FirstViewController()
  let secondViewCOntroller = SecondViewController()
  
  let menuControllers =  [FirstViewController(),SecondViewController()]
  var tableView: UITableView = UITableView()
  var dateSource = ["First View Controller", "Second View Controller"]
  
  override func loadView() {
    super.loadView()
    view.backgroundColor = .white
  }
  override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor = .white
      //addtitle()
      addMenuTableView()
  }
  
  func addtitle() {
    
    let label = UILabel()
    label.text = "Menu"
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
    label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true

  }
  
  func addMenuTableView() {
    
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    
    tableView.register(MenuCell.nib, forCellReuseIdentifier: MenuCell.identifier)
    tableView.delegate = self
    tableView.dataSource = self
  }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuControllers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    let cell = tableView.dequeueReusableCell(withIdentifier: MenuCell.identifier, for: indexPath) as! MenuCell
    cell.txtLabel.text = dateSource[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    menuDelegate?.showScreen(vc: menuControllers[indexPath.row])
  }
}
