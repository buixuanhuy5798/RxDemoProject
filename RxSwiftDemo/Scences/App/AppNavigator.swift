//
//  AppNavigator.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

import RxSwift
import RxCocoa

protocol AppNavigatorType {
    func toMain()
}

struct AppNaviagator: AppNavigatorType {
    
    unowned let asssembler: Assembler
    unowned let window: UIWindow
    
    func toMain() {
        let navigation = UINavigationController()
        let placeViewController: PlaceViewController = asssembler.resolve(navController: navigation)
        navigation.viewControllers = [placeViewController]
        window.rootViewController = navigation
    }
}
