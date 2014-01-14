//
//  VHMFormularioContatoViewController.m
//  Contatos
//
//  Created by ios4212 on 13/01/14.
//  Copyright (c) 2014 caelum. All rights reserved.
//

#import "VHMFormularioContatoViewController.h"
#import "VHMContato.h"

@interface VHMFormularioContatoViewController ()

@end

@implementation VHMFormularioContatoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)init
{
    self = [super init];
    if(self){
        
        [self.navigationItem setTitle:@"Cadastro"];
        UIBarButtonItem *btnAdd = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(criaContato)];
        [self.navigationItem setRightBarButtonItem:btnAdd];
    }
    return self;
}

- (void)criaContato
{
    VHMContato *contato = [self capturaDadosDoFormulario];
    
    [self.contatos addObject:contato];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (VHMContato *)capturaDadosDoFormulario
{
    VHMContato *contato = [[VHMContato alloc] init];
    
    contato.nome = self.nome.text;
    contato.telefone = self.telefone.text;
    contato.email = self.email.text;
    contato.endereco = self.endereco.text;
    contato.site = self.site.text;
    
    NSLog(@"Contatos: %@", self.contatos);
    
    return contato;
}

- (IBAction)proximoCampo:(UITextField *)campoAtual
{
    NSInteger tag = campoAtual.tag+1;
    UIResponder *proximoCampo = [self.view viewWithTag:tag];
    
    if (proximoCampo) {
        [proximoCampo becomeFirstResponder];
    }else{
        [self.view endEditing:YES];
    }
}

@end
