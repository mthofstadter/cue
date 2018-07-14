//
//  ViewController.swift
//  cue
//
//  Created by Michael Hofstadter on 6/7/18.
//  Copyright © 2018 SoniaHof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var pinnedButtons: [UIButton]!
    
    
    @IBAction func handleSelection(_ sender: UIButton) {
        pinnedButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
            
            })
        }

    }
    @IBOutlet weak var upcomingTable: UITableView!
    

    @IBAction func upcomingTab(_ sender: UIButton) {
        upcomingTable.isHidden = !upcomingTable.isHidden
    }
    
}


