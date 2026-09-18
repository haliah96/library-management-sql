--- PROJECT TASK
-- Task 1. Create a New Book Record -- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"

select*from books;
insert into books (isbn, book_title, category, rental_price, status, author, publisher)
VALUES('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');
select * from books;

-- Task 2: Update an Existing Member's Address
select* from members m ;
update members 
set member_address = '890 Oak St'
where member_id ='C110';

-- Task 3: Delete a Record from the Issued Status Table 
-- Objective: Delete the record with issued_id = 'IS121' from the issued_status table.
select * from issued_status is2 ;
delete from issued_status 
where issued_id ='IS121';

--Task 4: Retrieve All Books Issued by a Specific Employee
 -- Objective: melacak seluruh riwayat transaksi peminjaman buku yang dilayani oleh seorang staf/pustakawan tertentu
-- Select all books issued by the employee with emp_id = 'E101'.
select * from issued_status is2 
where issued_emp_id ='E101';

-- Task 5: List Members Who Have Issued More Than One Book 
-- Objective: Use GROUP BY to find members who have issued more than one book.
select issued_member_id,  count(issued_id) as total_issued
from issued_status is2 
group by issued_member_id
having count(issued_id) > 1;

-- Task 6: Create Summary Tables: Used CTAS to generate new tables based on query results 
-- each book and total book_issued_cnt
-- membuat tabel baru secara otomatis bernama book_issued_cnt yang isinya 
-- berupa rekapitulasi jumlah peminjaman dari setiap buku.

create table book_issued_cnt as 
select b.isbn,
		b.book_title,
		count(ist.issued_id) as count_issued
from books b
join issued_status ist
on b.isbn = ist.issued_book_isbn
group by b.isbn, b.book_title;
select * from book_issued_cnt;

-- Task 7. Retrieve All Books in a Specific Category
select * from books b 
where category ='Fiction';

-- Task 8: Find Total Rental Income by Category
select 	b.category, 
		sum(b.rental_price) as total_rental,
		count(*)
from issued_status ist
join books b
on b.isbn = ist.issued_book_isbn 
group by category ;

-- List Members Who Registered in the Last 30 Days:
SELECT * FROM members
WHERE reg_date >= CURRENT_DATE - INTERVAL '30 days';

-- List Employees with Their Branch Manager's Name and their branch details:

SELECT 
    e1.emp_id,
    e1.emp_name,
    e1.position,
    e1.salary,
    b.*,
    e2.emp_name as manager

-- Tabel employees di-alias menjadi e1, berperan sebagai karyawan biasa 
-- atau staf yang datanya ingin ditampilkan.
FROM employees as e1

-- Menggabungkan karyawan (e1) dengan tabel branch (b) berdasarkan lokasi cabang tempat mereka ditugaskan
JOIN 
branch as b
ON e1.branch_id = b.branch_id    

-- Tabel employees dipanggil lagi untuk kedua kalinya dengan alias e2, kali ini khusus untuk mencari data manager. 
-- Caranya dengan mencocokkan emp_id milik e2 dengan manager_id yang terdaftar di tabel branch.
JOIN
employees as e2
ON e2.emp_id = b.manager_id;






























		
