//
//  ViewController.swift
//  খানদানী খাবার
//
//  Created by Anon's MacBook Pro on 16/8/22.
//

import UIKit
import SideMenu

class ViewController: UIViewController, MenuNavControllerDelegate {
    
    let itemsMenu = ["চিকেন বিরিয়ানি", "কাচ্চি বিরিয়ানি", "গরুর মাংস ভুনা", "খাসির মাংস ভুনা", "সরিষা ইলিশ", "সন্দেশ", "কাঁচা গোল্লা", "লাচ্চি"]
    
    var menu: SideMenuNavigationController?
    
    let favoriteVC = Favorite()
    let aboutUsVC = AboutUs()
    let shareVC = Share()
    
    @IBOutlet weak var itemsView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sideMenuItems = ManuTVC(with:["Home", "Favorite", "Share", "About Us"])
        
        itemsView.delegate = self
        itemsView.dataSource = self
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        
        menu?.setNavigationBarHidden(true, animated: false)
        sideMenuItems.delegate = self
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        menu?.leftSide = true
        
        addChildrenVC()
    }
    
    func addChildrenVC()  {
        
        addChild(favoriteVC)
        addChild(aboutUsVC)
        addChild(shareVC)
        
        view.addSubview(favoriteVC.view)
        view.addSubview(aboutUsVC.view)
        view.addSubview(shareVC.view)
        
        favoriteVC.view.frame = view.bounds
        aboutUsVC.view.frame = view.bounds
        shareVC.view.frame = view.bounds
        
        favoriteVC.didMove(toParent: self)
        aboutUsVC.didMove(toParent: self)
        shareVC.didMove(toParent: self)
        
        favoriteVC.view.isHidden = true
        aboutUsVC.view.isHidden = true
        shareVC.view.isHidden = true
    }
    
    @IBAction func sideMenu(_ sender: UIBarButtonItem) {
        present(menu!, animated: true, completion: nil)
    }
    
    func didSelectMenuItem(named: String) {
        menu?.dismiss(animated: true, completion: nil)
        
        if named == "Home"{
            self.title = "খানদানী খাবার রেসিপি"
            favoriteVC.view.isHidden = true
            aboutUsVC.view.isHidden = true
            shareVC.view.isHidden = true
        }else if named == "Favorite"{
            self.title = named
            favoriteVC.view.isHidden = false
            aboutUsVC.view.isHidden = true
            shareVC.view.isHidden = true
        }else if named == "Share"{
            self.title = named
            favoriteVC.view.isHidden = true
            aboutUsVC.view.isHidden = true
            shareVC.view.isHidden = false
        }else if named == "About Us"{
            self.title = named
            favoriteVC.view.isHidden = true
            aboutUsVC.view.isHidden = false
            shareVC.view.isHidden = true
        }
    }
    
}

// MARK: - Table View Custom Cell

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = itemsView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTVC
        let item = itemsMenu[indexPath.row]
        
        cell.itemView.layer.cornerRadius = cell.itemView.frame.size.height / 2.5
        cell.itemImg.layer.cornerRadius = cell.itemImg.frame.height / 2
        
        cell.itemImg.image = UIImage(named: item)
        cell.itemLbl.text = item
        cell.selectionStyle = .none
        return cell
    }
    
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let goToDescribeVC = storyboard?.instantiateViewController(withIdentifier: "DescribeVC") as? DescribeVC
        self.navigationController?.pushViewController(goToDescribeVC!, animated: true)
        
        goToDescribeVC?.foodsName = itemsMenu[indexPath.row]
        goToDescribeVC?.foodsImg = UIImage(named: itemsMenu[indexPath.row])!
    }
}

