//
//  MainViewController.swift
//  Frame
//
//  Created by hirokiumatani on 2016/05/28.
//  Copyright © 2016年 Pear. All rights reserved.
//

import UIKit

struct Constants {
    static let BASIC_BACKGROUND_COLOR: UIColor = .blackColor()
}
class MainViewController: UIViewController {

    override func loadView() {
        super.loadView()
        loadXib()
        setBasicBackGroundColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

private extension MainViewController {

    func getClassName() -> String {
        return NSStringFromClass(self.dynamicType)
            .componentsSeparatedByString(".").last! as String
    }
    
    func loadXib() {
        let nib: UINib = UINib(nibName: getClassName(), bundle: nil)
        let view = nib.instantiateWithOwner(self, options: nil).first as? UIView
        self.view = view
    }
    
    func setBasicBackGroundColor() {
        view.backgroundColor = Constants.BASIC_BACKGROUND_COLOR
    }
}
