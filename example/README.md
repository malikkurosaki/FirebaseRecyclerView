# hide_keyboard

simple way to hide keyboard after typing

## Getting Started

import

```
import 'package:hide_keyboard/hide_keyboard.dart';
```

use 

```dart
HideKeyboard(
    child: // some child
)

// or

void actionButton(){
    HideKeyboard.now();
}

```

simple example

```dart

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inpCon = List.generate(formField.length, (index) => TextEditingController());
    final formKey = GlobalKey<FormState>();
    // this is the magic 
    return HideKeyboard(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text("login".toUpperCase(),
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 42,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Card(
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        for(var i = 0; i < formField.length; i++)
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          child: TextFormField(
                            controller: inpCon[i],
                            validator: (value) => value.isEmpty?"no empty field allowed": null,
                            decoration: InputDecoration(
                              labelText: formField[i]['name'],
                              isDense: true,
                              prefixIcon: Icon(formField[i]['icon']),
                              border: InputBorder.none,
                              fillColor: Colors.orange[700],
                              filled: true
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.orange[700],
                          child: MaterialButton(
                            minWidth: double.infinity,
                            onPressed: (){

                              // this when button action trigger [optional]
                              HideKeyboard.now();
                              if(formKey.currentState.validate()){
                                // do login action
                                
                              }
                            },
                            child: Text("LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final formField = [
  {
    "name": "email",
    "icon": Icons.email
  },
  {
    "name": "password",
    "icon": Icons.lock
  }
];
```

![gambar 1](../assets/no1.png)
![gambar 2](../assets/no2.png)

malik kurosaki <malikkurosaki@gmail.com>



[![wa](../assets/whatsapp.png)]("https://wa.me/+6281338929722)