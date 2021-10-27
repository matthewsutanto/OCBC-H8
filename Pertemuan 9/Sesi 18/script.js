// let pageTitleElement = document.getElementById('title')
// // console.log(pageTitleElement)
// console.log(pageTitleElement.innerHTML)

// let pageBox = document.getElementsByClassName('page-box')
// console.log(pageBox)

// for(let i=0;i < pageBox.length; i++) {
//     console.log(pageBox[i].innerHTML)
// }

// let divElements = document.getElementsByTagName('div')
// console.log(divElements)

$(document).ready(function () {
    // console.log($('#title'))
    // console.log($('.page-box'))
    // $('#title').click(function () {
    //     alert('Saya klik page title')
    // })
    // $('#submitButton').click(function (e) {
    //     e.preventDefault()
    //     let username = $('#username').val()
    let username = $('input')
    //     alert("Halo "+username)
    // })

    $('.page-box:first').addClass("btn-danger")
})