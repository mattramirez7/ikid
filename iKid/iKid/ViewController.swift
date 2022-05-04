//
//  ViewController.swift
//  iKid
//
//  Created by Matthew Ramirez on 5/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    var dadViewController : DadViewController! = nil
    
    @IBAction func dadToolbarItemPressed(_ sender: Any) {
        dadBuilder()
        
        self.addChild(dadViewController!)
        self.view.insertSubview(dadViewController!.view, at: 0)
        dadViewController!.didMove(toParent: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func dadBuilder() {
        if dadViewController == nil {
            dadViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Dad")
                as! DadViewController
        }
    }
    

}

