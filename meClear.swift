//
//  meClear.swift
//  21
//
//  Created by 海宣王 on 2022/8/31.
//

extension FirstViewController{
    func meClear() {
        //me clear
        mybangLabel.isHidden = true
        myScore = 0
        myScoreLabel.text = String(myScore)
        mybangLabel.isHidden = true
        iGetCardButtonOutlet.isUserInteractionEnabled=true
        
        myScore = 0
        myCards = [String]()
        generateTimes = 0

        resultLabel.isHidden = true
        
        i = Int.random(in: 1...5)
        timerCount = 0
        
        for n in 0...4{
            myCardsImageView[n].image = nil
        }
    }
    // enemy clear
    func enemyClear() {
        enemyBangLabel.isHidden = true
        enemyScore = 0
        enemyScoreLabel.text = String(enemyScore)
        enemyBangLabel.isHidden = true
        enemyGetCardButtonOutlet.isUserInteractionEnabled=true
        
        enemyScore = 0
        enemyCards = [String]()
        enemyGenerateTimes = 0

        resultLabel.isHidden = true
        
        timerCount = 0
        
        for m in 0...4{
            enemyCardsImageView[m].image = nil
        }
    }
        
        
    }


