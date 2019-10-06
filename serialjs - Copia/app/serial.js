const SerialPort = require('serialport');
const Readline = SerialPort.parsers.Readline;

class ArduinoDataRead {
// Cria uma lista a 'listData_sensor1'
    constructor(){
        this.listData_sensor1 = [];
        }

    get List() {
        return this.listData_sensor1;
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
            const parser2 = new Readline();

            arduino.pipe(parser);
            arduino.pipe(parser2);
        
            
            // Atribui cada dado a um item na listData
            parser.on('data', (data) => {
                //Converte string para numeros decimais
                this.listData_sensor1.push(parseFloat(data));
            });
            parser2.on('data2', (data2) => {
                //Converte string para numeros decimais
                this.listData_sensor2.push(parseFloat(data2));
            });
                       
        }).catch(error => console.log(error));
    } 
}

const serial = new ArduinoDataRead();
serial.SetConnection();

module.exports.ArduinoData = {List: serial.List} 
