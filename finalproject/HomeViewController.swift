//
//  HomeViewController.swift
//  finalproject
//
//  Created by Adham Maklda on 23.3.2017.
//  Copyright © 2017 Adham Maklda. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var schoolUpdatesTxtView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        schoolUpdatesTxtView.text = "Eli the king"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
