//
//  ViewController.swift
//  cross the road
//
//  Created by New World on 2017-08-07.
//  Copyright © 2017 New World. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Landscape: [UIImageView]!
    @IBOutlet var Platform: UIImageView!
    @IBOutlet var Player: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func Move(){
        UIView.animate(withDuration: 0.2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.Player.center = CGPoint(x: self.Player.center.x, y: self.Player.center.y - 50)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.8, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.Player.center = CGPoint(x: self.Player.center.x, y: self.Player.center.y + 50)
        
            for i in 0...self.Landscape.count-1{
                self.Landscape[i].center = CGPoint(x: self.Landscape[i].center.x, y: self.Landscape[i].center.y + 50)
            }
        }, completion: nil)

        for i in 0...self.Landscape.count-1{
            if (self.Landscape[i].center.y >= self.view.center.y * 2 + 100){
                self.Landscape[i].center.y = -25
            }
        }
    }
    

//    func moveLeft(){
//        UIView.animate(withDuration: 0.2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
//            self.Player.center = CGPoint(x: self.Player.center.x - 50, y: self.Player.center.y)
//        }, completion: nil)
//
//    }
//
//    func moveRight(){
//        UIView.animate(withDuration: 0.2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
//            self.Player.center = CGPoint(x: self.Player.center.x + 50, y: self.Player.center.y)
//        }, completion: nil)
//
//    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Move()
    }

//    @IBAction func tapaction(sender:Any) {
//        Move()
//    }

//    @IBAction func swipedleft(sender: Any) {
//      moveLeft()
//    }
//    
//    @IBAction func swipedright(sender: Any) {
//      moveRight()
//    }

}
