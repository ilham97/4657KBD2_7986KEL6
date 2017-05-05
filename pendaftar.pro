DOMAINS
nama=symbol
umur=integer
kondisi = cond*
cond = string

FACTS
orang(nama,umur)
nama_kelompok(kondisi)
false(cond)

PREDICATES
nondeterm lihat(kondisi)
nondeterm mulai
nondeterm mulai1
nondeterm mulai2
nondeterm maaf
nondeterm pilih(char)
nondeterm pilih1
nondeterm pilih2
nondeterm syarat1
nondeterm daftar1
nondeterm daftar2
nondeterm daftar3
nondeterm terimakasih
nondeterm terus(char)
nondeterm terus1(char)
nondeterm balik1(char)
nondeterm balik11(char)
nondeterm balik2(char)
nondeterm balik22(char)
nondeterm hasil(char)
nondeterm kel(char)
nondeterm kel1(char)
rx(char,char)
ww(char,char)
vv(char,char)

CLAUSES
rx(Y,Y):-!.
rx(_,_):-fail.
	
	nama_kelompok(["KELOMPOK 6\n 1. ","Ilham","1515015177\n","2. ","Arbaedi","1515015175\n","3. ","Ishak","1515015196"]).
mulai:-
	nama_kelompok(Kelompok),
	lihat(Kelompok),
	nl,nl,
	
	write("PROGRAM SISTEM PENDAFTARAN BEASISWA !"), nl,
	write("-----------------------------------"),nl,
	write("Masukkan Nama :  "),readln(Pendaftar),nl,
	
	write("Selamat Datang  ",
	Pendaftar),nl,
	write("----------------------------------"),nl,

	write("UNTUK MEMULAI PROGRAM, TEKAN TOMBOL 'Y'\n"),
	readchar(A), hasil(A).
	hasil(A):-rx(A,'Y'), mulai1.
	hasil(A):-rx(A,'y'), mulai1.
	hasil(_):-mulai.
lihat([H|T]):-
	not(false(H)),
	write(H),
	lihat(T).
	lihat([H|_]):-
	assertz(false(H)).
	
mulai1:-
write("SISTEM PENDAFTARAN BEASISWA BIDIK MISI"),
write("\n"),
write("\n"),
write("APAKAH ANDA INGIN MENDAFTAR BEASISWA BIDIK MISI? (Y/T)\n"),
write("tekan Y untuk lanjut"),nl,
readchar(A), terus(A).
terus(A):-rx(A,'Y'), mulai2.
terus(A):-rx(A,'y'), mulai2.
terus(A):-rx(A,'T'), maaf.
terus(A):-rx(A,'t'), maaf.
terus(_):- mulai1.

mulai2:-
write("ANDA HARUS MELENGKAPI PERSYARATAN MENDAFTAR BEASISWA BIDIK MISI\n"),
write("tekan Y untuk lanjut"),
write("\n"),
write("\n"),	

readchar(A), pilih(A).

pilih(A):- rx(A,'Y'),pilih1.
pilih(A):- rx(A,'y'),pilih1.



pilih1:-
write("PROGRAM SISTEM PENDAFTARAN BEASISWA BIDIK MISI"), nl,
write("----------------------------------------------"),nl,

write("\n"),
write("A. PERSYARATAN\n"),nl,
write("B. DAFTAR\n"),
write("MASUKKAN PILIHAN ANDA:\n"),
readchar(A), terus1(A).

terus1(A):-rx(A,'A'),syarat1.
terus1(A):-rx(A,'a'),syarat1.
terus1(A):-rx(A,'B'),daftar1.
terus1(A):-rx(A,'b'),daftar1.
terus1(_):-pilih1.




orang(ilham,19).
orang(arbaedi,19).
orang(ishak,19).

pilih2:-
orang(Nama,Umur),
write("Nama	: ",Nama),nl,
write("Umur	: ",Umur),nl,nl,
fail.
pilih2.

ww(Z,Z):-!.
ww(_,_):-fail.

vv(Q,Q):-!.
vv(_,_):-fail.

syarat1:-
write("PROGRAM SISTEM PENDAFTARAN BEASISWA"), nl,
write("-----------------------------------"),nl,
write("PERSYARATAN.\n"),
write("\n"),
write("1. Siswa SMA/SMK/MA atau bentuk lain yang sederajat yang akan lulus pada tahun 2017. \n"),
write("2. Usia paling tinggi pada saat mendaftar adalah 21 tahun.\n"),
write("3. Tidak mampu secara ekonomi . \n"),
write("4. Pendidikan orang Tua/Wali setinggi-tingginya S1 (Strata 1) atau Diploma 4. \n"),
write("---------------------------------------------------------------------------------"),nl,
write("Apakah anda sudah melengkapi persyartan di atas jika iya tekan 'Y'\n"),nl,
write("jika TIDAK anda tekan 'T' untuk kembali ke menu utama \n"),nl,
write("TEKAN Y UNTUK LANJUT (Y)\n"),
write("TEKAN T UNTUK KE MENU (T)\n"),
write("TEKAN X UNTUK KELUAR (X)\n"),

readchar(A),balik1(A).
balik1(A):-ww(A,'Y'),pilih1.
balik1(A):-ww(A,'y'),pilih1.
balik1(A):-ww(A,'T'),mulai1.
balik1(A):-ww(A,'t'),mulai1.
balik1(A):-ww(A,'X'),terimakasih.
balik1(A):-ww(A,'x'),terimakasih.
balik1(_):-syarat1.

daftar1:-
write("PROGRAM SISTEM PENDAFTARAN BEASISWA"), nl,
write("-----------------------------------"),nl,
write("Masukkan nama 		: "),
	readln(Pendaftar),
	write("-------------------------------------\n"),
	write("Selamat datang 		: ", Pendaftar),nl,
write("NAMA ANDA SUDAH TERDAFTAR\n"),
write("\n"),
write("TEKAN 'Y' UNTUK MELENGKAPI FORM PENDAFTARAN? (Y,T)\n"),
readchar(A),balik11(A).

balik11(A):-ww(A,'Y'),daftar2.
balik11(A):-ww(A,'y'),daftar2.
balik11(A):-ww(A,'T'),terimakasih.
balik11(A):-ww(A,'t'),terimakasih.
balik11(_):-daftar1.



daftar2:-
write("PROGRAM SISTEM INFORMASI PENDAFTARAN BEASISWA"), nl,
write("---------------------------------------------"),nl,
write("Masukkan nama lenkap 			:  "),readln(Nama),nl,
write("masukkan nim 				: "),readln(Nim),nl,
write("masukkan fakultas 				: "),readln(Fakultas),nl,
write("masukkan jenis kelamin 			: "),readln(Kelamin),nl,
write("masukkan tempat/tgl lahir 			: "),readln(Tgl),nl,
write("masukkan alamat 				: "),readln(Alamat),nl,
write("masukkan kota 				: "),readln(Kota),nl,
write("masukkan no hp 				: "),readln(Nohp),nl,
write("masukkan agama 				: "),readln(Agama),nl,
write("masukkan tahun masuk 			: "),readln(Tahun),nl,
write("masukkan ipk terakhir 			: "),readln(Ipk),nl,
write("\n"),
write("FORM PENDAFTARAN"),
write("\n"),	
	write("nama 				: ", Nama),nl,
	write("nim 				: ", Nim),nl,
	write("fakultas 				: ", Fakultas),nl,
	write("jenis kelamin 			: ", Kelamin),nl,
	write("tempat/tgl lahir 			: ", Tgl),nl,
	write("alamat 				: ", Alamat),nl,
	write("kota 				: ", Kota),nl,
	write("no hp 				: ", Nohp),nl,
	write("agama 				: ", Agama),nl,
	write("tahunmasuk 			: ", Tahun),nl,
	write("ipk terakhir 			: ", Ipk),nl,
write("\n"),nl,
write("APAKAH DATA SUDAH BENAR JIKA IYA TEKAN 'Y'? (Y)\n"),
write("JIKA SALAH TEKAN 'B' (B)\n"),
readchar(A),balik22(A).

balik2(A):-ww(A,'Y'),daftar3.
balik2(A):-ww(A,'y'),daftar3.
balik2(A):-ww(A,'B'),daftar2.
balik2(A):-ww(A,'b'),daftar2.
balik2(A):-ww(A,'T'),terimakasih.
balik2(A):-ww(A,'t'),terimakasih.
balik2(_):-daftar1.



daftar3:-
write("PROGRAM SISTEM PENDAFTARAN BEASISWA"), nl,
write("-----------------------------------"),nl,
write("ANDA BERHASIL TERDAFTAR"),nl,
write("TERMIAH KASIH.\n"),
write("\n"),

write("TEKAN X UNTUK KELUAR \n"),
write("TEKAN 2 UNTUK MELIHAT KELOMPOK"),nl,
readchar(A),balik22(A).

balik22(A):-ww(A,'2'),pilih2.
balik22(A):-ww(A,'x'),terimakasih.
balik22(A):-ww(A,'X'),terimakasih.
balik22(_):-daftar3.


maaf:-
write("PROGRAM SISTEM PENDAFTARAN BEASISWA"),nl,
write("-----------------------------------"),nl,
write(" TERIMAH KASIH SUDAH MENGGUNAKAN PROGRAM KAMI.\n"),
write(" TEKAN TOMBOL 'B' JIKA INGIN KEMBALI KE MENU UTAMA.\n"),
write(" TEKAN TOMBOL 'X' JIKA ANDA INGIN KELUAR.\n"),
readchar(A),kel(A).
kel(A):-vv(A,'B'),mulai1.
kel(A):-vv(A,'b'),mulai1.
kel(A):-vv(A,'X'),exit.
kel(A):-vv(A,'x'),exit.
kel(_):-maaf.

terimakasih:-
write("PROGRAM SISTEM PENDAFTARAN BEASISWA"), nl,
write("-----------------------------------"),nl,
write(" TERIMA KASIH SUDAH MEGGUNAKAN PROGRAM KAMI\n"),
write(" TEKAN TOMBOL 'B' JIKA INGIN KEMBALI KE MENU UTAMA.\n"),
write(" TEKAN TOMBOL 'X' JIKA ANDA INGIN KELUAR.\n"),
readchar(A),kel1(A).
kel1(A):-vv(A,'B'),mulai1.
kel1(A):-vv(A,'b'),mulai1.
kel1(A):-vv(A,'X'),exit.
kel1(A):-vv(A,'x'),exit.
kel1(_):-terimakasih.

GOAL
mulai.