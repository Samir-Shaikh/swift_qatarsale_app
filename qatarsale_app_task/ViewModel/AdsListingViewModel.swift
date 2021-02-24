//
//  AdsListingViewModel.swift
//  qatarsale_app_task
//
//  Created by Sam on 24/02/21.
//

import UIKit
import NVActivityIndicatorView

class AdsListingViewModel: NSObject {
    
    private var dataService: DataService?
    
    
    init(dataService: DataService) {
        self.dataService = dataService
    }
    
    // MARK: - Services
    func getAds(with currentPage:Int, completion: @escaping ([AdsModel]) -> ()) {
        
        NVActivityIndicatorPresenter.sharedInstance.startAnimating(ActivityData(message: ""))
        dataService?.getAds(with: currentPage, completion: { (resDict, err) in
            
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
            
            if let list = resDict?["list"] as? [[String:Any]]{
                
                let arrAds = [AdsModel].from(jsonArray: list)
                completion(arrAds ?? [])
            }
            
        })
    }
}
