//
//  EnemyGetCards.swift
//  21
//
//  Created by 海宣王 on 2022/8/31.
//

import Foundation
import UIKit
extension FirstViewController{
   
    func enemyGetCards(){
        if enemyScore < 21 {
            // tempCard = String
            let tempCard:String? = cards.randomElement()
            if let tempCard = tempCard {
                enemyCards.append(tempCard)
                enemyCardsImageView[enemyGenerateTimes].image=UIImage(named: tempCard)
                print(tempCard)
                enemyGenerateTimes += 1

            if tempCard.description.contains("A"){
                enemyScore += 1
                enemyScoreLabel.text = String(enemyScore)
            }else if tempCard.description.contains("2"){
                enemyScore += 2
            }else if tempCard.description.contains("3"){
                enemyScore += 3
            }else if tempCard.description.contains("4"){
                enemyScore += 4
            }else if tempCard.description.contains("5"){
                enemyScore += 5
            }else if tempCard.description.contains("6"){
                enemyScore += 6
            }else if tempCard.description.contains("7"){
                enemyScore += 7
            }else if tempCard.description.contains("8"){
                enemyScore += 8
            }else if tempCard.description.contains("9"){
                enemyScore += 9
            }else if tempCard.description.contains("10"){
                enemyScore += 10
            }else if tempCard.description.contains("J"){
                enemyScore += 11
            }else if tempCard.description.contains("Q"){
                enemyScore += 12
            }else if tempCard.description.contains("K"){
                enemyScore += 13
            }else{
                print("error")
            }
            print("labelChange")
            enemyScoreLabel.text = String(enemyScore)
        }
            
            //if let close
            if enemyScore > 21{
                print("bang")
                enemyBangLabel.isHidden = false
                return
        }
        
        
        }

    }
    
    
}

