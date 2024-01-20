//
//  CustomCell.swift
//  UICollectionViewSwiftUI
//
//  Created by Thanh Sau on 20/01/2024.
//

import Foundation
import SwiftUI

struct CustomCell: View {
    
    var student: Student
    
    var body: some View {
        ZStack(alignment: .center) {
            Text(student.name)
                .font(.system(size: 24))
                .fontWeight(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.cornerRadius(14))
    }
}
