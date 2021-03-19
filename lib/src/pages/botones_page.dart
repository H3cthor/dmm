import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _mensaje = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tipo de botones - Hector'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 250.0,
                height: 100.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.blue, style: BorderStyle.solid),
                ),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: _raisedPresionado,
                  child: Text('RaisedButton'),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 250.0,
                height: 100.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.blue, style: BorderStyle.solid),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Text('FlatButton'),
                  onPressed: _flatPresionado,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                  width: 250.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue, style: BorderStyle.solid),
                  ),
                  // ignore: deprecated_member_use
                  child: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: _iconButtonPresionado,
                    color: Colors.blue,
                    iconSize: 45.0,
                  )),
              SizedBox(
                height: 50.0,
              ),
              Container(
                  width: 250.0,
                  height: 50.0,
                  /*
                               decoration: BoxDecoration(
                                 border: Border.all(
                                   color: Colors.blue, 
                                   style: BorderStyle.solid),                   
                              ), */
                  // ignore: deprecated_member_use
                  child: OutlineButton(
                    textColor: Colors.blue,
                    color: Colors.blue,
                    child: Text('OutlineButton'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    borderSide: BorderSide(color: Colors.blue),
                    onPressed: _outlineButtonPresionado,
                  )),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Text('Presionaste el boton: $_mensaje'),
              )
            ],
          ),
        )
      );
  }

  void _raisedPresionado() {
    setState(() => _mensaje = 'RaisedButton');
  }

  void _flatPresionado() {
    setState(() => _mensaje = 'FlatButton');
  }

  void _iconButtonPresionado() {
    setState(() => _mensaje = 'IconButton');
  }

  void _outlineButtonPresionado() {
    setState(() => _mensaje = 'OutlineButton');
  }
}
