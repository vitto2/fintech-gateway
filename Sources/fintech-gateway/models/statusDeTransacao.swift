enum StatuDeTransacao: String { 
  case pendente = "Sua transação está pendente. Aguarde enquanto verificamos."
  case aprovado = "Seu pagamento foi aprovado!"
  case recusado = "Seu pagamento foi recusado. Verifique o seu limite e tente novamente."
  case estornado = "Seu pagamento foi estornado."
}