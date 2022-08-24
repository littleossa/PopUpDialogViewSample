//
//  CloseButton.swift
//  PopUpDialogViewSample
//
//  Created by 平岡修 on 2022/08/25.
//

import SwiftUI

struct CloseButton: View {
    
    let fontSize: CGFloat
    let weight: Font.Weight
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "xmark.circle")
        }
        .font(.system(size: fontSize,
                      weight: weight,
                      design: .default))
        .foregroundColor(color)
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton(fontSize: 24,
                    weight: .bold,
                    color: .gray) {}
    }
}
