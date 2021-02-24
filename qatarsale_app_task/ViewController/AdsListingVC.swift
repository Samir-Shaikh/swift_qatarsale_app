//
//  AdsListingVC.swift
//  qatarsale_app_task
//
//  Created by Sam on 24/02/21.
//

import UIKit

class AdsListingVC: UIViewController {

    //MARK: Variables
    private var adsViewModel = AdsListingViewModel(dataService: DataService())
    private var page = 0
    private var arrAds = [AdsModel]()
    
    //MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        initialConfig()
    }
    
    //MARK: Private Methods
    private func initialConfig(){
        
        adsViewModel.getAds(with: self.page) { (arrAds) in
            
            self.arrAds = arrAds
        }
    }
}
