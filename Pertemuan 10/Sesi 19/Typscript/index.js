var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var message = "Greetings";
// const anyMessage : string | number = 12345
// console.log(message)
function getProfileTS(name, age) {
    console.log("Hello, " + name + ", your age is " + age);
}
getProfileTS("Matthew");
var students = [
    ["Matthew", true],
    ["Adni", false]
];
var student = {
    name: "Matthew",
    age: 22,
    score: 100
};
var Person = /** @class */ (function () {
    // age: number;
    function Person(name, age) {
        this.age = age;
        this.name = name;
        this.age = age;
    }
    Person.prototype.getAge = function () {
        return this.age;
    };
    return Person;
}());
var siswa = /** @class */ (function (_super) {
    __extends(siswa, _super);
    function siswa(name, age, score) {
        var _this = _super.call(this, name, age) || this;
        _this.score = score;
        return _this;
    }
    siswa.prototype.changeScore = function (newScore) {
        this.score = newScore;
    };
    return siswa;
}(Person));
var employees = [
    {
        name: "Matthew",
        age: 21,
        score: 123
    },
    student
];
var siswaNew = new siswa("Matthew", 22, 100);
console.log(siswaNew);
siswaNew.changeScore(105);
console.log(siswaNew);
console.log(siswaNew.getAge);
