//
//  Tips.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 11/10/24.
//

import SwiftUI

struct Tips: View {
    var body: some View {
        VStack {
            HStack (spacing: 15) {
                Image(systemName: "gift")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 20))
                    .padding(10)
                    .background(Color.BG_1)
                    .clipShape(Circle())
                Text("Invita a todos al 15%")
                    .font(.system(size: 15))
                Spacer()
            }.padding(.horizontal, 20)
            
            Divider().frame(height: 0.5).overlay(Color.gray).padding(.vertical, 5)
            
            HStack (spacing: 15) {
                Image(systemName: "dollarsign.square")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 20))
                    .padding(10)
                    .background(Color.BG_1)
                    .clipShape(Circle())
                Text("Gana hasta $400 con Point y más")
                    .font(.system(size: 15))
                Spacer()
            }.padding(.horizontal, 20)
            
            Divider().frame(height: 0.5).overlay(Color.gray).padding(.vertical, 5)
            
            HStack (spacing: 15) {
                Image(systemName: "singaporedollarsign.bank.building")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 17))
                    .padding(10)
                    .background(Color.BG_1)
                    .clipShape(Circle())
                Text("Hasta $30,000 al mes te esperan")
                    .font(.system(size: 15))
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    Tips()
}
