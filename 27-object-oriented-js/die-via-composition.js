class Die {
  constructor() {
    this.faces = 6
  }

  roll() {
    let result = Math.floor(Math.random() * this.faces) + 1
    return result
  }
}

class DTwenty {
  constructor() {
    this.die = new Die()
    this.die.faces = 20
  }

  roll() {
    return this.die.roll()
  }
}

let d6 = new Die()
let d20 = new DTwenty()
console.log('d6', d6.roll())
console.log('d6', d6.roll())
console.log('d6', d6.roll())
console.log('d6', d6.roll())
console.log('d6', d6.roll())
console.log('d20', d20.roll())
console.log('d20', d20.roll())
console.log()
console.log('faces:', d6.faces)