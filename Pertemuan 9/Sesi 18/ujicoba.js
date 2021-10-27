function removeSpace(text) {
    return text.replace(' ','')
}

function reverseText(text) {
    return text.split("").reverse().join("");
}

function updateVowels(text) {
    let str = "aiueo"
    let i=0
    let newStr = ""
    let char = ""
    for(i;i<text.length;i++){
        if(str.includes(text[i])){
            char = String.fromCharCode(text.charCodeAt(i)+1)
            newStr+=char
        } else {
            newStr+=text[i]
        }
    }
    return newStr
}

function encrypted(text) {
    rmvSpace = removeSpace(text)
    revText = reverseText(rmvSpace)
    updateVow = updateVowels(revText)
    return updateVow
}

console.log(removeSpace("coba pass"))
console.log(reverseText("coba pass"))
console.log(updateVowels("coba pass"))
console.log(encrypted("coba pass"))