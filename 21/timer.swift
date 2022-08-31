//
//  timer.swift
//  21
//
//  Created by 海宣王 on 2022/8/31.
//

import Foundation
extension FirstViewController{
    
    
    func stop(){
        timer.invalidate()
    }
    

    
    func timerUpdate(){
        timerCount += 1
        if timerCount == i {
            stop()
            scoreCompare()
        }
    }
    
    
}
