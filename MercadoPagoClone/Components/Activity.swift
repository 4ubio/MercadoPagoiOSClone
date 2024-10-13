//
//  Activity.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 12/10/24.
//

import SwiftUI

struct Activity: View {
    
    @State var operationViewModel = OperationViewModel().getOperations()
    
    var body: some View {
        VStack (spacing: 25) {
            HStack (spacing: 15) {
                Text("Tu última actividad")
                    .bold()
                    .font(.system(size: 20))
                Spacer()
                
                NavigationLink (destination: ActivityView()) {
                    Text("Ver todo")
                        .bold()
                        .font(.system(size: 17))
                        .foregroundStyle(Color.BG_1)
                    Image(systemName: "greaterthan")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.BG_1)
                }
            }
            
            ForEach(
                operationViewModel.sorted(by: { $0.id > $1.id }).prefix(3),
                id: \.self.id
            ) { operation in
                ActivityCard(
                    iconCorp: operation.iconCorp,
                    nameCorp: operation.nameCorp,
                    iconCard: operation.iconCard,
                    typeCard: operation.typeCard,
                    total: operation.total,
                    type: operation.type,
                    date: operation.date
                )
            }
            
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    Activity()
}
