//
//  FrameworkStack.swift
//  SwiftUI-Frameworks
//
//  Created by Yakov Petrukhin on 2023-11-28.
//

import SwiftUI

import SwiftUI

struct FrameworkStack: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit() //allows the text to scale/shrink
                .minimumScaleFactor(0.6) //sets the minimum scaling (50%  in this case)
//                .foregroundStyle(.white)
        }
        .padding()
//        .background(.black)
    }
}

#Preview {
    FrameworkStack(framework: MockData.frameworks[5])
}
