//
//  Offer.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 10/10/24.
//

import SwiftUI

struct Offer: View {
    
    var icon: String
    var title: String
    var desc: String
    
    var body: some View {
        VStack (spacing: 10) {
            HStack (spacing: 10) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                Text(title)
                    .bold()
                    .font(.system(size: 15))
                Spacer()
                Image(systemName: "greaterthan")
                    .foregroundStyle(Color.BG_1)
                    .font(.system(size: 15))
            }
            HStack {
                Text(desc)
                    .font(.system(size: 12))
                Spacer()
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    Offer(
        icon: "creditos", title: "Créditos", desc: "Obtén hasta $ 18,484 con un Préstamo Personal."
    )
}
