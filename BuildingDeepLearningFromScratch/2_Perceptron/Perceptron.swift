//
//  Perceptron.swift
//  BuildingDeepLearningFromScratch
//
//  Created by オナガ・ハルキ on 2021/10/06.
//

import Foundation

class Perceptron {
    
    var x1: Double
    var x2: Double
    var x1Weight: Double
    var x2Weight: Double
    var bias: Double
    
    init(x1:Double, x2:Double, x1Weight:Double, x2Weight:Double, bias:Double) {
        self.x1 = x1
        self.x2 = x2
        self.x1Weight = x1Weight
        self.x2Weight = x2Weight
        self.bias = bias
    }
    
    func gate() -> Int {
        let sum = bias + (x1 * x1Weight) + (x2 * x2Weight)
        
        // x1とx1Weight、x2とx2Weightの積の和がbiasより大きければニューロンが発火して1を返す
        if sum <= 0 {
            return 0
        } else {
            return 1
        }
    }
    
}
