//
//  PlaceViewController.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

import RxSwift
import RxCocoa
import Reusable

class PlaceViewController: UIViewController {
    var viewModel: PlaceViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MAIN")
    }
    
    func bindViewModel() {
    }
    
}

extension PlaceViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.main
}

