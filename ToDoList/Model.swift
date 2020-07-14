//
//  Model.swift
//  ToDoList
//
//  Created by MacBook Air on 27.05.2020.
//  Copyright © 2020 VardanMakhsudyan. All rights reserved.
//

import Foundation

var mortalKombat = ["Scorpion","Sub-Zero","Raiden","Goro","Liu Kang","Johnny Cage","Fujin"]


func remove(at index: Int) {
    mortalKombat.remove(at: index)
}

func add(name: String) {
    mortalKombat.append(name)
}
