//: Playground - noun: a place where people can play

import UIKit

enum CardType {
    case bright
    case ribbon
    case animal
    case junk
}

enum CardSuit {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

struct Card {
    let cardSuit:CardSuit
    let cardType:CardType
    
    init(suit:CardSuit, type:CardType) {
        cardSuit = suit
        cardType = type
    }
}

let deck:[String:Card] = ["JanBright": Card(suit: .january, type: .bright),
                          "JanRibbon": Card(suit: .january, type: .ribbon),
                          "JanJunk1": Card(suit: .january, type: .junk),
                          "JanJunk2": Card(suit: .january, type: .junk),
                          "FebBird": Card(suit: .february, type: .animal),
                          "FebRibbon": Card(suit: .february, type: .ribbon),
                          "FebJunk1": Card(suit: .february, type: .junk),
                          "FebJunk2": Card(suit: .february, type: .junk),
                          "MarchBright": Card(suit: .march, type: .bright),
                          "MarchRibbom": Card(suit: .march, type: .ribbon),
                          "MarchJunk1": Card(suit: .march, type: .junk),
                          "MarchJunk2": Card(suit: .march, type: .junk),
                          "AprilBird": Card(suit: .april, type: .animal),
                          "AprilRibbon": Card(suit: .april, type: .ribbon),
                          "AprilJunk1": Card(suit: .april, type: .junk),
                          "AprilJunk2": Card(suit: .april, type: .junk),
                          "MayAnimal": Card(suit: .may, type: .animal),
                          "MayRibbon": Card(suit: .may, type: .ribbon),
                          "MayJunk1": Card(suit: .may, type: .junk),
                          "MayJunk2": Card(suit: .may, type: .junk),
                          "JuneAnimal": Card(suit: .june, type: .animal),
                          "JuneRibbon": Card(suit: .june, type:.ribbon),
                          "JuneJunk1": Card(suit: .june, type: .junk),
                          "JuneJunk2": Card(suit: .june, type: .junk),
                          "JulyAnimal": Card(suit: .july, type: .animal),
                          "JulyRibbon": Card(suit: .july, type: .ribbon),
                          "JulyJunk1": Card(suit: .july, type: .junk),
                          "JulyJunk2": Card(suit: .july, type: .junk),
                          "AugBright": Card(suit: .august, type: .bright),
                          "AugBird": Card(suit: .august, type: .animal),
                          "AugJunk1": Card(suit: .august, type: .junk),
                          "AugJunk2": Card(suit: .august, type: .junk),
                          "SepAnimal": Card(suit: .september, type: .animal),
                          "SepRibbon": Card(suit: .september, type: .ribbon),
                          "SepJunk1": Card(suit: .september, type: .junk),
                          "SepJunk2": Card(suit: .september, type: .junk),
                          "OctAnimal": Card(suit: .october, type: .animal),
                          "OctRibbon": Card(suit: .october, type: .ribbon),
                          "OctJunk1": Card(suit: .october, type: .junk),
                          "OctJunk2": Card(suit: .october, type: .junk),
                          "NovBright": Card(suit: .november, type: .bright),
                          "NovAnimal": Card(suit: .november, type: .animal),
                          "NovRibbon": Card(suit: .november, type: .ribbon),
                          "NovJunkDouble": Card(suit: .november, type: .junk),
                          "DecBright": Card(suit: .december, type:.bright),
                          "DecJunkDouble": Card(suit: .december, type: .junk),
                          "DecJunk1": Card(suit: .december, type: .junk),
                          "DecJunk2": Card(suit: .december, type: .junk),]

for card in deck {
    print("got card \(card)")
}
