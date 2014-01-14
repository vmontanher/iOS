//
//  VHMContato.h
//  Contatos
//
//  Created by ios4212 on 13/01/14.
//  Copyright (c) 2014 caelum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VHMContato : NSObject <NSCoding>

@property (strong,atomic) NSString * nome;
@property (strong,atomic) NSString * telefone;
@property (strong,atomic) NSString * email;
@property (strong,atomic) NSString * endereco;
@property (strong,atomic) NSString * site;

@end
