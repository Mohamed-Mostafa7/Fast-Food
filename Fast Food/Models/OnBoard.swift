//
//  OnBoard.swift
//  Fast Food
//
//  Created by Mohamed Mostafa on 02/08/2021.
//

import Foundation

class OnBoard {
    static let shared = OnBoard()
    
    func isNewUser() -> Bool {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    func setIsNewUser() {
        UserDefaults.standard.setValue(true, forKey: "isNewUser")
    }
}
