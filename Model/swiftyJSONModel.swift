//
//  swiftyJSONModel.swift
//  DribbleInSwift
//
//  Created by Sumit Ghosh on 22/08/17.
//  Copyright © 2017 Sumit Ghosh. All rights reserved.
//

import UIKit
import SwiftyJSON


class swiftyJSONModel: NSObject {
    var name:String?
    var location:String?
    var teaser:String?
    var hidpi:String?
    var normal:String?
    var avatar_url:String?
    var id:String?
    var place:String?
    
    
 public func getArrayOfModel(dataArray:NSArray) -> NSArray {
        let json = JSON(dataArray)
        let finalArray:NSMutableArray = NSMutableArray.init()
        
        for i in 0..<dataArray.count{
            //parse data
            let modelData:swiftyJSONModel = swiftyJSONModel.init()
            modelData.name = json[i]["user"]["name"].string
            modelData.location = json[i]["user"]["location"].string
            modelData.avatar_url = json[i]["user"]["avatar_url"].string
            modelData.teaser = json[i]["images"]["teaser"].string
            modelData.hidpi = json[i]["images"]["hidpi"].string
            modelData.normal = json[i]["images"]["normal"].string
            modelData.id = json[i]["id"].string
            modelData.place = json[i]["place"].string // worng key for validation
            
            finalArray .add(modelData)
        }
        return finalArray
    
    }
}
