//
//  MainView.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 09/10/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationStack {
            VStack (spacing: 0) {
                //Header
                Header()
                
                ScrollView (showsIndicators: false) {
                    //Main Box
                    MainBox()
                    
                    Offer(
                        icon: "dollarsign",
                        title: "Créditos",
                        desc: "Obtén hasta $ 18,484 con un Préstamo Personal."
                    ).padding(.top, 15)
                    
                    //Services Box
                    Services().padding(.top, 15)
                    
                    Offer(
                        icon: "dollarsign.bank.building.fill",
                        title: "Apartados",
                        desc: "Organiza tus finanzas y alcanza tus objetivos."
                    ).padding(.top, 15)
                    
                    Offer(
                        icon: "bitcoinsign",
                        title: "Criptomonedas",
                        desc: "Compra Bitcoin, Ethereum y más a partir de $ 1."
                    ).padding(.top, 15)
                    
                    //Tips
                    Tips().padding(.top, 15)
                    
                    //Activity
                    Activity().padding(.top, 15)
                    
                    //Disclaimer
                    Disclaimer()
                        .padding(.top, 15)
                        .padding(.bottom, 30)
                    
                }
                .shadow(radius: 5, x: 0, y: 2)
                .padding(.horizontal)
                .frame(maxHeight: .infinity)
                
                //NavBar
                NavBar(selected: "Inicio")
            }
            .ignoresSafeArea()
            .background(LinearGradient(
                gradient: Gradient(
                    colors: [Color.BG_1, Color.BG_3]),
                startPoint: .top,
                endPoint: .bottom
            ))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    MainView()
}
