var payment = PaymentProcessor()

let pagamentos: [PaymentType] = [
    .pix(keyPix: "email@cliente.com"),
    .card(num: "1234-5678-9012-3456",validity: "10/12/2029", cvv: "123"),
    .ticket(barcode: "84670000001-9"),
    .balance
]

for pagamento in pagamentos {
    payment.Processor(paymentT: pagamento)
}

