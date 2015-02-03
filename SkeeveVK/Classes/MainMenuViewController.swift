//
//  MainMenuViewController.swift
//  SkeeveVK
//
//  Created by harchenko on 03.02.15.
//  Copyright (c) 2015 harchenko. All rights reserved.
//

import UIKit

extension MainMenuViewController{
 
}

class MainMenuViewController: UIViewController {
    
    @IBOutlet private var mainRightConstrint: NSLayoutConstraint!
    @IBOutlet var mainView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menuTapped(sender: AnyObject) {
        if(self.mainRightConstrint.constant == 0){
            self.mainRightConstrint.constant = -256;
        }else{
            self.mainRightConstrint.constant = 0;
        }
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.view.layoutIfNeeded();
        });
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        if(size.width != self.mainView.frame.size.width){
            if(self.mainRightConstrint.constant != 0){
                self.menuTapped(NSNull);
            }
            self.navigationItem.leftBarButtonItem?.enabled = false;
        }else{
            self.navigationItem.leftBarButtonItem?.enabled = true;
        }
    }

}
