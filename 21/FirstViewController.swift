//
//  FirstViewController.swift
//  21
//
//  Created by  on 2022/8/14.
//

import UIKit

class FirstViewController: UIViewController {

    //public
    var cards = [String]()
    var timer:Timer?
    @IBOutlet weak var resultLabel: UILabel!
    //mine
    
    @IBOutlet var myCardsImageView: [UIImageView]!
    @IBOutlet weak var myScoreLabel: UILabel!
    @IBOutlet weak var bangLabel: UILabel!
    @IBOutlet weak var iGetCardButtonOutlet: Imagebutton!
    
    var myScore = 0
    var myCards = [String]()
    var generateTimes = 0
    
    //enemy

    @IBOutlet var enemyCardsImageView: [UIImageView]!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    @IBOutlet weak var enemyBangLabel: UILabel!
    @IBOutlet weak var enemyGetCardButtonOutlet: Imagebutton!
    var enemyScore = 0
    var enemyGenerateTimes = 0
    var enemyCards = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bangLabel.isHidden = true
        enemyBangLabel.isHidden = true
        enemyGetCardButtonOutlet.isUserInteractionEnabled = false
        resultLabel.isHidden = true
        createCard()

        // Do any additional setup after loading the view.
    }

    // for my card
    @IBAction func getCard(_ sender: Any) {
        enemyGetCardButtonOutlet.isUserInteractionEnabled = true
        while generateTimes < 5 && myScore < 21 {
            // tempCard = String
            let tempCard:String? = cards.randomElement()
            if let tempCard = tempCard {
                myCards.append(tempCard)
                myCardsImageView[generateTimes].image=UIImage(named: tempCard)
                print(tempCard)
                generateTimes += 1

            if tempCard.description.contains("A"){
                myScore += 1
                myScoreLabel.text = String(myScore)
            }else if tempCard.description.contains("2"){
                myScore += 2
            }else if tempCard.description.contains("3"){
                myScore += 3
            }else if tempCard.description.contains("4"){
                myScore += 4
            }else if tempCard.description.contains("5"){
                myScore += 5
            }else if tempCard.description.contains("6"){
                myScore += 6
            }else if tempCard.description.contains("7"){
                myScore += 7
            }else if tempCard.description.contains("8"){
                myScore += 8
            }else if tempCard.description.contains("9"){
                myScore += 9
            }else if tempCard.description.contains("10"){
                myScore += 10
            }else if tempCard.description.contains("J"){
                myScore += 11
            }else if tempCard.description.contains("Q"){
                myScore += 12
            }else if tempCard.description.contains("K"){
                myScore += 13
            }else{
                print("error")
            }
            print("labelChange")
            myScoreLabel.text = String(myScore)

            } //if let close
            if myScore > 21{
                print("bang")
                bangLabel.isHidden = false}
                return
            }


        }

    
    // for enemy card
    @IBAction func giveEnemyCard(_ sender: UIButton) {
        iGetCardButtonOutlet.isUserInteractionEnabled = false
        enemyGetCardButtonOutlet.isUserInteractionEnabled = false

        // give random cards to enemy
        let i = Int.random(in: 1...5)
        //還沒爆掉時

        if bangLabel.isHidden == true{
            for _ in 1...i{
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
            
            
            
        //比較雙方牌分
        if myScore > enemyScore{
            resultLabel.text = "你淫惹"
            resultLabel.isHidden = false
        }else{
            resultLabel.text = "對手淫惹"
            resultLabel.isHidden = false
        }
            
        }
        
        

        
    
    }
    

}
