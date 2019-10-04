//
//  AppAssembler.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

import RxCocoa
import RxSwift

protocol AppAssembler {
    func resolve(window: UIWindow) -> AppViewModel
    func resolve(window: UIWindow) -> AppNavigatorType
    func resolve(window: UIWindow) -> AppUseCaseType
}

extension AppAssembler {
    func resolve(window: UIWindow) -> AppViewModel {
        return AppViewModel(navigator: resolve(window: window), useCase: resolve(window: window))
    }
}

extension AppAssembler where Self:Assembler {
    func resolve(window: UIWindow) -> AppUseCaseType {
        return AppUseCase()
    }
    
    func resolve(window: UIWindow) -> AppNavigatorType {
        return AppNaviagator(asssembler: self, window: window)
    }
}
