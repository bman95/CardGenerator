//
//  CardGeneratorModel.swift
//  CardGenerator
//
//  Created by Brendon Crowe on 12/12/22.
//

import UIKit

enum Suit: String {
    case diamond = "♦️"
    case heart = "♥️"
    case club = "♣️"
    case spade = "♠️"
}

class CardGenerator {
    
    var stepperValue: Double = 5 {
        didSet {
            print(stepperValue)
        }
    }
    
    
    // Mark:- method that presents card value and suit
    func cardToShow(_ sender: UIStepper, _ suit: Suit) -> String {
        switch sender.value {
        case 1:
            return "A " + suit.rawValue
        case 2...10:
            return String(format: "%0.f ", sender.value) + suit.rawValue
        case 11:
            return "J " + suit.rawValue
        case 12:
            return "Q " + suit.rawValue
        case 13:
            return "K " + suit.rawValue
        default:
            return ""
        }
    }
    
    
    func configureStepper(_ sender: UIStepper) {
        sender.minimumValue = 1
        sender.maximumValue = 13
        sender.stepValue = 1
        sender.value = 5
        print(sender.value)
    }
    
    
    func suitSelector(_ sender: UISegmentedControl) -> Suit  {
        switch sender.selectedSegmentIndex {
        case 0:
            if sender.selectedSegmentIndex == 0 {
                print("Diamond")
                return .diamond
            }
        case 1:
            if sender.selectedSegmentIndex == 1 {
                print("Heart")
                return .heart
            }
        case 2:
            if sender.selectedSegmentIndex == 2 {
                print("club")
                return .club
            }
        case 3:
            if sender.selectedSegmentIndex == 3 {
                print("spade")
                return .spade
            }
        default:
            break
        }
        return .diamond
    }
    
    
}
