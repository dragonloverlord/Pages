library main.add_page;

import 'dart:html';

import 'form.dart';

String id = 'blank';
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
    id = 'overlay-div';
    overlayDiv = new Element.tag('div');
    overlayDiv.setAttribute('id', id);
    querySelector('#body').append(overlayDiv);
  }
  
  static void addCloseButton() {
    id = 'close-button';
    closeButton = new Element.tag('button');
    closeButton.setAttribute('id', id);
    closeButton.text = 'X';
    querySelector('#overlay-div').append(closeButton);
    
    querySelector('#close-button').addEventListener('click', closeButtonActions);
  }
  
  static void closeButtonActions(mouseEvent) {
    querySelector('#overlay-div').remove();
  }
}