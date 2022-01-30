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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
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
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggle the swifth in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    // MARK: = SECTION 3
                    GroupBox {
                        // CONTENT
                        SettingsRowView(name: "Developer", content: "Firdavs Bagirov")
                        SettingsRowView(name: "Designer", content: "Robert PEtras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "GitHum", linkLabel: "firdavsbagirov", linkDestination: "github.com/firdavsbagirov")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Verstion", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

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
