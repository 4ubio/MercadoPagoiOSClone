//
//  MainView.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 09/10/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            ScrollView {
                
                //NavBar
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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom, 8)
                
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
                    .background(Color.green)
                    .clipShape(.rect(cornerRadius: 10))
                    
                    Divider().padding(.vertical, 10)
    
                    HStack (spacing: 20) {
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 20))
                                .padding(15)
                                .background(Color.lightgray)
                                .clipShape(.rect(cornerRadius: 50))
                            Text("Ingresar")
                        }
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 20))
                                .padding(15)
                                .background(Color.lightgray)
                                .clipShape(.rect(cornerRadius: 50))
                            Text("Transferir")
                        }
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 20))
                                .padding(15)
                                .background(Color.lightgray)
                                .clipShape(.rect(cornerRadius: 50))
                            Text("Retirar")
                        }
                        VStack {
                            Image(systemName: "creditcard")
                                .font(.system(size: 20))
                                .padding(15)
                                .background(Color.lightgray)
                                .clipShape(.rect(cornerRadius: 50))
                            Text("Tu CLABE")
                        }
                    }.padding(.bottom, 10)
                    
                    Card()
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 10))
                
            }
            .padding()
            .padding(.top, 55)
            
        }
        .ignoresSafeArea()
        .background(LinearGradient(
                    gradient: Gradient(
                    colors: [Color.BG_1, Color.white]),
                    startPoint: .top,
                    endPoint: .bottom
        ))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
             
    }
}

#Preview {
    MainView()
}
