import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String txtEmail = "", txtSenha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: SizedBox(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,             
             children: [
               Image.network('https://s2.glbimg.com/slaVZgTF5Nz8RWqGrHRJf0H1PMQ=/0x0:800x450/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/U/e/NTegqdSe6SoBAoQDjKZA/cachorro.jpg'),
               TextField(
                 onChanged: (text) => txtEmail = text,
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   labelText: 'Email',
                   border: OutlineInputBorder(),
                 ),
               ),
               SizedBox(
                 height:20,
               ),
               TextField(
                 onChanged: (text) => txtSenha = text,
                 obscureText: true,
                 decoration: InputDecoration(
                   labelText: 'Senha',
                   border: OutlineInputBorder(),
                 ),
               ),
               SizedBox(
                 height:20,
               ),
               ElevatedButton(onPressed: (){
                 if(txtEmail == 'lucas.r.simione@gmail.com' && txtSenha == '123456'){
                   print('login efetuado com sucesso!');
                   Navigator.of(context).pushNamed('/home');
                 }
                 else{ 
                   print('dados incorretos!');
                 }
               }, child: Text('Login'))
             ],
           ),
         )
       ),
      )
    );
  }
}