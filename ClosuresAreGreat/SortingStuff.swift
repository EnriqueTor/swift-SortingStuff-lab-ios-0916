//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    func sortShps() {
        
        ships.sorted { (ship1:Ship, ship2:Ship) -> Bool in
            
            return ship1.age > ship2.age
        }
    }
    
    func sortBooks() {
        
        books.sorted {
            
            return ($0).name < ($1).name
        }
    }
    
    func sortBowlingPins() {
        
        bowlingPins.sorted {
            
            return ($0).color.rawValue < ($1).color.rawValue
        }
    }
    
    func sortMusicCDs() {
        
        musicCDs.sorted { (cd1: MusicCD, cd2: MusicCD) -> Bool in
            
            if cd1.name < cd2.name {
                
                return true
            }
            
          if cd1.name == "Drake" {
            
            musicCDs.dropFirst()
            
            return true
         }
        
            return false
        }
    }
    
    func changeColorOfAllPins(to color: Color) {
        
        bowlingPins.map { (bow1: BowlingPin) -> [BowlingPin] in
            
            var newArray: [BowlingPin] = []
            newArray.append(BowlingPin(name: bow1.name, film: bow1.film, color: color))

            return newArray
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
 
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}



struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
