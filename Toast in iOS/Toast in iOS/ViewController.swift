//
//  ViewController.swift
//  Toast in iOS
//
//  Created by Aaqib Hussain on 03/06/2015.
//  Copyright (c) 2015 iSwiter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopActivityToast.hidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var stopActivityToast: UIButton!
    @IBAction func simpleToast(sender: AnyObject) {
        self.view.makeToast("I Love Swift");
    }

    @IBAction func stopActivityToast(sender: AnyObject) {
        self.view.hideToastActivity()
        stopActivityToast.hidden = true;
        activityToast.hidden = false;
    }
    @IBAction func imageToast(sender: AnyObject) {
        self.view.makeToast("I Love Swift", duration: 5.0, position: CSToastPositionCenter, image: UIImage(named: "swift.png"))
        
        
    }

    @IBOutlet var activityToast: UIButton!
    @IBAction func activityToast(sender: AnyObject) {
        self.view.makeToastActivity()
        activityToast.hidden = true;
        stopActivityToast.hidden = false;
    }

    @IBAction func positionalToast(sender: UIButton){
        self.view.makeToast("I Love Swift", duration: 5.0, position: CSToastPositionCenter, title: "Hello!")
    
    
    }

}

