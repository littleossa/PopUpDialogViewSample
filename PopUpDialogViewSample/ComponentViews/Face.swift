//
//  Face.swift
//  PopUpDialogViewSample
//
//  Created by 平岡修 on 2022/08/25.
//

import SwiftUI

struct Face: View {
    
    var body: some View {
        VStack {
            HStack {
                EyeWithEyebrow()
                EyeWithEyebrow()
            }
            Image(systemName: "nose")
            Spacer()
                .frame(height: 5)
            Image(systemName: "mouth")
                .font(.system(size: 24,
                              weight: .regular,
                              design: .default))
        }
    }
}

struct EyeWithEyebrow: View {
    
    var body: some View {
        VStack {
            Image(systemName: "chevron.compact.up")
                .font(.system(size: 24,
                              weight: .bold,
                              design: .default))
            Image(systemName: "eye")
        }
    }
}


struct Face_Previews: PreviewProvider {
    static var previews: some View {
        Face()
        EyeWithEyebrow()
    }
}
