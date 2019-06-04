def find_late_invoice
  late = Set.new

  Invoice.all.each do |invoice|
    if invoice.status == 'Unpaid' && invoices.due_date > DateTime.now
      late.add(invoice.subscriber_id)
    end
  end
  late
end

def find_late_subscribers(late_invoices)
  late_subscribers = Array.new

  Subscriber.all.each do |subscriber|

    if late_invoices.include?(subscriber.id)
      late_subscribers << subscriber
    end
  end
  late_subscribers
end