clc, close, clear;

%% JUDUL PROGRAM
disp('===================================================')
disp('     KALKULATOR EIGENVALUE DAN EIGENVEKTOR         ')
disp('===================================================')

%% INSTRUKSI PENGGUNAAN PROGRAM
disp('CATATAN!')
disp('1. MATRIKS HARUS BERBENTUK PERSEGI N x N')
disp('2. INPUT HARUS MENGGUNAKAN SIMBOL KURUNG SIKU " [ ] "')
disp('3. PISAHKAN BARIS MATRIKS DENGAN TITIK KOMA " ; "')
disp('4. CONTOH INPUT YANG BENAR SEBAGAI BERIKUT: ')
disp('    ------- UNTUK MATRIKS 2 x 2 -------')
disp('                [3 0; 8 -1]')
disp('    ------- UNTUK MATRIKS 3 x 3 -------')
disp('          [0 0 -2; 1 2 1; 1 0 3]');
disp(' ')

%% Kode input matrik dari user
userMatrix = input('Masukkan nilai matriks anda:\n');

%% Kode ubah menjadi simbol matrix MATLAB
userMatrix = sym(userMatrix);
disp(' ')
disp('→	Matriks anda adalah')
disp(userMatrix);

%% Kode verifikasi matriks harus persegi!
[m, n] = size(userMatrix); % m dan n harus sama!
if m ~= n
    error('BENTUK MATRIKS HARUS PERSEGI!');
end

%% Formula eigenvalue dan eigenvektor MATLAB
[V,D] = eig(userMatrix);
% V untuk eigenvalue
% D untuk eigenvektor

%% Tampilkan nilai eigenvalue
disp('→	Nilai Eigenvalue')
disp(D);

%% Tampilkan nilai eigenvektor
disp('→	Nilai Eigenvektor')
disp(V)


%% TEST FEATURE
for i = 1:length(D)
    eigenvalue = D(i, i);
    eigenvector = V(:, i);
    
    fprintf('→ Eigenvektor untuk nilai eigen %d\n', eigenvalue);
    disp(eigenvector);
end
