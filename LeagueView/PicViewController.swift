//
//  PicViewController.swift
//  LeagueView
//
//  Created by Tsering Lama on 11/17/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import UIKit

class PicViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var data: Champion!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    imageView.image = UIImage(named: "\(data.fullImageName)")
    textView.text = data.description
        
    }
    

}
