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
    //let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
    let targetURL = NSURL(string:"https://uchicago.cybershift.net")!
    let req = NSURLRequest(URL: targetURL);
    //let URLConn = NSURLConnection(request: conn, delegate: nil);
    let task = NSURLSession.sharedSession().dataTaskWithRequest(req, completionHandler: dataHandler)
    
    task.resume()
    
}

func dataHandler( tup : (NSData?,NSURLResponse?, NSError?))
{
    if(tup.2 != nil)
    {
        print("error: \(tup.2)")
        return
    }
    let (dat, _, _) = tup
    let response = NSString.init(data:dat!, encoding:NSUTF8StringEncoding)
    print("response is: \(response)")
}

