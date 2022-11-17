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
        print("----Init---- Inicia Service")
        self.dataservice = dataservice
    }
    
    func getDataService() -> DataServiceProtocol {
        print("Service: func getdataService()")
        return dataservice
    }
    
    
}
