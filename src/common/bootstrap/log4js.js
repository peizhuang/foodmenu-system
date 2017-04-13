import log4js from 'log4js';

const logConfig = think.config("log4js");
if (think.isDirAsync(think.ROOT_PATH + "/logs")) {
    think.mkdir(think.ROOT_PATH + "/logs");
}
log4js.configure(logConfig);
global.__DEFAULT_LOGGER = log4js.getLogger();
global.__FOOD_LOGGER = log4js.getLogger('food');
global.__TABLE_LOGGER = log4js.getLogger('table');
global.__RESERVATION_LOGGER = log4js.getLogger('reservation');
global.logger = {};

export default global;