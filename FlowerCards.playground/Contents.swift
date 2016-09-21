//: Playground - noun: a place where people can play

import UIKit

enum CardType: Int {
    case bright
    case ribbon
    case animal
    case junk
}

enum CardSuit: Int {
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

// Renamed properties from 'cardSuit' and 'cardType' to 'suit' and 'type'
// Not only shorter :-), but also reduces some muffin-man effect when accessing the properties:
//     if card.cardSuit == ...     let type = card.cardType.
// You're dealing with a card, so it's obvious that the type/suit you're talking about relate to the card.
//
// Deleted the initializer because you get one automatically where the property names match the argument names,
// so you get  init(suit:type:) for free.
//
// Also added some whitespace after the ':', convential style seems to be going one-space-after-colons.
// It also makes it easier for me to read.  whitespaceischeapweshouldbeusingitmoreoften.
struct Card : CustomStringConvertible {
    let suit: CardSuit
    let type: CardType
    
    // You can get the name of an enum case, making it easy to synthesize a name for the card,
    // handy for generating appropriate image names, for instance.
    // This way you don't have to manually create (and maintain!) All The Strings
    // (a.k.a. the cartesian product of suit and type.)
    var name: String {
        return ("\(String(describing: suit))-\(String(describing: type))")
    }

    // Make the debugging printout a little prettier.
    var description: String {
        return name
    }
}

// This is debatable whether it's an improvement.
//
// Pros:
//    Don't have to manually create (and maintain!) the deck.  It can be prone to copy-paste errors.
//    Tracks any changes to the enums (say if you were making a Lizard-Spock update)
//
// Cons:
//    Kind of gross to saddle CardSuit / CardType with being integers just to automate the deck creation
//    Don't like the forced unwrapping. It's safe (becaue we spin through known values), but the bang-operator
//       always makes me nervous
let deck: [Card] = {
    var deck = [Card]()
    for rawSuit in CardSuit.january.rawValue ... CardSuit.december.rawValue {
        let suit = CardSuit(rawValue: rawSuit)!
        
        for rawType in CardType.bright.rawValue ... CardType.junk.rawValue {
            let type = CardType(rawValue: rawType)!
            
            let card = Card(suit: suit, type: type)
            deck.append(card)
        }
        
        // and add an additional junk card
        let junk2 = Card(suit: suit, type: .junk)
        deck.append(junk2)
    }
    
    return deck
}()


for card in deck {
    print("got card \(card)")
}
