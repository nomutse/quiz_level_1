import 'dart:io';
void menu1(){
  print('====== HITUNGAN PENAMBAHAN =====');
  // input bilangan 1
  stdout.write('Masukkan bilangan pertama : ');
  var bilNambah1 = stdin.readLineSync();
  var bilNambah1int = int.parse('$bilNambah1');
  // input bilangan 2
  stdout.write('Masukkan bilangan kedua : ');
  var bilNambah2 = stdin.readLineSync();
  var bilNambah2int = int.parse('$bilNambah2');
  // hasil penjumlahan = bilangan pertama + bilangan kedua
  var jumlahPenambahan = bilNambah1int + bilNambah2int;
  print('''Hasil Penjumlahan Bilangan pertama + Bilangan kedua  
         = $jumlahPenambahan''');
}

void menu2(){
  print('====== HITUNGAN PERKALIAN =====');
  // input bilangan 1
  stdout.write('Masukkan bilangan pertama : ');
  var bilKali1 = stdin.readLineSync();
  var bilKali1int = int.parse('$bilKali1');
  // input bilangan 2
  stdout.write('Masukkan bilangan kedua : ');
  var bilKali2 = stdin.readLineSync();
  var bilKali2int = int.parse('$bilKali2');
  // hasil perkalian = bilangan pertama * bilangan kedua
  var jumlahPerkalian = bilKali1int * bilKali2int;
  print('''Hasil Perkalian Bilangan pertama * Bilangan kedua  
         = $jumlahPerkalian''');
}

void menu3(){
  print('====== HITUNGAN ZAKAT =====');
  // input harta sampai nisab
  stdout.write('Masukkan jumlah nominal harta yangtelah sampai nisab (Rp): ');
  var harta = stdin.readLineSync();
  var hartaint = int.parse('$harta');
  // cek harta sudah sampai nisab atau belum seharga harga 85 gram emas
  // harga 1 gram emas = Rp 1.150.000:
  // nisab zakat harta = 85 * Rp 1.150.000 = Rp 97.750.000
  if (hartaint >= 97750000){
    // hasil perhitungan zakat = 2.5% * jumlah harta
    var zakat = 0.025 * hartaint;
    print('''Hasil Perhitungan Zakat Harta Yang Wajib Dikeluarkan (Rp)  
         = $zakat''');
  } else {
    print('Harta belum cukup nisab, tidak terkena kewajiban zakat');
  }
}

void menu4(){
  // 
  // input panjang
  print('====== HITUNGAN LUAS KOTAK / BALOK =====');
  stdout.write('Masukkan Panjang p (cm) : ');
  var panjang = stdin.readLineSync();
  var panjangint = int.parse('$panjang');

  // input lebar
  stdout.write('Masukkan Lebar l (cm) : ');
  var lebar = stdin.readLineSync();
  var lebarint = int.parse('$lebar');

  // input tinggi
  stdout.write('Masukkan Tinggi t (cm) : ');
  var tinggi = stdin.readLineSync();
  var tinggiint = int.parse('$tinggi');

  // Rumus Luas Kotak/Balok = 2*(panjang*lebar + panjang*tinggi + lebar*tinggi)
  var luas = 2 * (panjangint*lebarint + panjangint*tinggiint + lebarint*tinggiint);
  print('''Luas Kotak/Balok = 2*(p*l + p*t + l*t) adalah (cm2)  
         =    $luas''');
}

void main(){
  /*String menu1 = '''Menu:
                        1. Penambahan 
                        2. Perkalian 
                        3. Hitung Zakat  
                        4. Hitung Luas Kotak
                    Silahkan masukkan nomer menu pilihan anda!''';
*/
  stdout.write(
      '''Menu: 
      1. Penambahan 
      2. Perkalian
      3. Hitung Zakat
      4. Hitung Luas Kotak/Balok
      Silahkan masukkan nomer menu pilihan anda!
      Menu pilihan anda : '''
            );
  var pilihanMenu = stdin.readLineSync();

  switch(pilihanMenu){
      case '1':
      print('Anda memilih menu 1. Penambahan');
      menu1();
      break;
      case '2':
      print('Anda memilih menu 2. Perkalian');
      menu2();
      break;
      case '3':
      print('Anda memilih menu 3. Hitung Zakat');
      menu3();
      break;
      case '4':
      print('Anda memilih menu 4. Hitung Luas Kotak');
      menu4();
      break;
      default:
      print('''Nomer yang anda masukkan tidak ada
               Silahkan coba lagi!''');
  }


  //print(menu1);

}
