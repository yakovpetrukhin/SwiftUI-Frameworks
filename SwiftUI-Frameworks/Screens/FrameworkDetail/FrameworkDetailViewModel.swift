//
//  FrameworkDetailViewModel.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-12-10.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingDetailView: Binding<Bool> // this is like @Binding but here we have t do it to work in the init
                                           // otherwise we'd have to unwrap this value
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
