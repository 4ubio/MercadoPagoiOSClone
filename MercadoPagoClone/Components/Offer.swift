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
        VStack (spacing: 15) {
            HStack (spacing: 20) {
                Image(systemName: icon)
                    .font(.system(size: 15))
                Text(title)
                    .bold()
                    .font(.system(size: 20))
                Spacer()
                Image(systemName: "greaterthan")
                    .foregroundStyle(Color.BG_1)
                    .font(.system(size: 15))
            }
            HStack {
                Text(desc)
                    .font(.system(size: 13))
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
        icon: "dollarsign", title: "Créditos", desc: "Obtén hasta $ 18,484 con un Préstamo Personal."
    )
}
