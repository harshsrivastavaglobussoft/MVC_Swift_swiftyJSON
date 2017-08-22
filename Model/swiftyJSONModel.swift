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
    var name:String?=""
    var location:String?=""
    var teaser:String?=""
    var hidpi:String?=""
    var normal:String?=""
    var avatar_url:String?=""
    var id:String?=""
    var place:String?=""
    
    
 public func getArrayOfModel(dataArray:NSArray) -> NSArray {
        let json = JSON(dataArray)
        let finalArray:NSMutableArray = NSMutableArray.init()
        
        for i in 0..<dataArray.count{
            //parse data
            let modelData:swiftyJSONModel = swiftyJSONModel.init()
            
            if let NAME = json[i]["user"]["name"].string {
              modelData.name = json[i]["user"]["name"].string
            }else{
                modelData.name = ""
            }
            
            if let LOCATION = json[i]["user"]["location"].string  {
                modelData.location = json[i]["user"]["location"].string
            }else{
                modelData.location = ""
            }
            
            if let AVATAR_URL = json[i]["user"]["avatar_url"].string {
            modelData.avatar_url = json[i]["user"]["avatar_url"].string
            }else{
                modelData.avatar_url = ""
            }
            
            if let TEASER = json[i]["images"]["teaser"].string {
            modelData.teaser = json[i]["images"]["teaser"].string
            }else{
                modelData.teaser = ""
            }
            
            if let HIDPI = json[i]["images"]["hidpi"].string {
            modelData.hidpi = json[i]["images"]["hidpi"].string
            }else{
                modelData.hidpi = ""
            }
            
            if let NORMAL = json[i]["images"]["normal"].string{
            modelData.normal = json[i]["images"]["normal"].string
            }else{
                modelData.normal = ""
            }
            
            if let ID = json[i]["id"].string {
            modelData.id = json[i]["id"].string
            }else{
                modelData.id = ""
            }
            if let PLACE = json[i]["place"].string {// worng key for validation
            modelData.place = json[i]["place"].string
            }else{
                modelData.place = ""
            }

            
            finalArray .add(modelData)
        }
        return finalArray
    
    }
}
