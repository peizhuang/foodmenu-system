/**
 * Created by san on 2017/4/12.
 */
'use strict';

export default {
    appenders: [{
        "type": 'console'

    }, {
        "type": "dateFile",
        "filename": "logs/bolap.log",
        "maxLogSize": 1024000,
        "pattern": "-yyyy-MM-dd.log",
        "alwaysIncludePattern": true,
        // "category": "home"
    }],
    levels: {
        "[all]": "trace",
        // "home": 'trace',
        // "project": "trace"
    },
    replaceConsole: false
}