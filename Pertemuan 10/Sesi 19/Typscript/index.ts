const message : string = "Greetings"

// const anyMessage : string | number = 12345
// console.log(message)

function getProfileTS(name:string, age?:number) {
    console.log(`Hello, ${name}, your age is ${age}`)
}

getProfileTS("Matthew")

let students: (string | boolean)[][] = [
    ["Matthew",true],
    ["Adni",false]
]


interface studentObject {
    name:string,
    age: number,
    score: number
}

let student: studentObject={
    name: "Matthew",
    age: 22,
    score: 100
}

class Person {
    name: string;
    // age: number;

    constructor(name:string, private age:number) {
        this.name = name
        this.age = age
    }

    getAge():number{
        return this.age;
    }

}

class siswa extends Person{
    score: number;

    constructor(name: string, age: number, score: number) {
        super(name, age);
        this.score = score;
    }

    changeScore(newScore:number) {
        this.score = newScore
    }
}

let employees: studentObject[] = [
    {
        name: "Matthew",
        age: 21,
        score: 123
    },
    student
]

const siswaNew = new siswa("Matthew",22,100)
console.log(siswaNew)
siswaNew.changeScore(105)
console.log(siswaNew)
console.log(siswaNew.getAge)