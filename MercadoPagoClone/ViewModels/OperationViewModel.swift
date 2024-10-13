//
//  OperationViewModel.swift
//  MercadoPagoClone
//
//  Created by Sebastián Rubio on 12/10/24.
//

import Foundation

struct OperationViewModel{
    func getOperations() -> [Operation] {
        let operations: [Operation] = [
            Operation(id: 1, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 200.00", type: "Pago", date: "1/oct"),
            Operation(id: 2, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 150.00", type: "Pago", date: "2/oct"),
            Operation(id: 3, iconCorp: "mercado_libre", nameCorp: "Mercado Libre", iconCard: "scotia", typeCard: "Visa crédito", total: "-$ 950.50", type: "Compra", date: "3/oct"),
            Operation(id: 4, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 150.00", type: "Pago", date: "4/oct"),
            Operation(id: 5, iconCorp: "mercado_libre", nameCorp: "Mercado Libre", iconCard: "scotia", typeCard: "Visa crédito", total: "-$ 1,500.00", type: "Compra", date: "5/oct"),
            Operation(id: 6, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 100.00", type: "Pago", date: "6/oct"),
            Operation(id: 7, iconCorp: "mercado_libre", nameCorp: "Mercado Libre", iconCard: "scotia", typeCard: "Visa crédito", total: "-$ 2,275.00", type: "Compra", date: "7/oct"),
            Operation(id: 8, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 200.00", type: "Pago", date: "8/oct"),
            Operation(id: 9, iconCorp: "mercado_libre", nameCorp: "Mercado Libre", iconCard: "scotia", typeCard: "Visa crédito", total: "-$ 899.00", type: "Compra", date: "9/oct"),
            Operation(id: 10, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 150.00", type: "Pago", date: "10/oct"),
            Operation(id: 11, iconCorp: "mercado_libre", nameCorp: "Mercado Libre", iconCard: "scotia", typeCard: "Visa crédito", total: "-$ 325.00", type: "Compra", date: "11/oct")
        ]
        return operations
    }
}
