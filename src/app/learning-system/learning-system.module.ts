import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { LearningSystemRoutingModule } from './learning-system-routing.module';
import { LearningSystemComponent } from './learning-system.component';

@NgModule({
    imports: [
        CommonModule,
        LearningSystemRoutingModule
    ],
    declarations: [LearningSystemComponent]
})
export class LearningSystemModule { }
