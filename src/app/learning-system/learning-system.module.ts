import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { LearningSystemRoutingModule } from './learning-system-routing.module';
import { LearningSystemComponent } from './learning-system.component';
import { SideMenuComponent } from './side-menu/side-menu.component';

@NgModule({
    imports: [
        CommonModule,
        LearningSystemRoutingModule
    ],
    declarations: [LearningSystemComponent, SideMenuComponent]
})
export class LearningSystemModule { }
