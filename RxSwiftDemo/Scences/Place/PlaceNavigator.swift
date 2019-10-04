//
//  PlaceNavigator.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

import RxCocoa
import RxSwift
import MGArchitecture

protocol PlaceNavigatorType {
}

struct PlaceNavigator: PlaceNavigatorType {
    var assembler: Assembler
    var navigation: UINavigationController
}
