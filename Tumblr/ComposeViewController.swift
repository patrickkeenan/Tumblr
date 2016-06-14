//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Patrick Keenan on 6/13/16.
//  Copyright © 2016 Patrick Keenan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    
    
    var btn1Y:CGFloat!
    var btn2Y:CGFloat!
    var btn3Y:CGFloat!
    var btn4Y:CGFloat!
    var btn5Y:CGFloat!
    var btn6Y:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        btn1Y = btn1.frame.origin.y
        btn2Y = btn2.frame.origin.y
        btn3Y = btn3.frame.origin.y
        btn4Y = btn4.frame.origin.y
        btn5Y = btn5.frame.origin.y
        btn6Y = btn6.frame.origin.y
        btn1.frame.origin.y = view.frame.height
        btn2.frame.origin.y = view.frame.height
        btn3.frame.origin.y = view.frame.height
        btn4.frame.origin.y = view.frame.height
        btn5.frame.origin.y = view.frame.height
        btn6.frame.origin.y = view.frame.height
    }
    override func viewDidAppear(animated: Bool) {
        delay(0.25) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn1.frame.origin.y = self.btn1Y
            })
        }
        delay(0.1) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn2.frame.origin.y = self.btn2Y
            })
        }
        delay(0.2) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn3.frame.origin.y = self.btn3Y
            })
        }
        delay(0.15) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn4.frame.origin.y = self.btn4Y
            })
        }
        delay(0.2) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn5.frame.origin.y = self.btn5Y
            })
        }
        delay(0.125) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn6.frame.origin.y = self.btn6Y
            })
        }
    }
    @IBAction func closeModal(sender: AnyObject) {
        delay(0.25) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn1.frame.origin.y = -96
            })
        }
        delay(0.1) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn2.frame.origin.y = -96
            })
        }
        delay(0.2) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn3.frame.origin.y = -96
            })
        }
        delay(0.15) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn4.frame.origin.y = -96
            })
        }
        delay(0.2) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn5.frame.origin.y = -96
            })
        }
        delay(0.125) {
            UIView.animateWithDuration(0.2, animations: {
                self.btn6.frame.origin.y = -96
            })
        }
        delay(0.3) {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
