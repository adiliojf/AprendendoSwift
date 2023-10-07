

//tarefa 1
//criar var computada de descricao - feito
//criar var computada de tipos de animal - feito
//criar uma lista de comidas ingeridas do animal(se ele ja ingeriu)
class Animal{
    let nomeAnimal: String
    let idade: Int
    var velocidadeEmKmH: Int = 0
    var somEmitido: String = ""
    let habitosAlimentares: [String] = ["Carnívoro", "Herbívoro", "Onívoro", "Detritívoro"]

    init(nomeAnimal: String, idade: Int) {
      self.nomeAnimal = nomeAnimal
      self.idade = idade
    }

    func velocidadeDeLocomocao() -> Int{
      return velocidadeEmKmH
    }

    func emissaoDeSom() -> String{
        return somEmitido
    }
    
    var tipoDoAnimal: String{
        return ""
    }
    
    var descricao: String{
        return "\(nomeAnimal) tem \(idade) anos."
    }
  
}

class Guepardo: Animal {

    init (nomeGuepardo: String, idadeGuepardo: Int){
      super.init(nomeAnimal: nomeGuepardo, idade: idadeGuepardo)
    }

    override func velocidadeDeLocomocao() -> Int{
      velocidadeEmKmH += 130
      return velocidadeEmKmH
    }

    override func emissaoDeSom() -> String{
        somEmitido = "grrrrgrrrrgrrr"
        return somEmitido
    }
    
    override var tipoDoAnimal: String{
        return "Mamífero"
    }
    
    func comeOQue() -> [String] {
        return habitosAlimentares.filter{$0 == "Carnívoro"}
    }
    
    override var descricao: String{
        return "\(nomeAnimal) é um \(tipoDoAnimal) e \(comeOQue()), tem \(idade) anos, possui velocidade de \(velocidadeDeLocomocao()) KM/H e emite o som \(emissaoDeSom())"
    }
  
}

let animal1 = Animal(nomeAnimal: "zezin", idade: 6)
//print(animal1.nomeAnimal, animal1.idade, animal1.velocidadeDeLocomocao(), animal1.emissaoDeSom())
print(animal1.descricao)

for x in animal1.habitosAlimentares {
  print(x, terminator: " ")
}
print("\n")

let guepardo1 = Guepardo(nomeGuepardo: "joaozin feroz", idadeGuepardo: 8)
//print(guepardo1.nomeAnimal, guepardo1.idade, guepardo1.velocidadeDeLocomocao(), guepardo1.emissaoDeSom(), guepardo1.filtrarTipoGuepardo())
print(guepardo1.descricao)