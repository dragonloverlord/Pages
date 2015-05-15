library main.add_page.form;

import 'dart:html';

Element formDiv = new Element.tag('div');
Element textInputLabel = new Element.tag('span');
Element textInput = new Element.tag('input');
Element urlInputLabel = new Element.tag('span');
Element urlInput = new Element.tag('input');
Element submitButton = new Element.tag('button');
Element cancelButton = new Element.tag('button');


class Form {
  static void addForm(){
    formDiv = new Element.tag('div');
    formDiv.setAttribute('id', 'form-div');
    querySelector('#overlay-div').append(formDiv);
    
    addTextInputLabel();
    addTextInput();
    addUrlInputLabel();
    addUrlInput();
    addSubmitButton();
    addCancelButton();
  }
  
  static void addTextInputLabel(){
    textInputLabel = new Element.tag('span');
    textInputLabel.setAttribute('id', 'text-input-label');
    textInputLabel.setAttribute('class', 'input-label');
    textInputLabel.text = 'Name: ';
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
  
  static void addUrlInputLabel(){
    urlInputLabel = new Element.tag('span');
    urlInputLabel.setAttribute('id', 'url-input-label');
    urlInputLabel.setAttribute('class', 'input-label');
    urlInputLabel.text = 'URL: ';
    querySelector('#form-div').append(urlInputLabel);
  }
  
  static void addUrlInput(){
    urlInput = new Element.tag('input');
    urlInput.setAttribute('id', 'url-input');
    urlInput.setAttribute('class', 'input');
    urlInput.setAttribute('type', 'text');
    urlInput.setAttribute('label', 'Url');
    querySelector('#form-div').append(urlInput);
  }
  
  static void addSubmitButton(){
    submitButton = new Element.tag('button');
    submitButton.setAttribute('id', 'submit-button');
    submitButton.setAttribute('class', 'form-button');
    submitButton.setAttribute('label', 'Submit');
    submitButton.text = 'Submit';
    querySelector('#form-div').append(submitButton);
  }
  
  static void addCancelButton(){
    cancelButton = new Element.tag('button');
    cancelButton.setAttribute('id', 'cancel-button');
    cancelButton.setAttribute('class', 'form-button');
    cancelButton.setAttribute('label', 'Cancel');
    cancelButton.text = 'Cancel';
    querySelector('#form-div').append(cancelButton);
  }
}