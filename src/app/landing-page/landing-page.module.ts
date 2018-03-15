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
import { MethodComponent } from './method/method.component';
import { ProsTestimonialsComponent } from './pros-testimonials/pros-testimonials.component';
import { FrequentlyAskedComponent } from './frequently-asked/frequently-asked.component';

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
        FooterComponent,
        MethodComponent,
        ProsTestimonialsComponent,
        FrequentlyAskedComponent
    ]
})
export class LandingPageModule { }
