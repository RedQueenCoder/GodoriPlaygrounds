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

// Removed the hard-coded name string - it's derivable from the Card directly.
// Turned the deck in to an array.  Look a deck of cards, and there's a definite
// order to the cards.  The deck will need to be shuffled in the future, so starting
// out with an array prevents having to extract the arrayness out of another
// data structure.

let deck:[Card] = [
    Card(suit: .january, type: .ribbon),
    Card(suit: .january, type: .junk),
    Card(suit: .january, type: .junk),
    Card(suit: .february, type: .animal),
    Card(suit: .february, type: .ribbon),
    Card(suit: .february, type: .junk),
    Card(suit: .february, type: .junk),
    Card(suit: .march, type: .bright),
    Card(suit: .march, type: .ribbon),
    Card(suit: .march, type: .junk),
    Card(suit: .march, type: .junk),
    Card(suit: .april, type: .animal),
    Card(suit: .april, type: .ribbon),
    Card(suit: .april, type: .junk),
    Card(suit: .april, type: .junk),
    Card(suit: .may, type: .animal),
    Card(suit: .may, type: .ribbon),
    Card(suit: .may, type: .junk),
    Card(suit: .may, type: .junk),
    Card(suit: .june, type: .animal),
    Card(suit: .june, type:.ribbon),
    Card(suit: .june, type: .junk),
    Card(suit: .june, type: .junk),
    Card(suit: .july, type: .animal),
    Card(suit: .july, type: .ribbon),
    Card(suit: .july, type: .junk),
    Card(suit: .july, type: .junk),
    Card(suit: .august, type: .bright),
    Card(suit: .august, type: .animal),
    Card(suit: .august, type: .junk),
    Card(suit: .august, type: .junk),
    Card(suit: .september, type: .animal),
    Card(suit: .september, type: .ribbon),
    Card(suit: .september, type: .junk),
    Card(suit: .september, type: .junk),
    Card(suit: .october, type: .animal),
    Card(suit: .october, type: .ribbon),
    Card(suit: .october, type: .junk),
    Card(suit: .october, type: .junk),
    Card(suit: .november, type: .bright),
    Card(suit: .november, type: .animal),
    Card(suit: .november, type: .ribbon),
    Card(suit: .november, type: .junk),
    Card(suit: .december, type:.bright),
    Card(suit: .december, type: .junk),
    Card(suit: .december, type: .junk),
    Card(suit: .december, type: .junk)]

for card in deck {
    print("got card \(card)")
}
