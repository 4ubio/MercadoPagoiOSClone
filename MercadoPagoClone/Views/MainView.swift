//
//  MainView.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 09/10/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack (spacing: 0) {
            
            //Header
            HStack {
                Text("SR")
                    .padding(10)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 30))
                
                Text("Hola, Sebastián")
                    .foregroundStyle(Color.white)
                    .bold()
                    .padding(.trailing, 5)
                
                Image(systemName: "greaterthan")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 15))
                
                Spacer()
                
                Image(systemName: "bell")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 25))
                
                HStack {
                    Image(systemName: "questionmark.circle")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 20))
                    
                    Text("Ayuda")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 15))
                }                        .padding(7)
                .background(Color.BG_2)
                .clipShape(.rect(cornerRadius: 10))
                
            }
            .padding(.top, 55)
            .padding(.bottom, 10)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            
            ScrollView (showsIndicators: false) {
    
                //Box 1
                VStack (spacing: 8) {
                    HStack {
                        Text("En Mercado Pago")
                            .bold()
                        Image(systemName: "info.circle")
                        Spacer()
                        Image(systemName: "greaterthan")
                            .foregroundStyle(Color.BG_1)
                    }
                    
                    HStack {
                        Text("$ 8,953")
                            .bold()
                            .font(.system(size: 35))
                        Text("00")
                            .padding(.bottom, 15)
                        Image(systemName: "eye")
                            .padding(5)
                            .font(.system(size: 23))
                            .padding(5)
                            .background(Color.LIGHTGRAY)
                            .clipShape(Circle())
                        Spacer()
                    }
                    
                    HStack {
                        Text("🔥 Activa tus ganancias del 15%")
                            .foregroundStyle(Color.white)
                        Spacer()
                        Image(systemName: "greaterthan")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 15))
                    }
                    .padding(10)
                    .background(Color.GREEN_OFFER)
                    .clipShape(.rect(cornerRadius: 10))
                    
                    Divider().padding(.vertical, 10)
    
                    HStack (spacing: 20) {
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 25))
                                .padding(15)
                                .background(Color.LIGHTGRAY)
                                .clipShape(Circle())
                            Text("Ingresar")
                                .font(.system(size: 15))
                        }
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 25))
                                .padding(15)
                                .background(Color.LIGHTGRAY)
                                .clipShape(Circle())
                            Text("Transferir")
                                .font(.system(size: 15))
                        }
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 25))
                                .padding(15)
                                .background(Color.LIGHTGRAY)
                                .clipShape(Circle())
                            Text("Retirar")
                                .font(.system(size: 15))
                        }
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 25))
                                .padding(15)
                                .background(Color.LIGHTGRAY)
                                .clipShape(Circle())
                            Text("Tu CLABE")
                                .font(.system(size: 15))
                        }
                    }.padding(.bottom, 10)
                    
                    Card()
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 10))
                
                Offer(
                    icon: "dollarsign",
                    title: "Créditos",
                    desc: "Obtén hasta $ 18,484 con un Préstamo Personal."
                ).padding(.top, 15)
                
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
                
            }
            .padding(.horizontal)
            .frame(maxHeight: .infinity)
            .shadow(radius: 5, x: 0, y: 5)
            
            //NavBar
            NavBar()
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

#Preview {
    MainView()
}
