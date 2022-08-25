//
//  DescribeVC.swift
//  খানদানী খাবার
//
//  Created by Anon's MacBook Pro on 24/8/22.
//

import UIKit

class DescribeVC: UIViewController {
    
    @IBOutlet weak var ingredient: UIView!
    @IBOutlet weak var procedure: UIView!
    
    var foodsImg = UIImage()
    var foodsName = ""
    
    @IBOutlet weak var upokoronLbl: UILabel!
    @IBOutlet weak var pronalyLbl: UILabel!
    
    @IBOutlet weak var textLbl1: UILabel!
    @IBOutlet weak var textLbl2: UILabel!
    
    @IBOutlet weak var foodsNameLbl: UILabel!
    @IBOutlet weak var foodsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsImage.image = foodsImg
        foodsNameLbl.text = foodsName
        
        foodsImage.layer.cornerRadius = 12.0
        //foodsImage.layer.masksToBounds = false
        
        ingredient.layer.cornerRadius = 12.0
        ingredient.layer.masksToBounds = true
        
        procedure.layer.cornerRadius = 12.0
        procedure.layer.masksToBounds = true
        
        if foodsNameLbl.text == "চিকেন বিরিয়ানি"{
            textLbl1.text = """
                    -মুরগি ১টা।\n-আদাবাটা ২ চা চামচ। \n-রসুনবাটা ১ চা চামচ। \n-ধনেবাটা ১ চা চামচ। \n-জিরাবাটা ১ চা চামচ।\n-মরিচবাটা আধা চা চামচ। \n-কাঁচামরিচবাটা ১ চা চামচ। \n-বাদামকুচি ২ চা চামচ। \n-পেঁয়াজ বাটা আধা কাপ। \n-দুধ আধা কাপ। \n-৬টি। \n-মাওয়া ২ টেবিল চামচ। \n-কাঁচামরিচ ৮/১০টি।\n-কিশমিশ ১ টেবিল চামচ, \n-টকদই আধা কাপ, \n-পিঁয়াজ বেরেস্তা ১ কাপ, \n-লবণ পরিমাণমত,  \n-গরম মসলা ১ চা চামচ, \n-তেল আধা কাপ, \n-ঘি আধা কাপ, \n-তেজপাতা ২/৩টা, \n-গোলাপজল  ৪ টেবিল চামচ, \n-পেস্তা বাদামকুচি ২ টেবিল চামচ, \n-চিনি ১ টেবিল চামচ, \n-ভিনেগার ৪ টেবিল চামচ, \n-জাফরান আধা চা চামচ, \n-পোলাও চাল ১ কেজি, \n-পানি ৮ কাপ, \n-তেল আধা কাপ, \n-এলাচ ৩/৪টি,
                    """
            textLbl2.text = """
                    -প্রথমে মুরগি টুকরা করে কেটে ধুয়ে পরিষ্কার করে আদা-রসুন ও সামান্য জাফরান ও লবণ দিয়ে মেখে কাটা চামচ দিয়ে কেঁচে ২ ঘণ্টা ফ্রিজে রেখে দিন।
                    \n\nএবার একটি হাঁড়িতে তেল, ঘি দিয়ে মাংসগুলা ভেজে তুলে নিন। ওই তেলে চিনি, বেরেস্তা ও বাদামকুচি ছাড়া সব মসলা একসঙ্গে দিয়ে কষিয়ে নিন।
                    \n\nভালা করে কষানা হলে টকদই দিয়ে ১-২ মিনিট কষিয়ে তারপর মাংসগুলা কষিয়ে নিন। পিয়াজ বেরেস্তা ও ১ টেবিল চামচ চিনি দিয়ে মেখে
                    \n\nমুরগিতে দিন।এবার ১ কাপ পানি দিয়ে অল্প আঁচে ২০ মিনিট রেখে দিন। হয়ে গেলে ওপরে বাদামকুচি ও গোলাপজল দিয়ে নামিয়ে নিন।
                    \n\nপোলাও এর  সব। উপকরণ দিয়ে বেঁধে নিন। হয়ে এলে মাংস মিশিয়ে দিন। গোলাপজলে জাফরান মিশিয়ে পোলাও এর  দিয়ে আধা ঘণ্টা দমে রাখুন।
                    \n\nনামিয়ে গরম গরম পরিবেশন করুন।
                    """
            
            //                    textLbl1.layer.borderWidth = 2
            //                    textLbl1.layer.borderColor = UIColor.gray.cgColor
            //                    textLbl1.layer.shadowColor = UIColor.red.cgColor
            //                    textLbl1.layer.shadowOffset = .zero
            //                    textLbl1.layer.shadowRadius = 8
            //                    textLbl1.layer.shadowOpacity = 1
            //                    textLbl1.layer.cornerRadius = 12.0
            //                    textLbl1.layer.masksToBounds = false
            
            //                    textLbl2.layer.borderWidth = 2
            //                    textLbl2.layer.borderColor = UIColor.gray.cgColor
            //                    textLbl2.layer.shadowColor = UIColor.red.cgColor
            //                    textLbl2.layer.shadowOffset = .zero
            //                    textLbl2.layer.shadowRadius = 8
            //                    textLbl2.layer.shadowOpacity = 1
            //                    textLbl2.layer.cornerRadius = 12.0
            //                    textLbl2.layer.masksToBounds = false
            
        }
        
    }
    
}
