library main;

import 'dart/links.dart';
import 'dart/add_page.dart';

void main() {
  AddPage.main();

  url = 'https://www.google.com/';
  text = 'Google';
  Links.addLink(url, text);
  
  url = 'https://images.google.com/';
  text = 'Google Images';
  Links.addLink(url, text);
  
  url = 'https://translate.google.com/';
  text = 'Google Translate';
  Links.addLink(url, text);
  
  url = 'https://news.google.com/';
  text = 'Google News';
  Links.addLink(url, text);
  
  url = 'https://admin.google.com/';
  text = 'Google Admin';
  Links.addLink(url, text);
  
  url = 'https://accounts.google.com/';
  text = 'Google Accounts';
  Links.addLink(url, text);
}