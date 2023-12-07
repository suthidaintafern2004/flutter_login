import 'package:flutter/material.dart';

class MyLoginScteen extends StatefulWidget {
  const MyLoginScteen({super.key});

  @override
  State<MyLoginScteen> createState() => _MyLoginScteenState();
}

class _MyLoginScteenState extends State<MyLoginScteen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(25),
              // color: Colors.amber[300],
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.fbd0b9741079fb2995cb7fc2fe01d113?rik=L9iGsbtHWdYKmw&pid=ImgRaw&r=0'),
              )),
            ),
            //Container(
            //    alignment: Alignment.center,
             //   padding: const EdgeInsets.all(10),
                //child: Icon(Icons.key,size: 50,),
                //),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}