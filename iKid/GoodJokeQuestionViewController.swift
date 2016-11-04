//
//  GoodJokeQuestionViewController.swift
//  iKid
//
//  Created by Ian on 11/2/16.
//  Copyright © 2016 Ian. All rights reserved.
//

import UIKit

class GoodJokeQuestionViewController: UIViewController {
    private var secondViewController : GoodJokeAnswerViewController!
    private var knockCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answerButtonPress(_ sender: UIButton) {
        knockCount += 1
        secondViewController = storyboard?
            .instantiateViewController(withIdentifier: "goodAVC") as! GoodJokeAnswerViewController
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        if knockCount == 3 {
            self.view.addSubview(secondViewController.view)
            knockCount = 0
        }
        UIView.commitAnimations()
    }

    /*
 // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
