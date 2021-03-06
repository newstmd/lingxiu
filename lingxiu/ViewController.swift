//
//  ViewController.swift
//  lingxiu
//
//  Created by 唐鑫 on 15/3/3.
//  Copyright (c) 2015年 唐鑫. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController,ADBannerViewDelegate {
    
    @IBOutlet weak var myAdBanner: ADBannerView!

    @IBOutlet weak var myTitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var dateNowString = getDateString(NSDate())
        //print(dateNowString)
        (totleTitle,totlejieshuo) = readURLMessage(dateNowString)
        //print("here")
        myTitleLabel.text = totleTitle
        //adBanner
        myAdBanner.delegate = self
        myAdBanner.alpha = 0.0
        
        
        
        //adBanner end
        //print("title:\(title)jieshuo:\(jieshuo)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //通过日期格式"0101"获得当天的内容
    func readURLMessage(dateString:String)->(String,String){
        var title:String?="当前网络异常"
        var jieshuo:String? = "当前网络异常"
        
        var urlPath = "http://219.153.125.103:12121/gethmgq.aspx?datekey=xxxx"
        urlPath = urlPath.stringByReplacingOccurrencesOfString("xxxx", withString: dateString, options: NSStringCompareOptions.allZeros, range: nil)
        var url:NSURL? = NSURL(string: urlPath)
        var data = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached, error: nil)?
        if let json:AnyObject = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments, error: nil){
        
            title = json.valueForKey("title") as? String
            jieshuo = json.valueForKey("jieshuo") as? String}
        
        return (title!,jieshuo!)
    }
//获取MMdd格式的日期字符串
    func getDateString(date:NSDate)->String{
        var dateFormat = NSDateFormatter()
        dateFormat.dateFormat = "MMdd"
        var dateString = dateFormat.stringFromDate(date)
        
        return dateString
    }

    func bannerViewDidLoadAd(banner: ADBannerView!){
        banner.alpha = 1
        
    }
}

