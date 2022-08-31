//
//  FirstViewController.swift
//  21
//
//  Created by  on 2022/8/14.
//

import UIKit

class FirstViewController: UIViewController {

    //chips
    
    
    //public
    var cards = [String]()
    var timer=Timer()
    @IBOutlet weak var resultLabel: UILabel!
    
    // for timer
    var i = Int.random(in: 1...5)
    var j = Int.random(in: 1...5)
    var timerCount = 0
    

    
    //mine
    
    @IBOutlet var myCardsImageView: [UIImageView]!
    @IBOutlet weak var myScoreLabel: UILabel!
    @IBOutlet weak var mybangLabel: UILabel!
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
    
    // before viewDIdLoad
    /*
    --------------------------------------
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mybangLabel.isHidden = true
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
                mybangLabel.isHidden = false}
                return
            }


        }

    
    // for enemy card
    @IBAction func giveEnemyCard(_ sender: UIButton) {
        iGetCardButtonOutlet.isUserInteractionEnabled = false
        enemyGetCardButtonOutlet.isUserInteractionEnabled = false
        if myScore < 22{
            timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { [self] timer in
                if self.enemyScore < 22{
                    self.enemyGetCards()
                    print(self.enemyScore)
                    timerUpdate()


                }
            })
        }


        }
        
        

        
    
    
    @IBAction func nextRound(_ sender: Any) {

        meClear()
        //enemy clear
        enemyClear()
    }
    
    
    }
    


