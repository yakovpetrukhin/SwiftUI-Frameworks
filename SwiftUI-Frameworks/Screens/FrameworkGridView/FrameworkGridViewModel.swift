//
//  FrameworkGridViewModel.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject { //  if the class won't have any children/subclasses mark
                                                      //  it as final for performance and safety
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
//    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
}
