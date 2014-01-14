//
//  VHMFormularioContatoViewController.h
//  Contatos
//
//  Created by ios4212 on 13/01/14.
//  Copyright (c) 2014 caelum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VHMFormularioContatoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nome;
@property (weak, nonatomic) IBOutlet UITextField *telefone;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *endereco;
@property (weak, nonatomic) IBOutlet UITextField *site;
@property (weak, atomic) NSMutableArray *contatos;

- (IBAction)proximoCampo:(UITextField *)campoAtual;


@end
