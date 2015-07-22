//
//  Connection.swift
//  UChiclock
//
//  Created by Rachael Gordon on 7/21/15.
//  Copyright © 2015 Alec Snyder. All rights reserved.
//

import Foundation

func makeConnection()
{
    let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
    let conn = NSURLSession(configuration : sessionConfig)
    let targetURL = NSURL(string:"http://www.google.com")!
    let task = conn.dataTaskWithURL(targetURL, completionHandler: dataHandler)
    
    task!.resume()
    
}

func dataHandler( tup : (NSData?,NSURLResponse?, NSError?))
{
    if(tup.2 != nil)
    {
        print("error")
        return
    }
    let (dat, _, _) = tup
    let response = NSString.init(data:dat!, encoding:NSUTF8StringEncoding)
    print("response is: \(response)")
    
}