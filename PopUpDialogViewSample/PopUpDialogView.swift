//
//  PopUpDialogView.swift
//  PopUpDialogViewSample
//
//  Created by littleossa on 2022/08/24.
//

import SwiftUI

// MARK: - initializer
extension PopUpDialogView {
    
    init(isPresented: Binding<Bool>,
         isEnabledToCloseByBackgroundTap: Bool = true,
         @ViewBuilder _ content: () -> Content) {
        _isPresented = isPresented
        self.isEnabledToCloseByBackgroundTap = isEnabledToCloseByBackgroundTap
        self.content = content()
    }
}

struct PopUpDialogView<Content: View>: View {
    
    @Binding var isPresented: Bool
    private let content: Content
    private let isEnabledToCloseByBackgroundTap: Bool
    
    var body: some View {
        
        GeometryReader { proxy in
            let dialogWidth = proxy.size.width * 0.75
            
            ZStack {
                
                BackgroundView(color: .gray.opacity(0.7))
                    .onTapGesture {
                        if isEnabledToCloseByBackgroundTap {
                            withAnimation {
                                isPresented = false
                            }
                        }
                    }
                
                content
                    .frame(width: dialogWidth)
                    .padding()
                    .padding(.top, 24)
                    .background(.white)
                    .cornerRadius(12)
                    .overlay(alignment: .topTrailing) {
                        
                        CloseButton(fontSize: 24,
                                    weight: .bold,
                                    color: .gray.opacity(0.7)) {
                            withAnimation {
                                isPresented = false
                            }
                        }
                        .padding(4)
                    }
            }
        }
    }
}

struct PopUpDialogView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpDialogView(isPresented: .constant(true)) {
            Text("Something")
        }
    }
}
