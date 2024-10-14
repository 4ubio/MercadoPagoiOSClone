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
            HStack {
                NavigationLink (
                    destination: PhoneView()
                ) {
                    VStack {
                        Image(systemName: "iphone")
                            .foregroundStyle(Color.BG_1)
                            .font(.system(size: 35))
                            .padding(15)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.3)
                            )
                        Text("Recargar \ncelular")
                            .font(.system(size: 15))
                            .foregroundStyle(Color.black)
                            .lineLimit(2)
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "text.document")
                        .foregroundStyle(Color.BG_1)
                        .font(.system(size: 35))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Pagar \nservicios")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: "car")
                        .foregroundStyle(Color.BG_1)
                        .font(.system(size: 35))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Recargar \nTAG")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: "network")
                        .foregroundStyle(Color.MAGENT)
                        .font(.system(size: 35))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Dinero del \nextranjero")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
            }
            
            HStack {
                VStack {
                    Image(systemName: "person.text.rectangle")
                        .foregroundStyle(Color.BG_1)
                        .font(.system(size: 35))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Recargar \ntransporte")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: "dollarsign.square")
                        .foregroundStyle(Color.BG_1)
                        .font(.system(size: 35))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Empezar \na cobrar")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: "party.popper.fill")
                        .foregroundStyle(Color.BG_1)
                        .font(.system(size: 35))
                        .padding(10)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Terminal \nBlue")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                Spacer()
                VStack {
                    Image(systemName: "plus")
                        .foregroundStyle(Color.gray)
                        .font(.system(size: 35))
                        .padding(15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.3)
                        )
                    Text("Ver \nmás")
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
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
