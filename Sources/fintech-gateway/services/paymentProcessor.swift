public struct PaymentProcessor { 
    private var finalStatus: TransactionStatus? = nil

    public init() {
        
        
    }

    mutating func Processor(paymentT: PaymentType) {
        switch paymentT {
        case .pix(let key):
            
            finalStatus = .approved
        case .card(_, _, let cvv):
            if cvv == "123" {
                finalStatus = .approved
            } else {
                
                finalStatus = .refused
            }
        case .ticket(_,):
            finalStatus = .pending
            
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
