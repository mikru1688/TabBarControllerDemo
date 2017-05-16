//
//  DetailViewController.swift
//  TabBarControllerDemo
//
//  Created by Frank.Chen on 2017/5/16.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var movieEvaluation: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = self.movieEvaluation
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
