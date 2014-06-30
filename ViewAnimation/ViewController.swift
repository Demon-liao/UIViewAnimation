//
//  ViewController.swift
//  ViewAnimation
//
//  Created by demon on 14-6-30.
//  Copyright (c) 2014年 demon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doUIViewAnimation(sender: AnyObject) {
        UIView.beginAnimations("animationID",context:nil);
        UIView.setAnimationDuration(1.5);
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut);
        UIView.setAnimationRepeatAutoreverses(false);
        var theButton:UIButton=sender as UIButton;
        switch theButton.tag{
            case 0:
            UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromLeft ,forView:self.view,cache:true)
            break
            case 1:
             UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight ,forView:self.view,cache:true)
            break
            case 2:
            UIView.setAnimationTransition(UIViewAnimationTransition.CurlUp ,forView:self.view,cache:true)
            break
            case 3:
            UIView.setAnimationTransition(UIViewAnimationTransition.CurlDown ,forView:self.view,cache:true)
            break

            default:
                println("22")
        }
        UIView.commitAnimations()
    }

}

