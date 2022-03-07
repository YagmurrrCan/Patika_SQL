--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(length) FROM film
WHERE length> (
    SELECT AVG(length) FROM film
    );

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = ALL (
    SELECT MAX(rental_rate) FROM film
    );

--film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film
   WHERE
        rental_rate = (SELECT MIN(rental_rate) FROM film)
        AND
        replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT payment.customer_id, customer.first_name, customer.last_name, COUNT(payment.customer_id)  
AS payment_count FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY payment_count DESC;