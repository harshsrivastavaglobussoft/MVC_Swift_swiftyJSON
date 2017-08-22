//
//  PopularData.swift
//  DribbleInSwift
//
//  Created by Sumit Ghosh on 09/08/17.
//  Copyright © 2017 Sumit Ghosh. All rights reserved.
//

import UIKit
import ObjectMapper

class PopularData: NSObject {
    
    func getDataForPopularTable(callback: @escaping (NSArray) -> Void) -> Void {
        Apihelper.init().dataForPopularTable { (dataPopular) in
            let finalPopularArray:NSArray = swiftyJSONModel.init().getArrayOfModel(dataArray: dataPopular)
            callback(finalPopularArray)
        }
    }
    
}
