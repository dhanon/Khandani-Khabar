//
//  CustomTVC.swift
//  খানদানী খাবার
//
//  Created by Anon's MacBook Pro on 16/8/22.
//

import UIKit

class CustomTVC: UITableViewCell {
    
    @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var itemImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        itemView.frame = itemView.frame.inset(by: UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5))
    }
}
