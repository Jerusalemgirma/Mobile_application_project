import 'package:flutter_application_6/register/index.dart';
import 'package:flutter_application_6/register/models/register_request_model.dart';
import 'package:flutter_application_6/register/services/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part  'register_event.dart';
part 'register_state.dart';


signupe reg=new signupe();
var firstname=reg.firstname;
var lastname=reg.lastname;
var username=reg.username;
var email=reg.email;
var password=reg.password;
var confrimpassword=reg.confrimpassword;
class toLoginBloc extends Bloc<registerEvent,registerState>{
  toLoginBloc():super(Idle()){
    on<toLogin>(_toLogin);
  }
}
void _toLogin(toLogin event,Emitter emit){
  emit(Nav());

}





class registerBloc extends Bloc<registerEvent,registerState>{
  registerBloc():super(Idle()){
    on<Signup>(_onSignup);
    }

    void _onSignup(Signup event,Emitter emit)async{
      emit(SignIn());
      await Future.delayed(const Duration(seconds: 3));


      RegisterRequestModel model=RegisterRequestModel(
        firstname: firstname, 
        lastname: lastname, 
        username: username,
         email: email,
          password: password, 
          confrimpassword: confrimpassword);

          APIService.register(model).then((response){

            if(response.userDetails!=null){
              emit(SignupSuccessful());

            }else{
              emit(SignupFailed());
            }

          });
      
    }

} 

