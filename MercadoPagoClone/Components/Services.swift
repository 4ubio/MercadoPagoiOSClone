//
//  Services.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 11/10/24.
//

import SwiftUI

struct Services: View {
    var body: some View {
        VStack (spacing: 20) {
            HStack (spacing: 15) {
                NavigationLink (
                    destination: PhoneView()
                ) {
                    VStack {
                        Image("recarga")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .foregroundStyle(Color.BG_1)
                            .padding(12)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.3)
                            )
                        Text("Recargar \ncelular")
                            .font(.system(size: 10))
                            .foregroundStyle(Color.black)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                    }.frame(maxWidth: .infinity)
                }
                VStack {
                    Image("servicios")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundStyle(Color.BG_1)
                        .padding(12)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Pagar \nservicios")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
                VStack {
                    Image("tag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(12)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Recargar \nTAG")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
                VStack {
                    Image("extranjero")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                        .padding(10)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Dinero del \nextranjero")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
            }
            
            HStack (spacing: 15) {
                VStack {
                    Image("transporte")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(12)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Recargar \ntransporte")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
                VStack {
                    Image("cobrar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .foregroundStyle(Color.NAVYBLUE)
                        .padding(12)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Empezar \na cobrar")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
                VStack {
                    Image(systemName: "party.popper.fill")
                        .foregroundStyle(Color.BG_1)
                        .font(.system(size: 25))
                        .padding(10)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                        .overlay(
                            Text("GRATIS")
                                .bold()
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .background(Color.black)
                                .foregroundStyle(Color.white)
                                .font(.system(size: 8))
                                .clipShape(.rect(cornerRadius: 30))
                                .padding(.top, 40)
                        )
                    Text("Terminal \nBlue")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
                VStack {
                    Image(systemName: "plus")
                        .foregroundStyle(Color.gray)
                        .font(.system(size: 25))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Ver \nmás")
                        .font(.system(size: 10))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    Services()
}
