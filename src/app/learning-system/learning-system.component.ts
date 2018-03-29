import { Component, OnInit, AfterViewInit } from '@angular/core';

@Component({
    selector: 'app-learning-system',
    templateUrl: './learning-system.component.html',
    styleUrls: [ './learning-system.component.scss' ]
})
export class LearningSystemComponent implements OnInit, AfterViewInit {
    constructor() { }
    ngOnInit() {
    }

    async ngAfterViewInit() {
        await this.loadScript('/assets/learning/vendors/js/vendors.min.js');
        await this.loadScript('/assets/learning/vendors/js/charts/chart.min.js');
        await this.loadScript('/assets/learning/vendors/js/charts/echarts/echarts.js');
        // await this.loadScript('/assets/learning/js/core/app-menu.js');
        // await this.loadScript('/assets/learning/js/core/app.js');
        await this.loadScript('/assets/learning/js/scripts/customizer.js');
        await this.loadScript('/assets/learning/js/scripts/pages/dashboard-crypto.js');
    }

    private loadScript(scriptUrl: string) {
        return new Promise((resolve, reject) => {
            const scriptElement = document.createElement('script');
            scriptElement.src = scriptUrl;
            scriptElement.onload = resolve;
            document.body.appendChild(scriptElement);
        });
    }
}
