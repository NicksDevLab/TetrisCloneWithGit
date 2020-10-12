//
//  StartButton.swift
//  TetrisCloneWIthGit
//
//  Created by Nicholas Church on 10/11/20.
//

import SpriteKit

class StartButton: SKSpriteNode {
  
  var gameBoard: GameBoard?
  
  init(gameBoard: GameBoard) {
    self.gameBoard = gameBoard
    super.init(texture: SKTexture(imageNamed: "startButton"), color: .white,
               size: CGSize(width: gameBoard.frame.width, height: gameBoard.frame.height / 5))
    isUserInteractionEnabled = true
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    gameBoard?.startGame()
    if let parent = self.parent as? GameScene {
      parent.setupResetButton()
      parent.setupPauseButton()
    }
    self.removeFromParent()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}