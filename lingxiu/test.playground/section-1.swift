// Playground - noun: a place where people can play

import UIKit

var urlPath = "http://219.153.125.103:12121/gethmgq.aspx?datekey=0101"
urlPath = urlPath.stringByReplacingOccurrencesOfString("0101", withString: "2222", options: NSStringCompareOptions.allZeros, range: nil)