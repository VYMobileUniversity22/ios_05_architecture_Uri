//
//  WelllcomeService.swift
//  jos_.05_architecture_Uri
//
//  Created by josepL on 16/11/22.
//

import Foundation

internal final class WellcomeService: WellcomeServiceProtocol {
    
    private let dataservice : DataServiceProtocol
    
    init(dataservice: DataServiceProtocol = DataService()) {
        self.dataservice = dataservice
    }
    
    func getDataService() -> DataServiceProtocol {
        print("Service")
        return dataservice
    }
    
    
}
