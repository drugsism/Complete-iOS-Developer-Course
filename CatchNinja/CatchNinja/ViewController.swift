//
//  ViewController.swift
//  CatchNinja
//
//  Created by James Roh on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var ninja1: UIImageView!
    @IBOutlet weak var ninja2: UIImageView!
    @IBOutlet weak var ninja3: UIImageView!
    @IBOutlet weak var ninja4: UIImageView!
    @IBOutlet weak var ninja5: UIImageView!
    @IBOutlet weak var ninja6: UIImageView!
    @IBOutlet weak var ninja7: UIImageView!
    @IBOutlet weak var ninja8: UIImageView!
    @IBOutlet weak var ninja9: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var titeLabel: UILabel!
    
    
    @IBOutlet weak var btnFindNinja: UIButton!
    @IBOutlet weak var btnCatchNinja: UIButton!
    
    var score: Int = 0
    var counter: Int = 0
    var timer = Timer()
    var ninjaTimer = Timer()
    var ninjaFocusResult: Int = 0
    var ninjaArray = [UIImageView]()
    var mode: String = "Find" // Find or Catch
    var highScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        //High Score
        let storedHighScore = UserDefaults.standard.object(forKey: "ctn_highScore")
     
        if let newScore = storedHighScore as? Int {
            highScore = newScore
            highScoreLabel.text = "High Score: \(highScore)"
        }
        
    
        /*
            제스처 대상ViewController와 Action함수를 설정하고
            이미지뷰레 연결한후 이미지뷰의 사용자 인터랙션을 허용한다... 아오
         */
        //3) 이미지뷰 사용자 인터렉션을 설정한다
        ninja1.isUserInteractionEnabled = true
        ninja2.isUserInteractionEnabled = true
        ninja3.isUserInteractionEnabled = true
        ninja4.isUserInteractionEnabled = true
        ninja5.isUserInteractionEnabled = true
        ninja6.isUserInteractionEnabled = true
        ninja7.isUserInteractionEnabled = true
        ninja8.isUserInteractionEnabled = true
        ninja9.isUserInteractionEnabled = true
        
        
        //1)탭 제스처를 선언한다(VC, Action func)
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore(_:)))
        
        //2) 탭 제스처를 각 이미지뷰에 설정한다
        ninja1.addGestureRecognizer(recognizer1)
        ninja2.addGestureRecognizer(recognizer2)
        ninja3.addGestureRecognizer(recognizer3)
        ninja4.addGestureRecognizer(recognizer4)
        ninja5.addGestureRecognizer(recognizer5)
        ninja6.addGestureRecognizer(recognizer6)
        ninja7.addGestureRecognizer(recognizer7)
        ninja8.addGestureRecognizer(recognizer8)
        ninja9.addGestureRecognizer(recognizer9)

        
        //ninjaArray
        ninjaArray = [ninja1, ninja2, ninja3, ninja4, ninja5, ninja6, ninja7, ninja8, ninja9]
        
        
    }
    
    
    @IBAction func catchBtnClicked(_ sender: Any) {
        mode = "Catch"
        setGame(10)
        play(mode, time: 10, selctor: #selector(catchNinja))
    }
    
    @IBAction func hideBtnClicked(_ sender: Any) {
        mode = "Find"
        setGame(5)
        play(mode, time: 5, selctor: #selector(findNinja))
    }
    
//    struct NinjaTime {
//        let mode: String
//        let time: Int
//        let action: Selector
//        var timer = Timer()
//        var ninjaTimer = Timer()
//
//        init(mode: String, time: Int, action: Selector, timer: Timer = Timer(), ninjaTimer: Timer = Timer()) {
//            self.mode = mode
//            self.time = time
//            self.action = action
//            self.timer = timer
//            self.ninjaTimer = ninjaTimer
//        }
//
//        mutating func play() {
//            print("Game mode is \(mode)")
//
////            counter = time
//
//            var speed: Double = 1
//            if mode == "Find" {
//                speed = 0.1
//            }
//
////            timeLabel.text = String(time)
//            self.timer = Timer.scheduledTimer(timeInterval: speed, target: self, selector: #selector(countdownTime), userInfo: nil, repeats: true)
//
//            self.ninjaTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: action, userInfo: nil, repeats: true)
//        }
//    }
    
    func setGame(_ time: Int) {
        counter = time
        timeLabel.text = String(time)
        for ninja in ninjaArray  {
                ninja.image = UIImage(named: "ninja.jpg")
        }
    }
    
    func gameInit() {
        titeLabel.text = "Catch the Ninja!";
        titeLabel.isHidden = false
        btnCatchNinja.isHidden = false
        btnFindNinja.isHidden = false
    }
    
    func startInit(mode: String) {
        self.score = 0
        self.scoreLabel.text = "Score: \(self.score)"
        
        if mode == "Find"{
            scoreLabel.isHidden = true
            highScoreLabel.isHidden = true
            titeLabel.isHidden = true
            titeLabel.text = "Where is Ninja?";
        } else {
            scoreLabel.isHidden = false
            highScoreLabel.isHidden = false
            titeLabel.text = "Tab to Ninja!";
        }
        
        btnCatchNinja.isHidden = true
        btnFindNinja.isHidden = true
        
    }
    
    func endGame(mode: String) {
        if mode == "Find"{
            titeLabel.isHidden = false
            titeLabel.text = "Where is Ninja?";
        } else {
            titeLabel.text = "Catch the Ninja!";
            mainImage.isHidden = false
        }
        btnCatchNinja.isHidden = false
        btnFindNinja.isHidden = false
    }
    
    @objc func play(_ mode: String, time: Int, selctor: Selector ) {
        startInit(mode: mode)
        mainImage.isHidden = true
        print("Game mode is \(mode)")
        counter = time
        
        var speed: Double = 1
        if mode == "Find" {
            speed = 0.15
        }
        
        timeLabel.text = String(time)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdownTime), userInfo: nil, repeats: true)
        
        ninjaTimer = Timer.scheduledTimer(timeInterval: speed, target: self, selector: selctor, userInfo: nil, repeats: true)
    }
    
    @objc func catchNinja() {
        
        for ninja in ninjaArray  {
            ninja.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(ninjaArray.count - 1)))
        ninjaArray[random].isHidden = false
        
        if counter == 0 {
            ninjaTimer.invalidate()
            for ninja in ninjaArray  {
                ninja.isHidden = true
            }
            endGame(mode: "Catch")
        }
    }
    
    
    @objc func findNinja() {

        let random = Int(arc4random_uniform(UInt32(ninjaArray.count - 1)))
        for ninja in ninjaArray  {
            ninja.isHidden = true
        }
        if counter > 0 {
            ninjaArray[random].isHidden = false
            ninjaFocusResult = random
        } else {
            print(ninjaFocusResult)
            ninjaTimer.invalidate()
            
            for ninja in ninjaArray  {
                ninja.isHidden = true
            }
            
            endGame(mode: "Find")
            findNinjaResult()
            
        }
    }
    
    func findNinjaResult() {
        for ninja in ninjaArray  {
            ninja.image = UIImage(named: "where.jpg")
            ninja.isHidden = false
        }
    }

    
    func getRule(_ mode: String) -> Double {
        var setSpeedValue: Double = 1
        if mode == "Find" {
            setSpeedValue = 0.1
        } else {
            setSpeedValue = 1
        }
        
        return setSpeedValue
    }
    
    
    @objc func increaseScore(_ sender: UITapGestureRecognizer) {
        print(mode)
        
        if mode == "Find" {
            for (index, ninja) in ninjaArray.enumerated()  {
                if(index == ninjaFocusResult) {
                    ninja.image = UIImage(named: "ninja.jpg")
                }
            }
            
        } else {
            self.score += 1
        }
        scoreLabel.text = "Score: \(self.score)"
    }
    
    @objc func countdownTime() {
        counter -= 1
        timeLabel.text = String(counter)
        
        //Game End
        if counter == 0 {
            timer.invalidate()
           
            

            //Alert
            if self.mode == "Catch" {
                
                //High score
                if self.score > self.highScore {
                    self.highScore = self.score
                    self.highScoreLabel.text = "High Score: \(self.highScore)"
                    UserDefaults.standard.set(self.highScore, forKey: "ctn_highScore")
                }
                
                
                let alert = UIAlertController(title: "Time's up", message: "Do you want play again?", preferredStyle: UIAlertController.Style.alert)
                let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel)
                let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                    //replay func
                    
                    self.counter = 10
                    self.timeLabel.text = String(self.counter)
                    
                    self.setGame(10)
                    self.play(self.mode, time: 10, selctor: #selector(self.catchNinja))
                    
                    
                }
                alert.addAction(cancelButton)
                alert.addAction(replayButton)
                self.present(alert, animated: true)
            }

        
            

        }
    }
}

