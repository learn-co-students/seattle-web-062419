class Die {
  constructor() {
    this.faces = 6
  }

  roll() {
    let result = Math.floor(Math.random() * this.faces) + 1
    return result
  }
}

class DTwenty extends Die {
  constructor() {
    super()
    this.faces = 20
  }

  roll() {
    let value = super.roll()
    return `~*~${value}~*~`
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