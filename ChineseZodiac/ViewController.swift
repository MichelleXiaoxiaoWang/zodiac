//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Michelle Wang on 2018-02-23.
//  Copyright © 2018 Michelle Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UIimageView: UIImageView!
    @IBOutlet weak var birthYear: UITextField!
    
    let offset = 3;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
         birthYear.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func EnterTapped(sender: AnyObject) {
        birthYear.resignFirstResponder()
        if let year = Int(birthYear.text!){
            let imageNumber = (year - offset) % 12
            UIimageView.image = UIImage(named: String(imageNumber))
        }else{
            
        }
    }

}

