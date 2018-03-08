import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { LandingPageComponent } from './landing-page/landing-page.component';
import { HeaderComponent } from './landing-page/header/header.component';
import { SponsorsComponent } from './landing-page/sponsors/sponsors.component';
import { IconSelectorComponent } from './landing-page/icon-selector/icon-selector.component';
import { PlanComponent } from './landing-page/plan/plan.component';
import { StatsComponent } from './landing-page/stats/stats.component';
import { ForumComponent } from './landing-page/forum/forum.component';

@NgModule({
    declarations: [
        AppComponent,
        LandingPageComponent,
        HeaderComponent,
        SponsorsComponent,
        IconSelectorComponent,
        PlanComponent,
        StatsComponent,
        ForumComponent
    ],
    imports: [
        BrowserModule,
        FormsModule,
        HttpModule
    ],
    providers: [],
    bootstrap: [AppComponent]
})
export class AppModule { }
