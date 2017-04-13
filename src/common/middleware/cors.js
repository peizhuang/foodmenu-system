/**
 * Created by san on 2017/4/13.
 */
'use strict';
/**
 * middleware
 */
export default class extends think.middleware.base {
    /**
     * run
     * @return {} []
     */
    async run() {
        this.http.header('Access-Control-Allow-Origin', this.http.header('origin') || '*');
        this.http.header('Access-Control-Allow-Headers', 'Content-Type,Content-Length, Authorization, Accept,X-Requested-With');
        this.http.header('Access-Control-Request-Method', 'GET,POST,PUT,DELETE');
        this.http.header('Access-Control-Allow-Credentials', 'true');
        return;
    }
}