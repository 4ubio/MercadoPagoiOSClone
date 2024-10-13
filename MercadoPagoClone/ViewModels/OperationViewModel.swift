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
            Operation(id: 1, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 2,339.96", type: "Compra", date: "9/oct"),
            Operation(id: 2, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 2,339.96", type: "Compra", date: "9/oct"),
            Operation(id: 3, iconCorp: "telcel", nameCorp: "Telcel", iconCard: "citi", typeCard: "Mastercard crédito", total: "-$ 2,339.96", type: "Compra", date: "9/oct")
        ]
        return operations
    }
}
