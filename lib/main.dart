import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto GOV RN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'imagens/logorn.png',
                  height: 130.0,
                ),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "CPF",
                    labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
                Divider(color: Colors.blue),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
                Divider(color: Colors.blue),
                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    color: Colors.yellowAccent,
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text(
                      "Como solicitar o cadastro?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InfoPage()),
                      );
                    },
                  )
                )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Como solicitar o cadatro?"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'imagens/iconesenha.png',
                height: 130.0,
              ),
              Divider(color: Colors.white),
              Divider(color: Colors.white),
              Text(
                  'Para acessar o aplicativo você deve solicitar o cadastro a um membro da Secretaria Executiva do Comitê de Gestão e Eficiência.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black45, fontSize: 21)
              )
            ],
          )
        )
      )
    );
  }
}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.equalizer), text: "Dashboard"),
              Tab(icon: Icon(Icons.format_list_bulleted), text: "Lista geral"),
              Tab(icon: Icon(Icons.insert_drive_file), text: "Incluir novo"),
            ],
          ),
          automaticallyImplyLeading: false,
          title: Text('SECGE - Comitê de Gestão do RN'),
        ),
        body:TabBarView(
          children: [
            Center(
              child:
              Image.asset(
                'imagens/grafico.png',
                height: 380.0,
              ),
            ),
            Center(
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Hello World!'),
                    )
                  ],
                ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Divider(color: Colors.white),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        labelText: "  Unidade Gestora (UG)",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  Divider(color: Colors.white),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        labelText: "  Assunto",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  Divider(color: Colors.white),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    style: new TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        labelText: "  Valor (RS)",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  Divider(color: Colors.white),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        labelText: "  Descrição",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  Divider(color: Colors.white),
                  ButtonTheme(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Gravar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
