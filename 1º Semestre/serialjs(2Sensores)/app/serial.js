const SerialPort = require('serialport');
const Readline = SerialPort.parsers.Readline;

class ArduinoDataRead {
// Cria uma lista a 'listData'
    constructor(){
        this.listData = [];
        this.listData2 = [];
    }

    get List() {
        return this.listData;
    }

    get List2() {
        return this.listData2;
    }

    SetConnection(){

        SerialPort.list().then(listSerialDevices => {
            
            let listArduinoSerial = listSerialDevices.filter(serialDevice => {
                return serialDevice.vendorId == 2341 && serialDevice.productId == 43;
            });
            
            if (listArduinoSerial.length != 1){
                throw new Error("The Arduino was not connected or has many boards connceted");
            }

            console.log("Arduino found in the com %s", listArduinoSerial[0].comName);
             
            return  listArduinoSerial[0].comName;
            
        }).then(arduinoCom => {
            
            let arduino = new SerialPort(arduinoCom, {baudRate: 9600});
            // Aqui que vai ser importante pra caramba
            // Aqui é onde o node realiza a leitura na com do arduino

            // Muito importante
            const parser = new Readline();
            arduino.pipe(parser);
            
            // Atribui cada dado a um item na listData
            parser.on('data', (data) => {
                var resultado =  data.split(";")
                this.listData.push(parseFloat(resultado[0]));
                this.listData2.push(parseFloat(resultado[1]));
            });
            
        }).catch(error => console.log(error));
    } 
}

const serial = new ArduinoDataRead();
serial.SetConnection();

module.exports.ArduinoData = {List: serial.List,List2: serial.List2} 