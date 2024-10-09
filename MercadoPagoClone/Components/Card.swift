//
//  Card.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 08/10/24.
//

import SwiftUI

struct Card: View {
    var body: some View {
        HStack (spacing: 0) {
            ZStack {
                HStack {
                    VStack (
                        alignment: .leading
                    ) {
                        Text("MER")
                            .font(.system(size: 50))
                            .foregroundStyle(Color.FONTCARD)
                            .bold()
                        Text("CADO")
                            .font(.system(size: 50))
                            .foregroundStyle(Color.FONTCARD)
                            .bold()
                        Text("PAGO")
                            .font(.system(size: 50))
                            .foregroundStyle(Color.FONTCARD)
                            .bold()
                    }
                    Spacer()
                }
                    .frame(maxWidth: .infinity)
                    .frame(height: 150)
                
                VStack {
                    HStack {
                        Image("mastercard")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                        Image("mercado_pago")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                        Spacer()
                    }
                        .padding(.leading, 10)
                        .padding(.top, 15)
                        .frame(maxWidth: .infinity)
                    
                    Spacer()
                                        
                    HStack {
                        Text("Ir a mi tarjeta")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .bold()
                        Spacer()
                        Image(systemName: "greaterthan")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 15))
                    }
                        .padding(.horizontal, 10)
                        .padding(.bottom, 15)
                }
            }
                .background(Color.BGCARD_1)
                .frame(maxWidth: .infinity)
            
            VStack {
                Image(systemName: "creditcard")
                    .font(.system(size: 20))
                    .padding(15)
                    .clipShape(.rect(cornerRadius: 50))
                    .foregroundStyle(.white)
                Text("Tarjeta \ndigital")
                    .foregroundStyle(.white)
            }
                .padding(.horizontal, 35)
                .padding(.vertical, 25)
                .frame(height: 150)
                .background(Color.BGCARD_2)
        }
            .frame(maxWidth: .infinity)
            .frame(height: 150)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    Card()
}
