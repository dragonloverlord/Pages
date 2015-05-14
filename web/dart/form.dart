library main.add_page.form;

import 'dart:html';

Element formDiv = null;

class Form {
  static void addForm(){
    formDiv = new Element.tag('div');
    formDiv.setAttribute('id', 'form-div');
    querySelector('#overlay-div').append(formDiv);
  }
}