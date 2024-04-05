import 'package:flutter/material.dart';
import 'Dashboard.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Image(
                image: AssetImage("assets/images/logo_polbeng.png"),
                width: screenWidth * 0.3, // 30% dari lebar layar
                height: screenWidth * 0.3, // 30% dari lebar layar
              ),
              SizedBox(height: 10),
              Text(
                "Selamat datang di",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.05, // 5% dari lebar layar
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "PresensiApp",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: screenWidth * 0.05, // 5% dari lebar layar
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Halo, silahkan masuk untuk melanjutkan",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                width: screenWidth * 0.9, // 90% dari lebar layar
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: screenWidth * 0.9, // 90% dari lebar layar
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: !_isPasswordVisible,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Lupa Password ?",
                    style: TextStyle(color: Colors.purple),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: screenWidth * 0.9, // 90% dari lebar layar
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(screenWidth * 0.9, 60),
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04, // 4% dari lebar layar
                        vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text(
                    "Masuk dengan sidik jari ?",
                    style: TextStyle(
                        fontSize: screenWidth * 0.03), // 3% dari lebar layar
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.fingerprint,
                        size: screenWidth * 0.15), // 15% dari lebar layar
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              screenWidth * 0.035), // 3.5% dari lebar layar
                      children: [
                        TextSpan(text: 'Belum punya akun? '),
                        TextSpan(
                          text: 'Daftar',
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'Dashboard.dart';

// class LoginForm extends StatefulWidget {
//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   bool _isPasswordVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(height: 40),
//               Image(
//                   image: AssetImage("assets/images/logo_polbeng.png"),
//                   width: 100,
//                   height: 100),
//               SizedBox(height: 10),
//               Text("Selamat datang di",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w500)),
//               Text("PresensiApp",
//                   style: TextStyle(
//                       color: Colors.blue,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w500)),
//               Text("Halo, silahkan masuk untuk melanjutkan",
//                   style: TextStyle(color: Colors.grey)),
//               SizedBox(height: 10),
//               Container(
//                 width: 370,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Username",
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 width: 370,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     border: OutlineInputBorder(),
//                     suffixIcon: IconButton(
//                       icon: Icon(_isPasswordVisible
//                           ? Icons.visibility
//                           : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           _isPasswordVisible = !_isPasswordVisible;
//                         });
//                       },
//                     ),
//                   ),
//                   obscureText: !_isPasswordVisible,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Text("Lupa Password ?",
//                       style: TextStyle(color: Colors.purple)),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Container(
//                 width: 370,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     minimumSize: Size(370, 60),
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Dashboard()),
//                     );
//                   },
//                   child: Text('Masuk',
//                       style: TextStyle(color: Colors.white, fontSize: 20)),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Column(
//                 children: <Widget>[
//                   Text("Masuk dengan sidik jari ?",
//                       style: TextStyle(fontSize: 18)),
//                   IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.fingerprint, size: 55)),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Column(
//                 children: <Widget>[
//                   RichText(
//                     text: TextSpan(
//                       style: TextStyle(color: Colors.black, fontSize: 16),
//                       children: [
//                         TextSpan(text: 'Belum punya akun? '),
//                         TextSpan(
//                           text: 'Daftar',
//                           style: TextStyle(color: Colors.purple),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
