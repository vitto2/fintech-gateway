public enum TransactionStatus: String { 
  case pending = "Sua transação está pendente. Aguarde enquanto verificamos."
  case approved = "Seu pagamento foi aprovado!"
  case refused = "Seu pagamento foi recusado. Verifique o seu limite e tente novamente."
  case reversed = "Seu pagamento foi estornado."
}