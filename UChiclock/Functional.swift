//
//  Functional.swift
//  UChiclock
//
//  Created by Alec Snyder on 7/23/15.
//  Copyright © 2015 Alec Snyder. All rights reserved.
//

import Foundation

func map<A,B>(f : (A -> B), _ arr : [A]) -> [B]
{
    var ret = [B]()
    for var i = 0 ; i < arr.count; i++
    {
        ret.append(f(arr[i]))
    }
    return ret;
}

func filter<T>(f : (T -> Bool), _ arr : [T]) -> [T]
{
    var ret = [T]()
    for val in arr
    {
        if (f(val))
        {
            ret.append(val)
        }
    }
    return ret
}
