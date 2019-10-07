const express = require('express');
const { ArduinoData } = require('./serial')
const router = express.Router();


router.get('/', (request, response, next) => {
    //Pega os valores e soma 
    let sum = ArduinoData.List.reduce((a, b) => a + b, 0);
    let sum2 = ArduinoData.List2.reduce((a, b) => a + b, 0);
    // Depois divide eles pela quantidade de leituras feitas
    let average = (sum / ArduinoData.List.length).toFixed(2);
    let average2 = (sum2 / ArduinoData.List2.length).toFixed(2);

// Cria e envia para uma API um objeto com as 3 variaveis abaixo 

    response.json({
        //Data é uma lista e recebe os valores lidos do arduino e os separa por virgula
        //Exemplo:       "data":[23,34,645,753,6453,543]
        data: ArduinoData.List,
        data2: ArduinoData.List2,

        // total recebe o tamanho da lista Arduinodata  
        total: ArduinoData.List.length,
        total2: ArduinoData.List2.length,

        // isso aqui em baixo  
        average: isNaN(average) ? 0 : average,
        average2: isNaN(average2) ? 0 : average2
        // é a mesma coisa que:
        // if(isNaN(average)) {
        //     return 0;
        // } else {
        //     return average;
        // }    
        //Ou seja quando average não for isNAN (não é um numero) ele retorna 0
        // Se não retorna o valor da média;

        // No fim ele enviará algo parecido com o exemplo abaixo:
        // {"data":[],"total":0,"average":0}
    });

});

module.exports = router;

    