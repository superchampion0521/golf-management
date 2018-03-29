import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { LearningSystemComponent } from './learning-system.component';

const routes: Routes = [
    {
        path: '',
        component: LearningSystemComponent
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class LearningSystemRoutingModule { }
