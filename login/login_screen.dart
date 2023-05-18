import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap/home_screen.dart';
import 'package:snap/login/shop_login_model.dart';
import 'package:snap/register/cubit/states.dart';
import 'package:snap/register/shop_register_screen.dart';
import '../component/components.dart';
import '../first_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snap/login/cubit/states.dart';
class LoginScreen extends StatelessWidget {
var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    return SafeArea(
      child: BlocProvider(
        create: (BuildContext context) => ShopLoginCubit(),
        child: BlocConsumer<ShopLoginCubit,ShopLoginStates>(
          listener: (context,state){
            if(state is ShopLoginErrorState){
              Fluttertoast.showToast(
                  msg: "please cheack your email or password",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
              if (state is ShopLoginSuccessState)
              {
                navigateTo(context,FirstScreen());

              }

            }
          },
          builder: (context,state){
            return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Center(
            child: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
            key: formKey,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'LOGIN',
                  style: Theme.of(context).textTheme.headline4
              ),
              Text(
                  ' Welcome again',
                  style: Theme.of(context).textTheme.bodyText1
              ),
              SizedBox(
                height: 30.0,
              ),

            defaultFormField(controller: emailController,
            type: TextInputType.emailAddress,
            validate: (value){
            if(value?.isEmpty ?? true){
            return 'please enter your email address';
            }
            }, label: 'Email Address', prefix: Icons.email_outlined,
            ),
            SizedBox(
            height: 15,
            ),
            defaultFormField(
            controller:passwordController,
            type: TextInputType.emailAddress,
            validate: (value){
            if(value.isEmpty){
            return 'please enter your password';
            }
            }, prefix: Icons.lock_outline,
            label: 'Password',
            suffix:ShopLoginCubit.get(context).suffix,
            onSubmit: (value) {
            if (formKey.currentState!.validate()) {
            ShopLoginCubit.get(context).userLogin(
            email: emailController.text,
            password: passwordController.text,
            );
            }
            },
            isPassword:ShopLoginCubit.get(context).isPassword,

            suffixPressed: (){
            ShopLoginCubit.get(context).changePasswordVisibility();

            },

            ),
            SizedBox(
            height: 30,
            ),
            ConditionalBuilder(
            condition:state is! ShopLoginLoadingState,
            builder: (context) =>defaultButton(text: 'Login', function: () {
            if(formKey.currentState !.validate() ){
            ShopLoginCubit.get(context).userLogin(
            email: emailController.text,
            password: passwordController.text);
            }

            },

            background: Colors.blueGrey),
            fallback: (context) =>CircularProgressIndicator(),),

            SizedBox(
            height: 15,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Don\'t have an account?'),
            TextButton(
            onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (ShopRegisterScreen())));
            },
            child: Text(
            'Register Now',
            style: TextStyle(color: Colors.blueGrey),
            ))
            ],
            ),

            ],
            ),
            ),
            ),
            ),
            ),
            );
          },
        ),
      ),
    );
  }
}
