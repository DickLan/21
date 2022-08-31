//
//  CardGenerate.swift
//  21
//
//  Created by 海宣王 on 2022/8/14.
//

extension FirstViewController{

    
    class Card{
        var suit = "1"
        var rank = "2"
    }

    //生成卡片

    func createCard(){
        let suits = ["新接龍_梅花","新接龍_方塊","新接龍_紅心","新接龍_黑桃"]
        let ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K",]
        for suit in suits{
            for rank in ranks{
                let card = Card()
                let a = suit
                let b = rank
                let c = a+b
                cards.append(c)
                
            }
        }
        //print(cards)
    }
}


