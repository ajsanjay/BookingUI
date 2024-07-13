//
//  Constants.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 09/07/24.
//

import Foundation
import UIKit

struct OptionModel {
    let optionName: String
    let optionInfo: String
}

struct Constants {
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    static let Option0: OptionModel = OptionModel(optionName: "Car Booking", optionInfo: "Book Car tickets using booking UI")
    static let Option1: OptionModel = OptionModel(optionName: "Bus Booking", optionInfo: "Book Bus tickets using booking UI")
    static let Option2: OptionModel = OptionModel(optionName: "Train Booking", optionInfo: "Book Train tickets using booking UI")
    static let Option3: OptionModel = OptionModel(optionName: "Flight Booking", optionInfo: "Book Flight tickets using booking UI")
    static let AvailableOptions: [OptionModel] = []
    
}
