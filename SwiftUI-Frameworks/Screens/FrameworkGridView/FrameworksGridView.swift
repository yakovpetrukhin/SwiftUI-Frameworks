//
//  FrameworksGridView.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

struct FrameworksGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
//        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in // dont need: , id: \.id in args because frameworks conforms to identifiable
//                        NavigationLink(value: framework) {
//                            FrameworkStack(framework: framework)  
//                        }
                        FrameworkStack(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
//            .navigationDestination(for: Framework.self) { framework in
//                FrameworkDetail(framework: framework)
//
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView))
            }
        }
    }
}

#Preview {
    FrameworksGridView()
        .preferredColorScheme(.dark)
}
