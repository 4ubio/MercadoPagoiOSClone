//
//  Header.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 11/10/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
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
    }
}

#Preview {
    Header()
}
