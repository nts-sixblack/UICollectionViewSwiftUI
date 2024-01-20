//
//  ContentView.swift
//  UICollectionViewSwiftUI
//
//  Created by Thanh Sau on 20/01/2024.
//

import SwiftUI
struct ContentView: View {
    
    var students = (0...10).map { _ in
        Student(name: randomString(length: 5), age: randomInt(min: 0, max: 10))
    }
    
    var body: some View {
        VStack {
            CollectionView(
                collections: students,
                scrollDirection: .vertical,
                contentSize: .fixed(.init(width: 170, height: 150)),
                itemSpacing: .init(mainAxisSpacing: 10, crossAxisSpacing: 0),
                rawCustomize: { uiCollectionView in
                    uiCollectionView.showsVerticalScrollIndicator = false
                },
                contentForData: { item in
                    CustomCell(student: item)
                })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).map { _ in letters.randomElement()! })
}

func randomInt(min: Int, max: Int) -> Int {
    return Int(arc4random_uniform(UInt32(max - min + 1))) + min
}
