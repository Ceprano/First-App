//
//  GameScene.swift
//  Skiptaculous
//
//  Created by Joe Chang on 27/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // 1
    let player = SKSpriteNode(imageNamed: "player")
    
    override func didMoveToView(view: SKView) {
        // 2
        backgroundColor = SKColor.whiteColor()
        // 3
        player.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        // 4
        addChild(player)
        
        func random() -> CGFloat {
            return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
        }
        
        func random(#min: CGFloat, max: CGFloat) -> CGFloat {
            return random() * (max - min) + min
        }
        
        func addMonster() {
            
            // Create sprite
            let monster = SKSpriteNode(imageNamed: "monster")
            
            // Determine where to spawn the monster along the Y axis
            let actualY = random(min: monster.size.height/2, max: size.height - monster.size.height/2)
            
            // Position the monster slightly off-screen along the right edge,
            // and along a random position along the Y axis as calculated above
            monster.position = CGPoint(x: size.width + monster.size.width/2, y: actualY)
            
            // Add the monster to the scene
            addChild(monster)
            
            // Determine speed of the monster
            let actualDuration = random(min: CGFloat(2.0), max: CGFloat(4.0))
            
            // Create the actions
            let actionMove = SKAction.moveTo(CGPoint(x: -monster.size.width/2, y: actualY), duration: NSTimeInterval(actualDuration))
            let actionMoveDone = SKAction.removeFromParent()
            monster.runAction(SKAction.sequence([actionMove, actionMoveDone]))
            
        }
        
        runAction(SKAction.repeatActionForever(
            SKAction.sequence([
                SKAction.runBlock(addMonster),
                SKAction.waitForDuration(1.0)
                ])
            ))

    }
}




