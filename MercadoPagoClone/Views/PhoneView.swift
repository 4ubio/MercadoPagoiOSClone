//
//  PhoneView.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 13/10/24.
//

import SwiftUI

struct PhoneView: View {
    
    var companies = ["Telcel", "Movistar", "AT&T", "Unefon", "Claro"]
    @State private var selectedCompany: String = "Telcel"
    
    var types = ["$20", "$50", "$100", "$150", "$200"]
    @State private var selectedType: String = "$150"
    
    var cards = ["Citi Mastercard Crédito", "Scotiabank Visa Crédito"]
    @State private var selectedCard: String = "Citi Mastercard Crédito"
    
    @State private var phoneNumber: String = ""
    @State private var name: String = ""
    
    @State private var showMessage = false
    
    var title: String {
        return (
            phoneNumber != "" &&
            phoneNumber.count == 10 &&
            name != ""
        )   ? "Recarga completa"
            : "Faltan campos por llenar"
    }
    
    var message: String {
        return (
            phoneNumber != "" &&
            phoneNumber.count == 10 &&
            name != ""
        )   ? "Recarga enviada a \(name) (\(phoneNumber))"
            : "Por favor, llene todos los campos antes de continuar."
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            
            Text("Elige una compañía:")
                .bold()
                .font(.system(size: 15))
                .padding(.top, 35)
                .padding(.horizontal, 20)
            
            Picker("Companies", selection: $selectedCompany) {
                ForEach(companies, id: \.self) { company in
                    Text(company)
                }
            }
            .tint(Color.BG_1)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .stroke(Color.BG_1, lineWidth: 2)
            )
            .padding(.horizontal, 20)
            
            Text("Elige un tipo de recaga:")
                .bold()
                .font(.system(size: 15))
                .padding(.horizontal, 20)
            
            Picker("Types", selection: $selectedType) {
                ForEach(types, id: \.self) { type in
                    Text(type)
                }
            }
            .tint(Color.BG_1)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .stroke(Color.BG_1, lineWidth: 2)
            )
            .padding(.horizontal, 20)
            
            Text("Número de celular (10 dígitos):")
                .bold()
                .font(.system(size: 15))
                .padding(.horizontal, 20)
            
            TextField(
                "10 dígitos",
                text: $phoneNumber
            )
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.BG_1, lineWidth:2)
            )
            .padding(.horizontal, 20)
            .keyboardType(.numberPad)
            
            Text("Ejemplo: 8334279418")
                .font(.system(size: 10))
                .padding(.horizontal, 20)
                .foregroundStyle(Color.gray)
            
            Text("Nombre del propietario:")
                .bold()
                .font(.system(size: 15))
                .padding(.horizontal, 20)
            
            TextField(
                "Nombre completo",
                text: $name
            )
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.BG_1, lineWidth:2)
            )
            .padding(.horizontal, 20)
            
            Text("Elige una tarjeta:")
                .bold()
                .font(.system(size: 15))
                .padding(.horizontal, 20)
            
            Picker("Cards", selection: $selectedCard) {
                ForEach(cards, id: \.self) { card in
                    Text(card)
                }
            }
            .tint(Color.BG_1)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .stroke(Color.BG_1, lineWidth:2)
            )
            .padding(.horizontal, 20)
            
            Button(action: {
                showMessage = true
            }) {
                Text("Completar recarga")
                    .bold()
                    .font(.system(size: 15))
            }
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .foregroundStyle(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.BG_1)
            )
            .padding(.horizontal, 20)
            
            .alert(isPresented: $showMessage) {
                Alert(
                    title: Text(title),
                    message: Text(message)
                )
            }
                
            Spacer()
            
            //NavBar
            NavBar(selected: "Inicio")
        }
        .ignoresSafeArea(edges: .bottom)
        .background(Color.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .navigationTitle("Recargar celular")
        .toolbarBackground(Color.BG_1, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    PhoneView()
}
