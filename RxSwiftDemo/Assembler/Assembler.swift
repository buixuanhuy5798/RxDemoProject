//
//  Assembler.swift
//  RxSwiftDemo
//
//  Created by Bùi Xuân Huy on 10/4/19.
//  Copyright © 2019 huy. All rights reserved.
//

protocol Assembler: class,
                    AppAssembler,
                    PlaceAssembler {
}

final class DafaultAssembler: Assembler {
}
