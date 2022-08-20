import 'package:flutter/material.dart';
import 'package:hami_launch/models/banner.dart';
import '/models/company.dart';

class CompanyHelper
{
  static List<Company> SarchResultCompany=CompanySearchResultRawData
      .map((data)=>Company(
        image: data['image'].toString(),
        title: data['title'].toString(),
        Subtitle: data['Subtitle'].toString(),
        number: data['number'].toString()
      ))
      .toList();


  static List<Company> SarchResultDesktop=DesktopSearchResultRawData
      .map((data)=>Company(
        image: data['image'].toString(),
        title: data['title'].toString(),
        Subtitle: data['Subtitle'].toString(),
        number: data['number'].toString()
      ))
      .toList();

  // static List<HomeBanner> banner=bannerData
  //     .map((data)=>HomeBanner(
  //       title: data['title'].toString(),
  //       photo: data['photo'].toString(),
  //       Companiess: Companies.toList(data['Companies']) ,
  //     ))
  //     .toList();
  
  
}

// var bannerData=
// [
//   {
//     'title':'spotlight',
//     'photo':'',
//     'Companies':
//     [
//       {
//         'name': 'chopped tomato',
//         'size': '3',
//       },
//     ] 
//   }
// ];

var CompanySearchResultRawData=
[
  {
    'image':'https://cryptologos.cc/logos/terra-luna-luna-logo.png',
    'title':'Terra',
    'Subtitle':'LUNA',
    'number':'#12'
  },


  //2
  {
    'image':'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png',
    'title':'Polygan',
    'Subtitle':'MATIC',
    'number':'#12'
  },

  //3
  {
    'image':'https://cryptologos.cc/logos/terra-luna-luna-logo.png',
    'title':'Terra Classic',
    'Subtitle':'LUNC',
    'number':'#12'
  },

  //4
  {
    'image':'https://assets.gadgets360cdn.com/img/crypto/weth-og-logo.png',
    'title':'WETH',
    'Subtitle':'WETH',
    'number':'#12'
  },

  //5
  {
    'image':'https://archive.org/download/github.com-ethereum-remix-project_-_2021-11-25_15-56-04/cover.jpg',
    'title':'Etherium',
    'Subtitle':'ETH',
    'number':'#12'
  }

];

var DesktopSearchResultRawData=
[
  {
    'image':'https://cryptologos.cc/logos/terra-luna-luna-logo.png',
    'title':'Terra',
    'Subtitle':'LUNA',
    'number':'#12'
  },


  //2
  {
    'image':'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png',
    'title':'Polygan',
    'Subtitle':'MATIC',
    'number':'#12'
  },

  //3
  {
    'image':'https://cryptologos.cc/logos/terra-luna-luna-logo.png',
    'title':'Terra Classic',
    'Subtitle':'LUNC',
    'number':'#12'
  },

  //4
  {
    'image':'https://assets.gadgets360cdn.com/img/crypto/weth-og-logo.png',
    'title':'WETH',
    'Subtitle':'WETH',
    'number':'#12'
  },

  //5
  {
    'image':'https://archive.org/download/github.com-ethereum-remix-project_-_2021-11-25_15-56-04/cover.jpg',
    'title':'Etherium',
    'Subtitle':'ETH',
    'number':'#12'
  },


  //6desk
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/7c5ff577-a68d-49c5-02cd-3d83637b0b00',
    'title':'Cryto.com',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //7desk
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/a7f416de-aa03-4c5e-3280-ab49269aef00',
    'title':'Ledger',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //8
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/5e481041-dc3c-4a81-373a-76bbde91b800',
    'title':'Tokenary',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //9
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/9f259366-0bcd-4817-0af9-f78773e41900',
    'title':'Infinity Wallet',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //10
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/d740b48c-2b55-4a27-b5f5-d2188200ca00',
    'title':'Wallet 3',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //11
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/6013a9a1-4a67-45bb-fc24-27c11eb13900',
    'title':'SecuX',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //12
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/c39b3a16-1a38-4588-f089-cb7aeb584700',
    'title':'Ambire',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //13
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/7e1514ba-932d-415d-1bdb-bccb6c2cbc00',
    'title':'Fireblocks',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //14
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/df94578e-19be-4f00-258f-2470343e7b00',
    'title':'RICE Wallet',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //15
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/64ccf07c-1fba-4473-49e8-dc446e5a5000',
    'title':'Vision',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //16
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/dda0f0fb-34e8-4a57-dcea-b008e7d1ff00',
    'title':'KEYRING PRO',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //17
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/37d7a10f-d94d-4a56-c30e-267e8afbd500',
    'title':'Paper',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //18
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/34ab7558-9e64-4436-f4e6-9069f2533d00',
    'title':'Wallet3',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //19
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/80ab63a2-1b32-4140-3577-9fbc8ea82e00',
    'title':'ApolloX',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //20
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/f216b371-96cf-409a-9d88-296392b85800',
    'title':'Zerion',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //21
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/b2d5c39c-a485-4efa-5736-a782204e4a00',
    'title':'Sequence',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //22
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/93f81bf3-a7f1-4620-013e-5959432e3500',
    'title':'PunkWallet',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //23
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/3ccbd966-97e8-45a0-1ceb-6141a8978e00',
    'title':'KryptoGo',
    'Subtitle':'ETH',
    'number':'#12'
  },

  //24
  {
    'image':'https://registry.walletconnect.com/api/v2/logo/sm/e937b947-4a70-4f8d-3795-80bb7a054100',
    'title':'NFT',
    'Subtitle':'ETH',
    'number':'#12'
  }

];
