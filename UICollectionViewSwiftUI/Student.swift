//
//  Model.swift
//  UICollectionViewSwiftUI
//
//  Created by Thanh Sau on 20/01/2024.
//

import Foundation

struct Student: Identifiable {
    let name: String
    let age: Int
    
    var id: String = UUID().uuidString
}
