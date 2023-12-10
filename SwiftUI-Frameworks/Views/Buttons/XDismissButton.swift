//
//  XDismissButton.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingSheet: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingSheet = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingSheet: .constant(false))
}
