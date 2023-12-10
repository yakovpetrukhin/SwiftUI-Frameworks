//
//  FrameworkDetail.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
//    var framework: Framework
//    @Binding var isShowingDetailView: Bool
//    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{

            XDismissButton(isShowingSheet: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameworkStack(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
                
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More ")
//                Label("Learn More", systemImage: "book.fill")
//            }
////            .buttonStyle(.bordered)
//            .buttonStyle(.borderedProminent)
//            .controlSize(.large)
////            .foregroundStyle(.yellow)
////            .buttonBorderShape(.roundedRectangle(radius: 20.0))
//            .tint(.red)
            
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView,
//               content: {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        })
    
          
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.frameworks[1], isShowingDetailView: .constant(false)))
        .preferredColorScheme(.dark)
}
