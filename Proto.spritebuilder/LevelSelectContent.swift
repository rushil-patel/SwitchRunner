//
//  LevelSelectContent.swift
//  Proto
//
//  Created by Rushil Patel on 8/7/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class LevelSelectContent: CCNode {
    
    
    weak var levelSquare1: LevelSquare!
    weak var levelSquare2: LevelSquare!
    weak var levelSquare3: LevelSquare!
    weak var levelSquare4: LevelSquare!
    weak var levelSquare5: LevelSquare!
    weak var levelSquare6: LevelSquare!
    weak var levelSquare7: LevelSquare!
    weak var levelSquare8: LevelSquare!
    weak var levelSquare9: LevelSquare!
    weak var levelSquare10: LevelSquare!
    weak var levelSquare11: LevelSquare!
    weak var levelSquare12: LevelSquare!
    var levelSquares: [LevelSquare] = []
    
    var userActivityState = UserState()
    
    
    func didLoadFromCCB(){
        
        levelSquares.append(levelSquare1)
        levelSquares.append(levelSquare2)
        levelSquares.append(levelSquare3)
        levelSquares.append(levelSquare4)
        levelSquares.append(levelSquare5)
        levelSquares.append(levelSquare6)
        levelSquares.append(levelSquare7)
        levelSquares.append(levelSquare8)
        levelSquares.append(levelSquare9)
        levelSquares.append(levelSquare10)
        levelSquares.append(levelSquare11)
        levelSquares.append(levelSquare12)
        
        for index in 0..<levelSquares.count {
            
            levelSquares[index].levelNumberLabel.string = levelSquares[index].name
            var starsEarned: Int? = userActivityState.starsEarned["Levels/Level\(levelSquares[index].name)"] as? Int
            
            if let starsEarned = starsEarned {
                if starsEarned == 1 {
                    
                    levelSquares[index].starOne.visible = true
                    levelSquares[index].starTwo.visible = false
                    levelSquares[index].starThree.visible = false
                
                } else if starsEarned == 2 {
                    
                    levelSquares[index].starOne.visible = true
                    levelSquares[index].starTwo.visible = true
                    levelSquares[index].starThree.visible = false
                } else if starsEarned == 3 {
                    
                    levelSquares[index].starOne.visible = true
                    levelSquares[index].starTwo.visible = true
                    levelSquares[index].starThree.visible = true
                }
            } else {
                
                levelSquares[index].starOne.visible = false
                levelSquares[index].starTwo.visible = false
                levelSquares[index].starThree.visible = false
            }
            
        }
        
    }

}