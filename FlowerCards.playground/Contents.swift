//: Playground - noun: a place where people can play

import UIKit

enum CardType {
    case Bright
    case Ribbon
    case Animal
    case Junk
}

enum CardSuit {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

struct Card {
    let cardSuit:CardSuit
    let cardType:CardType
    
    init(suit:CardSuit, type:CardType) {
        cardSuit = suit
        cardType = type
    }
}

let deck:[String:Card] = ["JanBright": Card(suit: .January, type: .Bright),
                          "JanRibbon": Card(suit: .January, type: .Ribbon),
                          "JanJunk1": Card(suit: .January, type: .Junk),
                          "JanJunk2": Card(suit: .January, type: .Junk),
                          "FebBird": Card(suit: .February, type: .Animal),
                          "FebRibbon": Card(suit: .February, type: .Ribbon),
                          "FebJunk1": Card(suit: .February, type: .Junk),
                          "FebJunk2": Card(suit: .February, type: .Junk),
                          "MarchBright": Card(suit: .March, type: .Bright),
                          "MarchRibbom": Card(suit: .March, type: .Ribbon),
                          "MarchJunk1": Card(suit: .March, type: .Junk),
                          "MarchJunk2": Card(suit: .March, type: .Junk),
                          "AprilBird": Card(suit: .April, type: .Animal),
                          "AprilRibbon": Card(suit: .April, type: .Ribbon),
                          "AprilJunk1": Card(suit: .April, type: .Junk),
                          "AprilJunk2": Card(suit: .April, type: .Junk),
                          "MayAnimal": Card(suit: .May, type: .Animal),
                          "MayRibbon": Card(suit: .May, type: .Ribbon),
                          "MayJunk1": Card(suit: .May, type: .Junk),
                          "MayJunk2": Card(suit: .May, type: .Junk),
                          "JuneAnimal": Card(suit: .June, type: .Animal),
                          "JuneRibbon": Card(suit: .June, type:.Ribbon),
                          "JuneJunk1": Card(suit: .June, type: .Junk),
                          "JuneJunk2": Card(suit: .June, type: .Junk),
                          "JulyAnimal": Card(suit: .July, type: .Animal),
                          "JulyRibbon": Card(suit: .July, type: .Ribbon),
                          "JulyJunk1": Card(suit: .July, type: .Junk),
                          "JulyJunk2": Card(suit: .July, type: .Junk),
                          "AugBright": Card(suit: .August, type: .Bright),
                          "AugBird": Card(suit: .August, type: .Animal),
                          "AugJunk1": Card(suit: .August, type: .Junk),
                          "AugJunk2": Card(suit: .August, type: .Junk),
                          "SepAnimal": Card(suit: .September, type: .Animal),
                          "SepRibbon": Card(suit: .September, type: .Ribbon),
                          "SepJunk1": Card(suit: .September, type: .Junk),
                          "SepJunk2": Card(suit: .September, type: .Junk),
                          "OctAnimal": Card(suit: .October, type: .Animal),
                          "OctRibbon": Card(suit: .October, type: .Ribbon),
                          "OctJunk1": Card(suit: .October, type: .Junk),
                          "OctJunk2": Card(suit: .October, type: .Junk),
                          "NovBright": Card(suit: .November, type: .Bright),
                          "NovAnimal": Card(suit: .November, type: .Animal),
                          "NovRibbon": Card(suit: .November, type: .Ribbon),
                          "NovJunkDouble": Card(suit: .November, type: .Junk),
                          "DecBright": Card(suit: .December, type:.Bright),
                          "DecJunkDouble": Card(suit: .December, type: .Junk),
                          "DecJunk1": Card(suit: .December, type: .Junk),
                          "DecJunk2": Card(suit: .December, type: .Junk),]