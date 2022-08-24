//
//  BackgroundView.swift
//  PopUpDialogViewSample
//
//  Created by 平岡修 on 2022/08/25.
//

import SwiftUI

struct BackgroundView: View {
    
    let color: Color
    
    var body: some View {
        Rectangle()
            .fill(color)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(color: .gray)
    }
}
