import 'package:flutter/material.dart';
import 'package:flutter_shoe/constants/assets.dart';

class Shoe {
  String shoImage;
  String name;
  String logo;
  int price;
  String detail;

  Shoe(this.shoImage, this.name, this.logo, this.price, this.detail);
}

List<Shoe> shoeList = [
  Shoe(Assets.assetsShoe7, 'Shoe 1', Assets.assetsLogo1, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe2, 'Shoe 2', Assets.assetsLogo2, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe3, 'Shoe 3', Assets.assetsLogo3, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe4, 'Shoe 4', Assets.assetsLogo2, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe5, 'Shoe 5', Assets.assetsLogo1, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe6, 'Shoe 6', Assets.assetsLogo3, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe1, 'Shoe 7', Assets.assetsLogo2, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe8, 'Shoe 8', Assets.assetsLogo2, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe9, 'Shoe 9', Assets.assetsLogo1, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe10, 'Shoe 10', Assets.assetsLogo3, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
  Shoe(Assets.assetsShoe11, 'Shoe 11', Assets.assetsLogo1, 135,
      'A classic, remastered. This AJ1 balances Yellow Ochre and Black against a tumbled Sail leather backdrop for a clean, sophisticated finish. Refined details and retro branding bring it all togethoer: old-meets-news style as smooth as MJ\'s fadeaway'),
];
