//
//  ActivityCard.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 12/10/24.
//

import SwiftUI

struct ActivityCard: View {
    
    var iconCorp: String
    var nameCorp: String
    var iconCard: String
    var typeCard: String
    var total: String
    var type: String
    var date: String
    
    var body: some View {
        HStack (spacing: 15) {
            Image(iconCorp)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 0.5)
                )
            VStack (spacing: 5) {
                HStack {
                    Text(nameCorp)
                        .bold()
                        .font(.system(size: 15))
                    Spacer()
                    Text(total)
                        .font(.system(size: 15))
                }
                HStack {
                    Text(type)
                        .font(.system(size: 12))
                        .foregroundStyle(Color.gray)
                    Spacer()
                    Text(date)
                        .font(.system(size: 12))
                        .foregroundStyle(Color.gray)
                }
                HStack {
                    Image(iconCard)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.5)
                        )
                    Text(typeCard)
                        .font(.system(size: 12))
                        .foregroundStyle(Color.gray)
                    Spacer()
                }
            }
        }.frame(maxWidth: .infinity)
    }
}

#Preview {
    ActivityCard(
        iconCorp: "telcel",
        nameCorp: "Telcel",
        iconCard: "citi",
        typeCard: "Mastercard crédito",
        total: "-$ 2,339.96",
        type: "Compra",
        date: "9/oct"
    )
}
