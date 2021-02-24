//
//  DataService.swift
//  qatarsale_app_task
//
//  Created by Sam on 24/02/21.
//

import UIKit
import Alamofire

class DataService: NSObject {
    
    // MARK: - Singleton
    static let shared = DataService()
    
    // MARK: - URL
    private var adsURL = "https://api-v2.qatarsale.com/api/Market/GetNewestMarketList"
    
    // MARK: - Services
    func getAds(with currentPage:Int, completion: @escaping ([String: Any]?, Error?) -> ()) {

        var param = Parameters()
        param["currentPage"] = currentPage
        param["pageSize"] = 0
        
        Alamofire.request(URL(string: adsURL)!, method: .post, parameters: param, encoding: JSONEncoding.default, headers: ["Accept-Language":"en","Content-Type":"application/json"]).responseJSON { (response) in
            
            guard response.result.isSuccess else {
                
                completion(nil,response.error)
                return
            }
            
            //response payload
            if let responseObject = response.result.value as? [String: Any]{
                
                completion(responseObject,nil)
            }else{
                
                completion(nil,response.error)
            }
        }
    }
}
