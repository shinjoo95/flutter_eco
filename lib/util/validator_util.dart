
import 'package:validators/validators.dart';

Function validateUsername(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 매꿔라.";
    }else if(!isAlphanumeric(value)){
      return "아이디 한글 안됨.";
    }else if(value.length < 5){
      return "아이디가 너무 짧아";
    }else{
      return null;
    }
  };
}
Function validatePassword(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 안됨.";
    }else if(value.length < 6){
      return "비밀번호가 너무 짧습니다.";
    }else{
      return null;
    }
  };
}
Function validateEmail(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 안됨.";
    }else if(!isAlphanumeric(value)){
      return "이메일 확인 부탁.";
    }else if(isEmail(value)){
      return "이메일 확인 부탁.";
    }else{
      return null;
    }
  };
}

Function validateNumber(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 안됨.";
    }else if(isAlpha(value)){
      return "숫자로 쓰셈";
    }else if(value.length != 11){
      return "똑바로 쓰셈";
    }else{
      return null;
    }
  };
}

Function validateBirth(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 안됨.";
    }else if(isAlpha(value)){
      return "숫자로 쓰셈";
    }else if(value.length != 6){
      return "똑바로 쓰셈";
    }else{
      return null;
    }
  };
}
