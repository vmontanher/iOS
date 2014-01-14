//
//  VHMContato.m
//  Contatos
//
//  Created by ios4212 on 13/01/14.
//  Copyright (c) 2014 caelum. All rights reserved.
//

#import "VHMContato.h"

@implementation VHMContato

- (NSString *) description
{
    return [NSString stringWithFormat:@"%@ <%@>",self.nome, self.email];
}

- (id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self){
        self.nome = [aDecoder decodeObjectForKey:@"nome"];
        self.telefone = [aDecoder decodeObjectForKey:@"telefone"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.endereco = [aDecoder decodeObjectForKey:@"endereco"];
        self.site = [aDecoder decodeObjectForKey:@"site"];
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.nome forKey:@"nome"];
    [aCoder encodeObject:self.telefone forKey:@"telefone"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.endereco forKey:@"endereco"];
    [aCoder encodeObject:self.site forKey:@"site"];
}

@end
