//
//  MainBox.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 11/10/24.
//

import SwiftUI

struct MainBox: View {
    
    @State var isShowing: Bool = true
    
    var body: some View {
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
                    .foregroundStyle(isShowing ? Color.black : Color.white)
                Text("00")
                    .padding(.bottom, 15)
                    .foregroundStyle(isShowing ? Color.black : Color.white)
                Image(
                    systemName: isShowing ? "eye" : "eyebrow"
                    )
                    .onTapGesture {
                        withAnimation(.easeIn) {
                            isShowing.toggle()
                        }
                    }
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
                NavigationLink (
                    destination: ActivityView()
                ) {
                    VStack {
                        Image(systemName: "person.text.rectangle")
                            .font(.system(size: 25))
                            .padding(15)
                            .background(Color.LIGHTGRAY)
                            .clipShape(Circle())
                            .foregroundStyle(Color.black)
                        Text("Tu CLABE")
                            .font(.system(size: 15))
                            .foregroundStyle(Color.black)
                    }
                }
            }.padding(.bottom, 10)
            
            NavigationLink (
                destination: ActivityView()
            ) {
                Card()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    MainBox()
}
