enum TipoDePagamento { 
  case pix(chavePix: String)
  case cartao(numero: String, validade: String, cvv: String)
  case boleto(codigoDeBarra: String)
  case saldo
}