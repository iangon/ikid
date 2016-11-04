//
//  BadJokeQuestionViewController.swift
//  iKid
//
//  Created by Ian on 11/3/16.
//  Copyright © 2016 Ian. All rights reserved.
//

import UIKit

class BadJokeQuestionViewController: UIViewController {
    private var secondViewController : BadJokeAnswerViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickAnswer(_ sender: UIButton) {
        secondViewController = storyboard?
            .instantiateViewController(withIdentifier: "BadAVC") as! BadJokeAnswerViewController
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        self.view.addSubview(secondViewController.view)
        UIView.commitAnimations()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
