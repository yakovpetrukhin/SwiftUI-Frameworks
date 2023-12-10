//
//  FrameworkDetail.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
//    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{

//            XDismissButton(isShowingSheet: $isShowingDetailView)
            
//            Spacer()
            
            FrameworkStack(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
                
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More ")
                Label("Learn More", systemImage: "book.fill")
            }
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundStyle(.yellow)
//            .buttonBorderShape(.roundedRectangle(radius: 20.0))
            .tint(.red)
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView,
               content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    
          
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[3])
        .preferredColorScheme(.dark)
}
