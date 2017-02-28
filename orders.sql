SELECT
o.`id_order` as "order_id"
,cs.`id_customer` as "customer_id"
,concat( cs.`firstname`,' ', cs.`lastname`) as "customer"
,concat(ad.`address1`,', ',ad.`address2`, ', ',ad.`postcode`) as "delivery_address",
ad.`phone` as "phone",
o.`reference` as "order_reference",
o.`gift` as "is_gift",
o.`gift_message` as "gift_message",
o.`invoice_date`,
o.`delivery_date`
FROM `ps_orders` o
join `ps_customer` cs on o.`id_customer`=cs.`id_customer`
join `ps_address` ad on o.`id_address_delivery`=ad.`id_address`
order by cs.`firstname`,cs.`lastname`,o.`id_order`
