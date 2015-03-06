//
//  jieshuoViewController.swift
//  lingxiu
//
//  Created by 唐鑫 on 15/3/5.
//  Copyright (c) 2015年 唐鑫. All rights reserved.
//

import UIKit
import iAd
class jieshuoViewController: UIViewController,ADBannerViewDelegate {
    @IBOutlet weak var myAdBannerView: ADBannerView!
    
    @IBOutlet weak var myJieShuoTextView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myJieShuoTextView.text = totlejieshuo
        //myWebView.
        myAdBannerView.delegate = self
        myAdBannerView.alpha = 0.0
        
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
    func bannerViewDidLoadAd(banner: ADBannerView!){
        banner.alpha = 1
        
    }

}
