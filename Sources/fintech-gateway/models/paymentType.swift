enum PaymentType { 
  case pix(keyPix: String)
  case card(num: String, validity: String, cvv: String)
  case ticket(barcode: String) //boleto
}