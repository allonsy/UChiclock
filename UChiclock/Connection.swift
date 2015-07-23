//
//  Connection.swift
//  UChiclock
//
//  Created by Rachael Gordon on 7/21/15.
//  Copyright © 2015 Alec Snyder. All rights reserved.
//

import Foundation

var sess : NSURLSession?;

func makeConnection()
{
    let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
    let targetURL = NSURL(string:"https://uchicago.cybershift.net")!
    let req = NSURLRequest(URL: targetURL);
    //let URLConn = NSURLConnection(request: conn, delegate: nil);
    sess = NSURLSession(configuration:sessionConfig)
    let task = sess!.dataTaskWithRequest(req, completionHandler: dataHandler)
    
    
    task.resume()
}

func dataHandler( tup : (NSData?,NSURLResponse?, NSError?))
{
    if(tup.2 != nil)
    {
        print("error: \(tup.2)")
        return
    }
    let (dat, resp, _) = tup
    let httpResp : NSHTTPURLResponse = resp! as! NSHTTPURLResponse
    print("Reponse header: \(httpResp.allHeaderFields)")
    print("cookies are: \(filter(isFromCyberShift,sess!.configuration.HTTPCookieStorage!.cookies!))")
    let response = NSString.init(data:dat!, encoding:NSUTF8StringEncoding)
    print("response is: \(response!)")
}

func isFromCyberShift(cookie : NSHTTPCookie) -> Bool
{
    if cookie.domain == "uchicago.cybershift.net"
    {
        return true
    }
    return false
}

