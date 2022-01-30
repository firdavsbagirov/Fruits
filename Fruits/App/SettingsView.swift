//
//  SettingsView.swift
//  Fruits
//
//  Created by Firdavs Bagirov on 28/01/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: = SECTION 1
                    GroupBox {
                        // CONTENT
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassuim, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    }
                    
                    
                    // MARK: = SECTION 2
                    
                    // MARK: = SECTION 3
                    
                } //: VSTACK
                .navigationTitle("Settings")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                        
                    }
                })
                .padding()
            } //: SCROLL
        } //: NAVIGATION
        .navigationBarTitleDisplayMode(.large)
        
    }
}

// MARK: PRIVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
