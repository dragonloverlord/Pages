library main.add_page.form.logic;

import 'dart:html';

import 'links.dart';


class Logic {
  static void main(){
    querySelector('#submit-button').addEventListener('click', submitButtonClicked);
    querySelector('#cancel-button').addEventListener('click', cancelButtonClicked);
  }

  static void submitButtonClicked(mouseEvent){
    InputElement textInputValue = querySelector('#text-input');
    InputElement urlInputValue = querySelector('#url-input');

    Links.addLink(urlInputValue.value, textInputValue.value);
  }

  static void cancelButtonClicked(mouseEvent){
    querySelector('#overlay-div').remove();
  }
}