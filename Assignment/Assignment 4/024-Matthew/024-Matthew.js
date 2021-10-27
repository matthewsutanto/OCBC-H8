var hasil = 0

if(process.argv.slice(2)[0][1]=='+' && process.argv.slice(2)[0][2]=='+') {
    hasil = Number(process.argv.slice(2)[0][0])+1
}else if(process.argv.slice(2)[0][1]=='-' && process.argv.slice(2)[0][2]=='-') {
    hasil = Number(process.argv.slice(2)[0][0])-1
}else if(process.argv.slice(2)[0][1]=='+') {
    hasil = Number(process.argv.slice(2)[0][0]) + Number(process.argv.slice(2)[0][2])
} else if(process.argv.slice(2)[0][1]=='-') {
    hasil = process.argv.slice(2)[0][0] - process.argv.slice(2)[0][2]
} else if(process.argv.slice(2)[0][1]=='*') {
    hasil = process.argv.slice(2)[0][0] * process.argv.slice(2)[0][2]
} else if(process.argv.slice(2)[0][1]=='/') {
    hasil = process.argv.slice(2)[0][0] / process.argv.slice(2)[0][2]
} else if(process.argv.slice(2)[0][1]=='%') {
    hasil = process.argv.slice(2)[0][0] % process.argv.slice(2)[0][2]
}

console.log("Hasil nya adalah ", hasil)