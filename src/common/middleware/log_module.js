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

        const moduleName = this.http.module;
        switch (moduleName) {
            case 'reservation':
                logger = __RESERVATION_LOGGER;
                break;
            case 'food':
                logger = __FOOD_LOGGER;
                break;
            case 'table':
                logger = __TABLE_LOGGER;
                break;
            default:
                logger = __DEFAULT_LOGGER;
        }

        logger.info('url:', `[${this.http.method}]`, this.http.url);
        const postParams = this.http.post();
        let tempPass;
        if (postParams.pass) {
            tempPass = postParams.pass;
            delete postParams.pass;
        }
        ;

        // logger.info('params:', '[post]:', this.http.post());
        // logger.info('params:', '[get]:', this.http.get());


        if (!!tempPass) {
            postParams.pass = tempPass;
        }

        return;
    }
}