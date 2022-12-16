-- Connect to postgres container CLI
docker exec -it postgres psql -U postgres

-- Create table
CREATE TABLE mahasiswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(255),
    alamat VARCHAR(50),
    umur INTEGER,
    jurusan VARCHAR(50),
    ipk FLOAT
);

-- Insert data
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rizky', 'Jakarta', 20, 'Teknik Informatika', 3.5);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Naufal', 'Bandung', 21, 'Teknik Informatika', 3.6);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rizal', 'Jakarta', 22, 'Teknik Informatika', 3.7);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rizki', 'Bandung', 23, 'Teknik Informatika', 3.8);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Aldi', 'Jakarta', 24, 'Teknik Informatika', 3.2);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rahmat', 'Bandung', 27, 'Teknik Sipil', 2.9);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rahman', 'Jakarta', 28, 'Teknik Sipil', 3.0);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rahmi', 'Bandung', 29, 'Teknik Sipil', 3.3);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rahma', 'Jakarta', 30, 'Teknik Sipil', 3.6);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Rahim', 'Bandung', 31, 'Teknik Sipil', 3.9);

-- Check data
SELECT * FROM mahasiswa;

-- Try Insert New Value From Postgre Into Stream Table (DO THIS STEP AFTER DONE WITH ALL THE KSQL SCRIPT)
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Yolanda', 'Jakarta', 20, 'Teknik Informatika', 3.5);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Kiki', 'Bandung', 21, 'Teknik Informatika', 3.6);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Lala', 'Jakarta', 22, 'Teknik Informatika', 3.7);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Lili', 'Bandung', 23, 'Teknik Informatika', 3.8);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Lulu', 'Jakarta', 24, 'Teknik Informatika', 3.2);
INSERT INTO mahasiswa (nama, alamat, umur, jurusan, ipk) VALUES ('Laya', 'Bandung', 27, 'Teknik Sipil', 2.9);