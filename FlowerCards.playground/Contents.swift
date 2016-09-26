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
    
    init(suit: CardSuit, type: CardType) {
        assert(Card.isValidCombination(suit, type))
        self.suit = suit
        self.type = type
    }
    
    // It's dangerous to rely on "by-eye" for correctness of things like card suit/type combinations,
    // so here's a mechanical way of verifying that a suit/type combination is valid.
    static func isValidCombination(_ suit: CardSuit, _ type: CardType) -> Bool {
        let validTypes: [CardSuit: [CardType]] = [
            .january: [.bright, .ribbon, .junk],
            .february: [.ribbon, .animal, .junk],
            .march: [.bright, .ribbon, .junk],
            .april: [.ribbon, .animal, .junk],
            .may: [.ribbon, .animal, .junk],
            .june: [.ribbon, .animal, .junk],
            .july: [.ribbon, .animal, .junk],
            .august: [.bright, .animal, .junk],
            .september: [.ribbon, .animal, .junk],
            .october: [.ribbon, .animal, .junk],
            .november: [.bright, .ribbon, .animal, .junk],
            .december: [.bright, .junk] // TODO - figure out double-junk - is it just a junk card, or is a special kind?
        ]
        
        return validTypes[suit]?.contains(type) ?? false
    }
    
    static let unshuffledDeck: [Card] = {
        var deck = [Card]()
        
        // Walk through every combination of suit/type, and filter out any invalid combinations.
        for rawSuit in CardSuit.january.rawValue ... CardSuit.december.rawValue {
            let suit = CardSuit(rawValue: rawSuit)!
            
            for rawType in CardType.bright.rawValue ... CardType.junk.rawValue {
                let type = CardType(rawValue: rawType)!
                
                // Filter out any invalid card/type combinations.
                if isValidCombination(suit, type) {
                    let card = Card(suit: suit, type: type)
                    deck.append(card)
                }
            }
            
            // and add an additional junk card
            let junk2 = Card(suit: suit, type: .junk)
            deck.append(junk2)
        }
        
        // And december has yet another junk.
        let doubleJunk = Card(suit: .december, type: .junk)
        deck.append(doubleJunk)
        
        return deck
    }()
}

for card in Card.unshuffledDeck {
    print("got card \(card)")
}
