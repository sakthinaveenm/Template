const { to } = require('await-to-js');

module.exports.to = async (promise) => {
    let err, res;
    [err, res] = await to(promise);
    if (err) return [err, null];
    return [null, res];
}

module.exports.ReE = function (res, err, code) {
    try {

        if (typeof err === 'object' && err.message !== 'undefined') err = err.message;
        if (typeof code !== 'undefined') res.statusCode = code;
        return res.json({ success: false, error: err });
    } catch (err) {
        let send_data = { success: false };
        res = {}
        if (typeof err === 'object' && err.message !== 'undefined') err = err.message;
        if (typeof code !== 'undefined') res.statusCode = code;
        else { res.statusCode = 400 }
        res = { ...res, ...send_data };
        return res;
    }

}

module.exports.ReS = function (res, data, code) {
    try {

        let send_data = { success: true };
        if (typeof data === 'object') send_data = Object.assign(data, send_data);
        if (typeof code !== 'undefined') res.statusCode = code;
        else { res.statusCode = 400 }
        return res.json(send_data);
    } catch (err) {
        let send_data = { success: true };
        res = {}
        if (typeof data === 'object') send_data = Object.assign(data, send_data);
        if (typeof code !== 'undefined') res.statusCode = code;
        else { res.statusCode = 400 }
        res = { ...res, ...send_data };
        return res;
    }
}


module.exports.TE = function (err_message, log) {
    if (log === true) {
        console.error(err_message)
    }
    throw new Error(err_message);
}

module.exports.isNull = function (field) {
    return (
        typeof field === 'undefined' ||
        field === 'undefined' ||
        field === "" ||
        field === null
    )
}

module.exports.isEmpty = function (obj) {
    return !Object.keys(obj).length > 0;
}

module.exports.validateEmail = (email) => {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}