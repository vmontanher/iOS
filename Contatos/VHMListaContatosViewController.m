//
//  VHMListaContatosViewController.m
//  Contatos
//
//  Created by ios4212 on 14/01/14.
//  Copyright (c) 2014 caelum. All rights reserved.
//

#import "VHMListaContatosViewController.h"
#import "VHMFormularioContatoViewController.h"
#import "VHMContato.h"

@implementation VHMListaContatosViewController

- (id) init
{
    self = [super init];
    if(self){
        [self.navigationItem setTitle:@"Contatos"];
        
        UIBarButtonItem *btnAdd = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        
        [self.navigationItem setRightBarButtonItem:btnAdd];
        
    }
    return self;
}

- (void)exibeFormulario
{
    VHMFormularioContatoViewController *formulario = [[VHMFormularioContatoViewController alloc] init];
    formulario.contatos = self.contatos;
    [self.navigationController pushViewController:formulario animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return[self.contatos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *pool = @"contatos";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:pool];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:pool];
    }
    VHMContato *contato = self.contatos[indexPath.row];
    
    cell.textLabel.text = contato.nome;
    cell.detailTextLabel.text = contato.telefone;
    return cell;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


@end
