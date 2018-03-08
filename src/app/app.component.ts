import { Component } from '@angular/core';
import { Http, Headers } from '@angular/http';
import { Item } from './item';
import { NgForm } from '@angular/forms';
import 'rxjs/add/operator/toPromise';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
    title = 'Laravel Angular 4 App';
    private headers = new Headers({
        'Content-Type': 'application/json'
    });
    constructor(private _http: Http) { }
    onSubmit(form: NgForm): Promise<Item> {
        console.log(JSON.stringify(form.value));
        return this._http.post('http://127.0.0.1:8000/api/items', JSON.stringify(form.value), { headers: this.headers })
        .toPromise()
        .then(res => res.json().data)
        .catch(this.handleError);
    }
    private handleError(error: any): Promise<any> {
        console.error('An error occured', error);
        return Promise.reject(error.message || error);
    }
}
