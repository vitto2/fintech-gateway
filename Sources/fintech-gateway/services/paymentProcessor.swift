public struct PaymentProcessor { 
    private var finalStatus: TransactionStatus? = nil

    public init() {
        
        
    }

    mutating func Processor(paymentT: PaymentType) {
        switch paymentT {
        case .pix(let key):
            print("O pagamento foi aprovado. Chave \(key)")
            finalStatus = .approved
        case .card(_, _, let cvv):
            if cvv == "123" {
                print("O pagamento foi aprovado! ")
                finalStatus = .approved
            } else {
                print("Pagamento recusado. Verifique os dados do cartão e tente novamente.")
                finalStatus = .refused
            }
        case .ticket(_,):
            finalStatus = .pending
            print("O seu pagamento está pendente. O seu pagamento tem até 3 dias para compensar.")
        case .balance:
            finalStatus = .approved
        }
        
        if let finalStatus {
            print("\(finalStatus.rawValue)")
        } else {
            print("Error")
        }
  }

}
