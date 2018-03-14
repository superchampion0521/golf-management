import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { LandingPageRoutingModule } from './landing-page-routing.module';
import { LandingPageComponent } from './landing-page.component';
import { HeaderComponent } from './header/header.component';
import { SponsorsComponent } from './sponsors/sponsors.component';
import { IconSelectorComponent } from './icon-selector/icon-selector.component';
import { PlanComponent } from './plan/plan.component';
import { StatsComponent } from './stats/stats.component';
import { ForumComponent } from './forum/forum.component';
import { KnowledgeComponent } from './knowledge/knowledge.component';
import { FooterComponent } from './footer/footer.component';

@NgModule({
    imports: [
        CommonModule,
        LandingPageRoutingModule,
    ],
    declarations: [
        LandingPageComponent,
        HeaderComponent,
        SponsorsComponent,
        IconSelectorComponent,
        PlanComponent,
        StatsComponent,
        ForumComponent,
        KnowledgeComponent,
        FooterComponent
    ]
})
export class LandingPageModule { }
