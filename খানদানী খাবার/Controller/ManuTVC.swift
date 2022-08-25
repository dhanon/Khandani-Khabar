//
//  ManuTVC.swift
//  খানদানী খাবার
//
//  Created by Anon's MacBook Pro on 19/8/22.
//

import Foundation
import UIKit
import SideMenu

protocol MenuNavControllerDelegate {
    func didSelectMenuItem(named: String)
}

class ManuTVC: UITableViewController {
    
    var menu: SideMenuNavigationController?
    var delegate: MenuNavControllerDelegate?
    let menuItems: [String]
    
    init(with menuItem: [String]) {
        menuItems = menuItem
        super.init(nibName: nil, bundle: nil)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "customCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        menu = SideMenuNavigationController(rootViewController: MenuListController())
        //        menu?.leftSide = true
        //        menu?.setNavigationBarHidden(true, animated: false)
        //
        //        SideMenuManager.default.leftMenuNavigationController = menu
        //        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MenuListController: UITableViewController {
    
    var sideMenuItems = ["Home", "About Us", "Favorite", "Share"]
    let darkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = darkColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "customCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideMenuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        cell.textLabel?.text = sideMenuItems[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkColor
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
