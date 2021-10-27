let orang = {
    nama: "Matthew",
    "warna rambut": "hitam",
    berkacamata: true,
    umur: 33
}

const kursi = {
    warna: "putih salju",
    bahan: "kain",
    merk: "FSD NISP",
    jumlahKaki: "40",
    kategori: "gaming",
    harga: 740000,
    bebanMaksimal: 200
}

console.log(kursi.warna)

console.log(orang["warna rambut"])

kursi.warna = "pink"

console.log(kursi)

function getValue(obj, key) {
    return obj[key]
}

console.log(getValue(kursi, 'harga'))

const getValue = function (obj,key) {
    return obj[key]
}

const getValueArrowFunction = (obj, key) => obj[key]