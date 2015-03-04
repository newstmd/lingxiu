//
//  ViewController.swift
//  lingxiu
//
//  Created by 唐鑫 on 15/3/3.
//  Copyright (c) 2015年 唐鑫. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var (title,jieshuo) = readPlistMessage("0101")
        print("here")
        print("title:\(title)jieshuo:\(jieshuo)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //通过日期格式"0101"获得当天的内容
    func readPlistMessage(dateString:String)->(String,String){
        var urlPath = "http://219.153.125.103:12121/gethmgq.aspx?datekey=0101"
        var url = NSURL(string: urlPath)
        var data = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached, error: nil)
        var json:AnyObject = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments, error: nil)!
        
        var title = json.valueForKey("title") as String
        var jieshuo = json.valueForKey("jieshuo") as String
        //print("title:\(title)jieshuo:\(jieshuo)")
        
        
//        var session = NSURLSession.sharedSession()
//        var data:NSData?
//        var task = session.dataTaskWithURL(url!, completionHandler: { (data, response , error) -> Void in
//            
//            if((error) != nil){
//                print(error.localizedDescription)
//            }
//            
//        })
//        var err: NSError?
//        var jsonResult = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
//        
//        println("my Data is \(jsonResult)")
        return (title,jieshuo)
}


}

