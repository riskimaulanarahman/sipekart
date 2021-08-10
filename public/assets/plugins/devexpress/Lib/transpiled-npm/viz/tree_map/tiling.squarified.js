"use strict";

exports.default = void 0;

var _tilingSquarified = _interopRequireDefault(require("./tiling.squarified.base"));

var _tiling = require("./tiling");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var _max = Math.max;

function accumulate(total, current) {
  return _max(total, current);
}

function squarified(data) {
  return (0, _tilingSquarified.default)(data, accumulate, false);
}

(0, _tiling.addAlgorithm)('squarified', squarified);
var _default = squarified;
exports.default = _default;
module.exports = exports.default;