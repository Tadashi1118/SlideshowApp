//
//  ExpansionView.swift
//  SlideshowApp
//
//  Created by 吉田直志 on 2018/10/09.
//  Copyright © 2018年 Tadashi1118. All rights reserved.
//

import UIKit

class ExpansionView: UIViewController {
    @IBOutlet weak var expansionImageView: UIImageView!
    
        var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        expansionImageView.image = image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
