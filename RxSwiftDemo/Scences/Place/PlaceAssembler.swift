//
//  PlaceAssembler.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

import RxSwift
import RxCocoa

protocol PlaceAssembler {
    func resolve(navController: UINavigationController) -> PlaceViewController
    func resolve(navController: UINavigationController) -> PlaceViewModel
    func resolve(navController: UINavigationController) -> PlaceNavigatorType
    func resolve(navController: UINavigationController) -> PlaceUseCaseType
}

extension PlaceAssembler where Self: DafaultAssembler {
    
    func resolve(navController: UINavigationController) -> PlaceViewController {
        let controller = PlaceViewController.instantiate()
        return controller
    }
    
    func resolve(navController: UINavigationController) -> PlaceNavigatorType {
        return PlaceNavigator(assembler: self, navigation: navController)
    }
    
    func resolve(navController: UINavigationController) -> PlaceUseCaseType {
        return PlaceUseCase()
    }
    
    func resolve(navController: UINavigationController) -> PlaceViewModel {
        return PlaceViewModel(usecase: resolve(navController: navController),
                              navigator: resolve(navController: navController))
    }
}



