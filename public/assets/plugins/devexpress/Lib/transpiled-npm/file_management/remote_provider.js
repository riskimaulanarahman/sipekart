"use strict";

exports.default = void 0;

var _renderer = _interopRequireDefault(require("../core/renderer"));

var _ajax = _interopRequireDefault(require("../core/utils/ajax"));

var _common = require("../core/utils/common");

var _guid = _interopRequireDefault(require("../core/guid"));

var _window = require("../core/utils/window");

var _iterator = require("../core/utils/iterator");

var _deferred = require("../core/utils/deferred");

var _events_engine = _interopRequireDefault(require("../events/core/events_engine"));

var _provider_base = _interopRequireDefault(require("./provider_base"));

var _data = require("../core/utils/data");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _inheritsLoose(subClass, superClass) { subClass.prototype = Object.create(superClass.prototype); subClass.prototype.constructor = subClass; _setPrototypeOf(subClass, superClass); }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

var window = (0, _window.getWindow)();
var FILE_CHUNK_BLOB_NAME = 'chunk';

var RemoteFileSystemProvider = /*#__PURE__*/function (_FileSystemProviderBa) {
  _inheritsLoose(RemoteFileSystemProvider, _FileSystemProviderBa);

  function RemoteFileSystemProvider(options) {
    var _this;

    options = (0, _common.ensureDefined)(options, {});
    _this = _FileSystemProviderBa.call(this, options) || this;
    _this._endpointUrl = options.endpointUrl;
    _this._hasSubDirsGetter = (0, _data.compileGetter)(options.hasSubDirectoriesExpr || 'hasSubDirectories');
    return _this;
  }

  var _proto = RemoteFileSystemProvider.prototype;

  _proto.getItems = function getItems(parentDir) {
    var _this2 = this;

    var pathInfo = parentDir.getFullPathInfo();
    return this._getEntriesByPath(pathInfo).then(function (result) {
      return _this2._convertDataObjectsToFileItems(result.result, pathInfo);
    });
  };

  _proto.renameItem = function renameItem(item, name) {
    return this._executeRequest('Rename', {
      pathInfo: item.getFullPathInfo(),
      isDirectory: item.isDirectory,
      name: name
    });
  };

  _proto.createDirectory = function createDirectory(parentDir, name) {
    return this._executeRequest('CreateDir', {
      pathInfo: parentDir.getFullPathInfo(),
      name: name
    });
  };

  _proto.deleteItems = function deleteItems(items) {
    var _this3 = this;

    return items.map(function (item) {
      return _this3._executeRequest('Remove', {
        pathInfo: item.getFullPathInfo(),
        isDirectory: item.isDirectory
      });
    });
  };

  _proto.moveItems = function moveItems(items, destinationDirectory) {
    var _this4 = this;

    return items.map(function (item) {
      return _this4._executeRequest('Move', {
        sourcePathInfo: item.getFullPathInfo(),
        sourceIsDirectory: item.isDirectory,
        destinationPathInfo: destinationDirectory.getFullPathInfo()
      });
    });
  };

  _proto.copyItems = function copyItems(items, destinationFolder) {
    var _this5 = this;

    return items.map(function (item) {
      return _this5._executeRequest('Copy', {
        sourcePathInfo: item.getFullPathInfo(),
        sourceIsDirectory: item.isDirectory,
        destinationPathInfo: destinationFolder.getFullPathInfo()
      });
    });
  };

  _proto.uploadFileChunk = function uploadFileChunk(fileData, chunksInfo, destinationDirectory) {
    if (chunksInfo.chunkIndex === 0) {
      chunksInfo.customData.uploadId = new _guid.default();
    }

    var args = {
      destinationPathInfo: destinationDirectory.getFullPathInfo(),
      chunkMetadata: JSON.stringify({
        UploadId: chunksInfo.customData.uploadId,
        FileName: fileData.name,
        Index: chunksInfo.chunkIndex,
        TotalCount: chunksInfo.chunkCount,
        FileSize: fileData.size
      })
    };
    var formData = new window.FormData();
    formData.append(FILE_CHUNK_BLOB_NAME, chunksInfo.chunkBlob);
    formData.append('arguments', JSON.stringify(args));
    formData.append('command', 'UploadChunk');
    var deferred = new _deferred.Deferred();

    _ajax.default.sendRequest({
      url: this._endpointUrl,
      method: 'POST',
      dataType: 'json',
      data: formData,
      upload: {
        onprogress: _common.noop,
        onloadstart: _common.noop,
        onabort: _common.noop
      },
      cache: false
    }).done(function (result) {
      !result.success && deferred.reject(result) || deferred.resolve();
    }).fail(deferred.reject);

    return deferred.promise();
  };

  _proto.abortFileUpload = function abortFileUpload(fileData, chunksInfo, destinationDirectory) {
    return this._executeRequest('AbortUpload', {
      uploadId: chunksInfo.customData.uploadId
    });
  };

  _proto.downloadItems = function downloadItems(items) {
    var args = this._getDownloadArgs(items);

    var $form = (0, _renderer.default)('<form>').css({
      display: 'none'
    }).attr({
      method: 'post',
      action: args.url
    });
    ['command', 'arguments'].forEach(function (name) {
      (0, _renderer.default)('<input>').attr({
        type: 'hidden',
        name: name,
        value: args[name]
      }).appendTo($form);
    });
    $form.appendTo('body');

    _events_engine.default.trigger($form, 'submit');

    setTimeout(function () {
      return $form.remove();
    });
  };

  _proto.getItemsContent = function getItemsContent(items) {
    var args = this._getDownloadArgs(items);

    var formData = new window.FormData();
    formData.append('command', args.command);
    formData.append('arguments', args.arguments);
    return _ajax.default.sendRequest({
      url: args.url,
      method: 'POST',
      responseType: 'arraybuffer',
      data: formData,
      upload: {
        onprogress: _common.noop,
        onloadstart: _common.noop,
        onabort: _common.noop
      },
      cache: false
    });
  };

  _proto._getDownloadArgs = function _getDownloadArgs(items) {
    var pathInfoList = items.map(function (item) {
      return item.getFullPathInfo();
    });
    var args = {
      pathInfoList: pathInfoList
    };
    var argsStr = JSON.stringify(args);
    return {
      url: this._endpointUrl,
      arguments: argsStr,
      command: 'Download'
    };
  };

  _proto._getItemsIds = function _getItemsIds(items) {
    return items.map(function (it) {
      return it.relativeName;
    });
  };

  _proto._getEntriesByPath = function _getEntriesByPath(pathInfo) {
    return this._executeRequest('GetDirContents', {
      pathInfo: pathInfo
    });
  };

  _proto._executeRequest = function _executeRequest(command, args) {
    var method = command === 'GetDirContents' ? 'GET' : 'POST';
    var deferred = new _deferred.Deferred();

    _ajax.default.sendRequest({
      url: this._getEndpointUrl(command, args),
      method: method,
      dataType: 'json',
      cache: false
    }).then(function (result) {
      !result.success && deferred.reject(result) || deferred.resolve(result);
    }, function (e) {
      return deferred.reject(e);
    });

    return deferred.promise();
  };

  _proto._getEndpointUrl = function _getEndpointUrl(command, args) {
    var queryString = this._getQueryString({
      command: command,
      arguments: JSON.stringify(args)
    });

    var separator = this._endpointUrl && this._endpointUrl.indexOf('?') > 0 ? '&' : '?';
    return this._endpointUrl + separator + queryString;
  };

  _proto._getQueryString = function _getQueryString(params) {
    var pairs = [];
    var keys = Object.keys(params);

    for (var i = 0; i < keys.length; i++) {
      var key = keys[i];
      var value = params[key];

      if (value === undefined) {
        continue;
      }

      if (value === null) {
        value = '';
      }

      if (Array.isArray(value)) {
        this._processQueryStringArrayParam(key, value, pairs);
      } else {
        var pair = this._getQueryStringPair(key, value);

        pairs.push(pair);
      }
    }

    return pairs.join('&');
  };

  _proto._processQueryStringArrayParam = function _processQueryStringArrayParam(key, array, pairs) {
    var _this6 = this;

    (0, _iterator.each)(array, function (_, item) {
      var pair = _this6._getQueryStringPair(key, item);

      pairs.push(pair);
    });
  };

  _proto._getQueryStringPair = function _getQueryStringPair(key, value) {
    return encodeURIComponent(key) + '=' + encodeURIComponent(value);
  };

  _proto._hasSubDirs = function _hasSubDirs(dataObj) {
    var hasSubDirs = this._hasSubDirsGetter(dataObj);

    return typeof hasSubDirs === 'boolean' ? hasSubDirs : true;
  };

  _proto._getKeyExpr = function _getKeyExpr(options) {
    return options.keyExpr || 'key';
  };

  return RemoteFileSystemProvider;
}(_provider_base.default);

var _default = RemoteFileSystemProvider;
exports.default = _default;
module.exports = exports.default;