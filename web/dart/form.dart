library main.add_page.form;

import 'dart:html';

Element formDiv = null;
Element textInputLabel = null;
Element textInput = null;
Element urlInput = null;

class Form {
  static void addForm(){
    formDiv = new Element.tag('div');
    formDiv.setAttribute('id', 'form-div');
    querySelector('#overlay-div').append(formDiv);
    
    addTextInputLabel();
    addTextInput();
    addUrlInput();
  }
  
  static void addTextInputLabel(){
    textInputLabel = new Element.tag('span');
    textInputLabel.setAttribute('id', 'text-input-label');
    textInputLabel.setAttribute('class', 'input-label');
    textInputLabel.text = 'Name:&nbsp;';
    querySelector('#form-div').append(textInputLabel);
  }
  
  static void addTextInput(){
    textInput = new Element.tag('input');
    textInput.setAttribute('id', 'text-input');
    textInput.setAttribute('class', 'input');
    textInput.setAttribute('type', 'text');
    textInput.setAttribute('label', 'Name');
    querySelector('#form-div').append(textInput);
  }
  
  static void addUrlInput(){
    urlInput = new Element.tag('input');
    urlInput.setAttribute('id', 'url-input');
    urlInput.setAttribute('class', 'input');
    urlInput.setAttribute('type', 'text');
    urlInput.setAttribute('label', 'Url');
    querySelector('#form-div').append(urlInput);
  }
}