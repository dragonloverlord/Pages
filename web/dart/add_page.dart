library main.add_page;

import 'dart:html';

import 'form.dart';

Element overlayDiv = new Element.tag('div');
Element closeButton = new Element.tag('button');


class AddPage {
  static void main() {
    querySelector('#add-page').addEventListener('click', addPageDialog);
  }
  
  static void addPageDialog(mouseEvent) {
    addShader();
    addCloseButton();
    Form.addForm();
  }
  
  static void addShader() {
    overlayDiv = new Element.tag('div');
    overlayDiv.setAttribute('id', 'overlay-div');
    querySelector('#body').append(overlayDiv);
  }
  
  static void addCloseButton() {
    closeButton = new Element.tag('button');
    closeButton.setAttribute('id', 'close-button');
    closeButton.text = 'X';
    querySelector('#overlay-div').append(closeButton);
    
    querySelector('#close-button').addEventListener('click', closeButtonActions);
  }
  
  static void closeButtonActions(mouseEvent) {
    querySelector('#overlay-div').remove();
  }
}