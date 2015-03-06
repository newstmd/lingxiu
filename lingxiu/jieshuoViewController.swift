//
//  jieshuoViewController.swift
//  lingxiu
//
//  Created by 唐鑫 on 15/3/5.
//  Copyright (c) 2015年 唐鑫. All rights reserved.
//

import UIKit

class jieshuoViewController: UIViewController {
    
    @IBOutlet weak var myJieShuoTextView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myJieShuoTextView.text = totlejieshuo
        //myWebView.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
