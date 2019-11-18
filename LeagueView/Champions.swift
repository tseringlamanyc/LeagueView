//
//  Champions.swift
//  LeagueView
//
//  Created by Tsering Lama on 11/17/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import Foundation

struct Champion {
    
    enum Lane: String, CaseIterable {
        case top
        case jungle
        case mid
        case bot
        case support
    }
    
    let name: String
    let lane: Lane
    let description: String
    let releaseDate: Date
    let nickname: String
    
    static var allChamps: [Champion] {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "en")
    dateFormatter.dateFormat = "MM-dd-yyyy"
    return [
        Champion(name: "Teemo", lane: .top, description: "Teemo is a legend among his yordle brothers and sisters in Bandle City. As far as yordles are concerned, there is something just slightly off about him. While Teemo enjoys the companionship of other yordles, he also insists on frequent solo missions in the ongoing defense of Bandle City. Despite his genuinely warm personality, something switches off inside Teemo's mind during combat so that the lives he must end while on patrol do not burden him. Even as a young recruit, the drill instructors and other trainees found it a little disconcerting that, while Teemo was normally charming and kind, he turned deadly serious and highly efficient the minute combat exercises began. Teemo's superiors quickly steered him toward the Scouts of the Mothership, which is one of Bandle City's most distinguished Special Forces unit alongside the Megling Commandos", releaseDate: dateFormatter.date(from: "02-21-2009")!, nickname: "THE SWIFT SCOUT"),
        Champion(name: "Kled", lane: .top, description: "A warrior as fearless as he is ornery, Kled is a popular folk hero in Noxus. Embodying the furious bravado of his nation, he is an icon beloved by the empire’s soldiers, distrusted by its officers, and loathed by the nobility. Tall tales such as “The Great Hussar,” “The High General Marshal Sergeant,” and “The Mountain Admiral” trace back to the founding of the empire. Many soldiers claim Kled has fought in every campaign the legions have waged, has “acquired” every military title, and has never once backed down from a fight. Though the veracity of the details is often questionable, one part of his legend is undeniable: Charging into battle on his un-trusty steed, Skaarl, Kled fights to protect what’s his… and to take whatever he can get", releaseDate: dateFormatter.date(from: "08-10-2016")!, nickname: "THE CANTANKEROUS CAVALIER"),
        Champion(name: "Lee Sin", lane: .jungle, description: "Among the many spirits Ionians revere, none are as storied as that of the dragon. While some believe it embodies ruin, others view it as a symbol of rebirth. Few can say for certain, and fewer still have ever been able to channel the dragon’s spirit, and none so completely as Lee Sin. He arrived at the Shojin monastery as a boy, claiming the dragon had chosen him to wield its power. The elder monks saw flashes of its fire in the talented child, but also sensed his reckless pride, and the disaster it could bring. Warily, they nonetheless took him as a pupil—though, as others advanced, the elders kept him cleaning dishes and scrubbing floors.", releaseDate: dateFormatter.date(from: "04-01-2011")!, nickname: "THE BLIND MONK"),
        Champion(name: "Master Yi", lane: .jungle, description: "In Ionia’s central province of Bahrl, a mountain settlement once stood, hidden away in its serene beauty. Here, in the village of Wuju, the boy Yi grew up learning the ways of the sword, chasing a dream that later turned to tragedy.Like most children, he admired those who wore silk robes and carried blades with poems to their name. His parents being swordsmiths, Yi made a strong impression on the local warriors who frequented their workshop. He spent his mornings in the garden, sparring with his mother, and his nights reciting poetry to his father by candlelight. When it came time for Yi to study under Wuju’s masters, his parents could not have been prouder.Carrying his talent and discipline over to his training, he surpassed every expectation. Soon, the whole village knew of the “Young Master” Yi.", releaseDate: dateFormatter.date(from: "02-21-2009")!, nickname: "THE BROKEN"),
        Champion(name: "Yasuo", lane: .mid, description: "As a child, Yasuo often believed what the others in his village said of him: on the best days, his very existence was an error in judgement; on the worst, he was a mistake that could never be undone. Like most pain, there was some truth to it. His mother was a widow already raising a young son, when the man who would be Yasuo’s father blew into her life like an autumn wind. And, just like that lonely season, he was gone again before the blanket of Ionian winter settled over the small family.", releaseDate: dateFormatter.date(from: "12-13-2013")!, nickname: "THE MORE BROKEN"),
        Champion(name: "Jhin", lane: .bot, description: "Jhin is a meticulous criminal psychopath who believes murder is art. Once an Ionian prisoner, but freed by shadowy elements within Ionia’s ruling council, the serial killer now works as their cabal's assassin. Using his gun as his paintbrush, Jhin creates works of artistic brutality, horrifying victims and onlookers. He gains a cruel pleasure from putting on his gruesome theater, making him the ideal choice to send the most powerful of messages: terror. For years, Ionia’s southern mountains were plagued by the infamous “Golden Demon.” Throughout the province of Zhyun, a monster slaughtered scores of travelers and sometimes whole farmsteads, leaving behind twisted displays of corpses. Armed militias searched the forests, towns hired demon hunters, Wuju masters patrolled the roads - but nothing slowed the beast’s grisly work.", releaseDate: dateFormatter.date(from: "02-01-2016")!, nickname: "THE VIRTUOSO"),
        Champion(name: "Senna", lane: .support, description: "Senna’s journey to become a Sentinel of Light started with darkness. It started with the Black Mist… Senna first encountered the Mist at an early age, when wreckage from a distant Harrowing washed onto the shores of her home island. The Black Mist within the wreckage awakened upon contact with life. She and her village survived the ensuing storm of souls, thanks to the intervention of a nearby Sentinel… but in the wake of the attack, the Mist was still mysteriously drawn to Senna. She was cursed, marked by the Mist so its horrors pursued her endlessly, the darkness drawn to her like dying moth to living flame. She could never know when it would strike next—but worse was when it didn’t come, and Senna had to imagine what awaited in every shadow.", releaseDate: dateFormatter.date(from: "11-11-2019")!, nickname: "THE REDEEMER")
        ]
    }
    
    // type method
    static func seperateLanes() -> [[Champion]] {
        var sections = Array(repeating: [Champion](), count: Lane.allCases.count)
        
        for champ in allChamps {
            switch champ.lane {
            case .top:
                sections[0].append(champ)
            case.jungle:
                sections[1].append(champ)
            case .mid:
                sections[2].append(champ)
            case .bot:
                sections[3].append(champ)
            case .support:
                sections[4].append(champ)
            }
        }
        return sections
    }
        
}
