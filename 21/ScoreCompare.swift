//
//  ScoreCompare.swift
//  21
//
//  Created by 海宣王 on 2022/8/31.
//

import Foundation
import UIKit
extension FirstViewController{
    
    //比較雙方牌分
    func scoreCompare(){
        if myScore<22&&enemyScore<22{
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

