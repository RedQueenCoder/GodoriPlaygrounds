//: Playground - noun: a place where people can play

import UIKit

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

enum RibbonColor {
    case Blue
    case Purple
    case Red
}

protocol Card {
    var cardSuit:CardSuit {get}
    var cardName:String {get}
}

struct BrightCard:Card {
    
    internal var cardSuit: CardSuit
    internal var cardName: String

    init(suit: CardSuit, name: String) {
        cardSuit = suit
        cardName = name
    }
}

struct RibbonCard:Card {
    
    internal var cardSuit: CardSuit
    internal var cardName: String
    internal var ribbonColor: RibbonColor
    
    init(suit: CardSuit, name: String, ribbon: RibbonColor) {
        cardSuit = suit
        cardName = name
        ribbonColor = ribbon
    }
}

// Feb, April, Aug
struct AnimalCard:Card {
    
    internal var cardSuit: CardSuit
    internal var cardName: String
    internal var isBird: Bool
    
    init(suit: CardSuit, name: String, bird:Bool) {
        cardSuit = suit
        cardName = name
        isBird = bird
    }
    
}

struct JunkCard:Card {
    
    internal var cardSuit: CardSuit
    internal var cardName: String
    internal var isDouble: Bool
    
    init(suit: CardSuit, name: String, double:Bool) {
        cardSuit = suit
        cardName = name
        isDouble = double
    }
}

let deck:[Card] = [BrightCard(suit: .January, name:"JanuaryBright"),
                   BrightCard(suit: .March, name:"MarchBright"),
                   BrightCard(suit: .August, name: "AugustBright"),
                   BrightCard(suit: .November, name: "NovemberBright"),
                   BrightCard(suit: .December, name: "DecemberBright"),
                   RibbonCard(suit: .January, name: "JanuaryPurpleRibbon", ribbon: .Purple),
                   RibbonCard(suit: .February, name: "FebruaryPurpleRibbon", ribbon: .Purple),
                   RibbonCard(suit: .March, name: "MarchPurpleRibbon", ribbon: .Purple),
                   RibbonCard(suit: .April, name: "AprilRedRibbon", ribbon: .Red),
                   RibbonCard(suit: .May, name: "MayRedRibbon", ribbon: .Red),
                   RibbonCard(suit: .July, name: "JulyRedRibbon", ribbon: .Red),
                   RibbonCard(suit: .December, name: "DecemberRedRibbon", ribbon: .Red),
                   RibbonCard(suit: .June, name: "JuneBlueRibbon", ribbon: .Blue),
                   RibbonCard(suit: .September, name: "SeptemberBlueRibbon", ribbon: .Blue),
                   RibbonCard(suit: .October, name: "OctoberBlueRibbon", ribbon: .Blue),
                   AnimalCard(suit: .February, name: "FebruaryBird", bird: true),
                   AnimalCard(suit: .April, name: "AprilBird", bird: true),
                   AnimalCard(suit: .May, name: "MayAnimal", bird: false),
                   AnimalCard(suit: .June, name: "JuneAnimal", bird: false),
                   AnimalCard(suit: .July, name: "JulyAnimal", bird: false),
                   AnimalCard(suit: .August, name: "AugustBird", bird: true),
                   AnimalCard(suit: .September, name: "SeptemberAnimal", bird: false),
                   AnimalCard(suit: .October, name: "OctoberAnimal", bird: false),
                   AnimalCard(suit: .December, name: "DecemberAnimal", bird: false),
                   JunkCard(suit: .January, name: "JanuaryJunk", double: false),
                   JunkCard(suit: .January, name: "JanuaryJunk", double: false),
                   JunkCard(suit: .February, name: "FebruaryJunk", double: false),
                   JunkCard(suit: .February, name: "FebruaryJunk", double: false),
                   JunkCard(suit: .March, name: "MarchJunk", double: false),
                   JunkCard(suit: .March, name: "MarchJunk", double: false),
                   JunkCard(suit: .April, name: "AprilJunk", double: false),
                   JunkCard(suit: .April, name: "AprilJunk", double: false),
                   JunkCard(suit: .May, name: "MayJunk", double: false),
                   JunkCard(suit: .May, name: "MayJunk", double: false),
                   JunkCard(suit: .June, name: "JuneJunk", double: false),
                   JunkCard(suit: .June, name: "JuneJunk", double: false),
                   JunkCard(suit: .July, name: "JulyJunk", double: false),
                   JunkCard(suit: .July, name: "JulyJunk", double: false),
                   JunkCard(suit: .August, name: "AugustJunk", double: false),
                   JunkCard(suit: .August, name: "AugustJunk", double: false),
                   JunkCard(suit: .September, name: "SeptemberJunk", double: false),
                   JunkCard(suit: .September, name: "SeptemberJunk", double: false),
                   JunkCard(suit: .October, name: "OctoberJunk", double: false),
                   JunkCard(suit: .October, name: "OctoberJunk", double: false),
                   JunkCard(suit: .November, name: "NovemberJunk", double: false),
                   JunkCard(suit: .November, name: "NovemberJunk", double: false),
                   JunkCard(suit: .November, name: "NovemberJunkDouble", double: true),
                   JunkCard(suit: .December, name: "DecemberJunkDouble", double: true)]
