//
//  AFButton.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundStyle(.white)
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10))    }
}

#Preview {
    AFButton(title: "Test Title")
}
