--test veritabanınızda (bookstore) employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee
(id SERIAL PRIMARY KEY,
name VARCHAR(50),
birthday DATE,
email VARCHAR(100)
)

SELECT * FROM employee

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim. 

insert into employee (name, birthday, email) values ('Gasper', '1963-07-09', null);
insert into employee (name, birthday, email) values ('Shaylah', '1913-01-18', 'sdillet1@discuz.net');
insert into employee (name, birthday, email) values ('Vickie', null, 'virving2@blogtalkradio.com');
insert into employee (name, birthday, email) values ('Tedman', '1997-05-30', 'tholtaway3@hc360.com');
insert into employee (name, birthday, email) values ('Timothy', '1941-08-10', 'tmiddlebrook4@dell.com');
insert into employee (name, birthday, email) values ('Frederique', '1974-10-23', 'farchley5@oracle.com');
insert into employee (name, birthday, email) values ('Jeniffer', '1954-08-12', 'jkewley6@wunderground.com');
insert into employee (name, birthday, email) values ('Helsa', '1925-11-26', 'htatterton7@go.com');
insert into employee (name, birthday, email) values ('Evin', '1938-01-19', 'epaszak8@about.com');
insert into employee (name, birthday, email) values ('Bryanty', '1957-10-05', 'bfrantz9@so-net.ne.jp');
insert into employee (name, birthday, email) values ('Crosby', '1915-05-24', 'cgalegoa@huffingtonpost.com');
insert into employee (name, birthday, email) values ('Kayla', null, 'kbiffinb@artisteer.com');
insert into employee (name, birthday, email) values ('Eddy', null, 'epashec@cam.ac.uk');
insert into employee (name, birthday, email) values ('Sadye', null, 'sbrandsd@domainmarket.com');
insert into employee (name, birthday, email) values ('Milly', '1979-06-10', 'mbanasiake@seesaa.net');
insert into employee (name, birthday, email) values ('Zelda', '1967-03-27', 'zduckinfieldf@berkeley.edu');
insert into employee (name, birthday, email) values ('Claudell', '1939-07-10', 'cdegueg@ucla.edu');
insert into employee (name, birthday, email) values ('Louisa', null, 'lneesonh@ucsd.edu');
insert into employee (name, birthday, email) values ('Willey', '1903-08-25', 'wmanachi@over-blog.com');
insert into employee (name, birthday, email) values ('Elbertina', null, 'etiebej@nsw.gov.au');
insert into employee (name, birthday, email) values ('Ronnie', null, 'rwoodagek@fc2.com');
insert into employee (name, birthday, email) values ('Trip', '1960-06-06', 'tmeakingl@admin.ch');
insert into employee (name, birthday, email) values ('Roshelle', '1971-03-10', 'rmitrikhinm@qq.com');
insert into employee (name, birthday, email) values ('Bealle', '1912-12-08', 'btedridgen@jugem.jp');
insert into employee (name, birthday, email) values ('Fonsie', '1979-03-02', 'fmcgowrano@google.fr');
insert into employee (name, birthday, email) values ('Sumner', '1907-05-02', 'ssprasenp@craigslist.org');
insert into employee (name, birthday, email) values ('Darya', '1970-04-16', 'dcurnuckeq@flavors.me');
insert into employee (name, birthday, email) values ('Benedikta', '1933-10-14', 'bjammetr@zdnet.com');
insert into employee (name, birthday, email) values ('Lacey', '1903-12-19', 'litzhaks@creativecommons.org');
insert into employee (name, birthday, email) values ('Almire', '1907-03-27', null);
insert into employee (name, birthday, email) values ('Berri', '1922-05-21', 'bshurlocku@xrea.com');
insert into employee (name, birthday, email) values ('Bekki', '1910-02-02', 'bjustunv@moonfruit.com');
insert into employee (name, birthday, email) values ('Margeaux', '1913-08-30', 'molorenshaww@qq.com');
insert into employee (name, birthday, email) values ('Mohandis', '1921-12-23', 'mtaggertyx@eepurl.com');
insert into employee (name, birthday, email) values ('Marius', '1978-09-26', null);
insert into employee (name, birthday, email) values ('Marnie', '1914-07-06', 'mdyshartz@pen.io');
insert into employee (name, birthday, email) values ('Abdul', '1911-07-12', 'awheatland10@unc.edu');
insert into employee (name, birthday, email) values ('Agnese', '1983-08-30', 'ahousen11@nsw.gov.au');
insert into employee (name, birthday, email) values ('Georg', '1922-10-29', 'gprendiville12@stanford.edu');
insert into employee (name, birthday, email) values ('Ewen', '1988-05-25', 'egligorijevic13@cpanel.net');
insert into employee (name, birthday, email) values ('Eunice', null, 'ekeppin14@yandex.ru');
insert into employee (name, birthday, email) values ('Cosme', '1981-06-25', 'cfynan15@sciencedirect.com');
insert into employee (name, birthday, email) values ('Cordelie', '1982-06-24', 'ceveleigh16@europa.eu');
insert into employee (name, birthday, email) values ('Mitchel', null, 'mfrye17@walmart.com');
insert into employee (name, birthday, email) values ('Martelle', '1986-07-09', null);
insert into employee (name, birthday, email) values ('Gui', '1931-03-10', 'ghuzzay19@chron.com');
insert into employee (name, birthday, email) values ('Sande', '1978-10-17', 'sroggers1a@chron.com');
insert into employee (name, birthday, email) values ('Kevan', null, null);
insert into employee (name, birthday, email) values ('Sabina', null, 'smacelholm1c@themeforest.net');
insert into employee (name, birthday, email) values ('Roderich', '1931-05-14', null);
insert into employee (name, birthday, email) values ('Orella', '1914-12-19', 'oranscome0@1688.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'Yagmur Can',
		birthday = '1997-09-18',
		email = 'yc@gmail.com'
	WHERE id BETWEEN 1 AND 5 
	RETURNING *;


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name ILIKE '%yAGMUR%'
RETURNING *;


SELECT * FROM employee;