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
        VStack (spacing: 5) {
            HStack {
                Text("En Mercado Pago")
                    .bold()
                    .font(.system(size: 15))
                Image(systemName: "info.circle")
                    .font(.system(size: 15))
                Spacer()
                Image(systemName: "greaterthan")
                    .foregroundStyle(Color.BG_1)
                    .font(.system(size: 15))
            }
            
            HStack {
                Text("$ 8,953")
                    .bold()
                    .font(.system(size: 30))
                    .foregroundStyle(isShowing ? Color.black : Color.white)
                Text("00")
                    .padding(.bottom, 10)
                    .font(.system(size: 15))
                    .foregroundStyle(isShowing ? Color.black : Color.white)
                Image(
                    isShowing ? "eye" : "closedeye"
                    )
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .onTapGesture {
                        withAnimation(.easeIn) {
                            isShowing.toggle()
                        }
                    }
                    .padding(7)
                    .background(Color.LIGHTGRAY)
                    .clipShape(Circle())
                Spacer()
            }
            
            HStack {
                Text("🔥 Activa tus ganancias del 15%")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 15))
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
                    Image("ingresar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(12)
                        .background(Color.LIGHTGRAY)
                        .clipShape(Circle())
                    Text("Ingresar")
                        .font(.system(size: 12))
                }.frame(maxWidth: .infinity)
                VStack {
                    Image("transferir")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(12)
                        .background(Color.LIGHTGRAY)
                        .clipShape(Circle())
                    Text("Transferir")
                        .font(.system(size: 12))
                }.frame(maxWidth: .infinity)
                VStack {
                    Image("retirar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(12)
                        .background(Color.LIGHTGRAY)
                        .clipShape(Circle())
                    Text("Retirar")
                        .font(.system(size: 12))
                }.frame(maxWidth: .infinity)
                NavigationLink (
                    destination: ActivityView()
                ) {
                    VStack {
                        Image("id")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .padding(12)
                            .background(Color.LIGHTGRAY)
                            .clipShape(Circle())
                            .foregroundStyle(Color.black)
                        Text("CLABE")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.black)
                    }.frame(maxWidth: .infinity)
                }
            }
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity)
            
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
