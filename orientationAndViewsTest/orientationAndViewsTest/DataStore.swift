//
//  DataStore.swift
//  orientationAndViewsTest
//
//  Created by Bamlak Deju on 9/22/23.
//

import Foundation

class DataStore: ObservableObject {
    
    @Published  var viewOne:Int = 0;
    @Published  var viewTwo:Int = 0;
    
    init(){
        self.loadData()
    }
    
    func loadData() {
        viewOne = 100;
        viewTwo = 0;
    }
    func increaseNum() {
        viewOne = viewOne + 100;
        viewTwo = viewTwo + 1;
    }
    func decreaseNum() {
        viewOne = viewOne - 100;
        viewTwo = viewTwo - 1;
    }
}
