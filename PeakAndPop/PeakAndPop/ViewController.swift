//
//  ViewController.swift
//  PeakAndPop
//
//  Created by Luthfi Aly on 12/4/17.
//  Copyright © 2017 Luthfialy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {
    
    //Shows preview
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
    {
        let previewView = storyboard?.instantiateViewController(withIdentifier: "view2")
        return previewView
    }
    
    //Shows final VC
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
    {
        let finalView = storyboard?.instantiateViewController(withIdentifier: "view3")
        show(finalView!, sender: self)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Checking for support
        if traitCollection.forceTouchCapability == UIForceTouchCapability.available
        {
            registerForPreviewing(with: self, sourceView: view)
        }
        else
        {
            print("ISN'T COMPATIBLE")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

