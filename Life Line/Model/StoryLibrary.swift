//
//  StoryLibrary.swift
//  Life Line
//
//  Created by Furkan Ceylan on 3.04.2024.
//

import Foundation

struct StoryLibrary {
    
    var storyNumber: Int = 0
    
    // Storys
    var story: [Story] = [
        Story(
            title: "Arabanızın lastiği ıssız bir yerde, cep telefonu sinyali olmayan bir yolda patladı. Otostop çekmeye karar verirsiniz. Paslı bir kamyonet yanınızda durur. Geniş kenarlı şapkalı, ruhsuz gözlü bir adam, yolcu kapısını size açar ve der ki: 'Bir yolculuğa ihtiyacın mı var, oğlum?'",
            choice1: "Bineceğim. Yardımın için teşekkürler!", choice1Destination: 2,
            choice2: "Önce onun bir katil olup olmadığını sormalıyım.", choice2Destination: 1
        ),
        Story(
            title: "Yavaşça başını sallar, soruya aldırmaz.",
            choice1: "En azından dürüst. Bineceğim.", choice1Destination: 2,
            choice2: "Bekle, lastik değiştirmeyi biliyorum.", choice2Destination: 3
        ),
        Story(
            title: "Sürmeye başladığınızda, yabancı annesiyle olan ilişkisinden bahsetmeye başlar. Dakika başına daha da sinirlenir. Eldiven kutusunu açmanızı ister. İçinde kanlı bir bıçak, iki kesilmiş parmak ve bir Elton John kaseti bulursunuz. Eldiven gözüne uzanır.",
            choice1: "Elton John'u seviyorum! Kaseti ona ver.", choice1Destination: 5,
            choice2: "Ya o ya ben! Bıçağı alır ve ona saplar.", choice2Destination: 4
        ),
        Story(
            title: "Ne? Böyle bir iş çıkışı! Trafik kazalarının, çoğu yetişkin yaş grubu için kazara ölümün ikinci önde gelen nedeni olduğunu biliyor muydunuz?",
            choice1: "Son", choice1Destination: 0,
            choice2: "Nokta", choice2Destination: 0
        ),
        Story(
            title: "Barikatı paramparça edip keskin kayalıklara doğru yuvarlandığınızda, bir arabayı sürerken içinde bulunduğunuz biri bıçaklamak pek de sağlıklı bir fikir olmadığını düşünüyorsunuz.",
            choice1: "Son", choice1Destination: 0,
            choice2: "Nokta", choice2Destination: 0
        ),
        Story(
            title: "'Can you feel the love tonight' şarkısının dizelerini mırıldanarak katil ile bağ kurarsınız. Sizi bir sonraki kasabaya bırakır. Gitmeden önce size ceset atmaya uygun iyi yerler bilip bilmediğinizi sorar. Cevabınız: 'Rıhtımı dene.'",
            choice1: "Son", choice1Destination: 0,
            choice2: "Nokta", choice2Destination: 0
        )
    ]
    // The end of storys
    
    mutating func storyCheck(_ buttonID: String) {
        let story = story[storyNumber]
        
        if "1" == buttonID {
            storyNumber = story.choice1Destination
        }else {
            storyNumber = story.choice2Destination
        }
    }
    
    func getStory() -> [String: String] {
        return ["title": story[storyNumber].title,
                "choice1": story[storyNumber].choice1,
                "choice2": story[storyNumber].choice2
        ]
    }
}
