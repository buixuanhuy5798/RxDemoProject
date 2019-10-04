//
//  PlaceViewModel.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

import RxSwift
import RxCocoa
import MGArchitecture

struct PlaceViewModel {
    var usecase: PlaceUseCaseType
    var navigator: PlaceNavigatorType
}

extension PlaceViewModel: ViewModelType {
    struct Input {
    }
    
    struct Output {
    }
    
    func transform(_ input: PlaceViewModel.Input) -> PlaceViewModel.Output {
            return Output()
    }
}
