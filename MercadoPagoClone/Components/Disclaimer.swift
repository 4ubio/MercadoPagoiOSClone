//
//  Disclaimer.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 12/10/24.
//

import SwiftUI

struct Disclaimer: View {
    var body: some View {
        VStack {
            HStack {
                Text("Sebastián Rubio Quiroz")
                    .bold()
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 12))
                Spacer()
            }
            
            HStack {
                Text("Último ingreso Mercado Pago Standard: 6 jul 2023 • 18:35 hs.")
                    .bold()
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 12))
                Spacer()
            }
            
            Text("Mercado Pago Standard es un agregador de pagos que opera y administra la aplicación 'Mercado Pago'. Para acceder a los servicios relacionados con Mercado Pago Wallet, serás redireccionado al Canal de Instrucción o ambiente de dicha institución de fondos de pago electrónico. Mercado Standard permitirá a los Clientes de Mercado Pago Wallet consultar saldos, movimientos y realizar ciertas transferencias con cargo a sus cuentas de fondos de pago electrónico, a nombre y por cuenta de Mercado Pago Wallet.")
                .foregroundStyle(Color.gray)
                .font(.system(size: 12))
                .padding(.top, 10)
            
            Text("El 15% mostrado en la sección de Inicio y Apartados en esta pantalla se compone de: (i) la tasa de rendimiento del fondo de inversión administrado por Grupo Bursátil Mexicano, S.A. de C.V. Casa de Bolsa; y (ii) el porcentaje adicional que te brinda el beneficio otorgado por MP Agregador, S. de R.L. de C.V. Para más información consulta la sección de Detalle de Ganancias en esta aplicación móvil.")
                .foregroundStyle(Color.gray)
                .font(.system(size: 12))
                .padding(.top, 10)
            
            HStack {
                Text("Términos y condiciones.")
                    .bold()
                    .foregroundStyle(Color.BG_1)
                    .font(.system(size: 12))
                Spacer()
            }.padding(.top, 10)
            
        }
    }
}

#Preview {
    Disclaimer()
}
