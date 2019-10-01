const express = require('express');
const { ArduinoData } = require('./serial')
const router = express.Router();


router.get('/', (request, response, next) => {
    //Pega os valores e soma 
    let sum = ArduinoData.List.reduce((a, b) => a + b, 0);
    // Depois divide eles pela quantidade de leituras feitas
    let average = (sum / ArduinoData.List.length).toFixed(2);

    response.json({
        data: ArduinoData.List,
        total: ArduinoData.List.length,
        average: isNaN(average) ? 0 : average
    });

});

module.exports = router;