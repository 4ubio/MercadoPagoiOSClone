//
//  ActivityView.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 12/10/24.
//

import SwiftUI

struct ActivityView: View {
    
    @State var operationViewModel = OperationViewModel().getOperations()
    
    var body: some View {
        VStack (spacing: 0) {
            ScrollView (showsIndicators: false) {
                
                HStack (spacing: 15) {
                    Image("mercado_pago")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    VStack (alignment: .leading, spacing: 5) {
                        Text("Tu CLABE en Mercado Pago")
                            .bold()
                            .font(.system(size: 20))
                        Text("524421897993523320")
                            .bold()
                            .font(.system(size: 15))
                    }
                    Spacer()
                }.padding(.vertical, 20)
                
                ForEach(
                    operationViewModel.sorted(by: { $0.id > $1.id }),
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
                }.padding(.top, 10)
                
                VStack{}.padding(15)
                
            }.padding(.horizontal, 20)
            
            //NavBar
            NavBar(selected: "Actividad")
        }
        .ignoresSafeArea(edges: .bottom)
        .background(Color.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .navigationTitle("Actividad")
        .toolbarBackground(Color.BG_1, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    ActivityView()
}
