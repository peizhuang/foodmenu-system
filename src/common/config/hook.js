'use strict';

/**
 * hook config
 * https://thinkjs.org/doc/middleware.html#toc-df6
 */
export default {
    logic_before: ["prepend", "log_module"],
    controller_before: ["prepend", "cors"]
}