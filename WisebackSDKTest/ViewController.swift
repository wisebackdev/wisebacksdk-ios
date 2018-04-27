//
//  ViewController.swift
//  WisebackSDKTest
//
//  Created by Ali Varli on 19.04.2018.
//  Copyright © 2018 Wise Bilisim Teknolojileri. All rights reserved.
//

import UIKit
import WisebackSDK

class ViewController: UIViewController, WiseViewDelegate {
    var wview:WiseView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showBtnClick(_ sender: Any) {
        wview = WiseView(frame: self.view.bounds)
        wview.delegateWise = self
        wview.showForm(formID: "VgcfNL", targetView: self.view, animation: .Up)
    }
    
    // MARK: - Delegate methods
    func startLoading() {
        print("Loading form started")
    }
    func formOpened() {
        print("Form opened")
    }
    func errorLoading(error: Error) {
        print("An error occurred: \(error.localizedDescription)")
    }
    func formClosed() {
        print("Form closed")
    }
}

