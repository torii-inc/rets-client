### jshint node:true ###
### jshint -W097 ###
'use strict'


# Tags & Constant representation for reply codes

# authoritative documentation for all reply codes in current rets standard:
# http://www.reso.org/assets/RETS/Specifications/rets_1_8.pdf


codeTagMap = {}

# for readability, codes are presented in tag-code format, but we need to map them into code-tag format
# using multiple calls to this helper because some tag names are NOT globally unique
_registerCodes = (tagCodeMap) ->
  for k, v of tagCodeMap
    codeTagMap[v] = k


_registerCodes
  OPERATION_SUCCESSFUL: 0

_registerCodes
  SYSTEM_ERROR: 10000

_registerCodes
  ZERO_BALANCE:                       20003
  BROKER_CODE_REQUIRED:               20012
  BROKER_CODE_INVALID:                20013
  DUPLICATE_LOGIN_PROHIBITED:         20022
  MISC_LOGIN_ERROR:                   20036
  CLIENT_AUTHENTICATION_FAILED:       20037
  USER_AGENT_AUTHENTICATION_REQUIRED: 20041
  SERVER_TEMPORARILY_DISABLED:        20050

_registerCodes
  INSECURE_PASSWORD_DISALLOWED:  20140
  DUPLICATE_PASSWORD_DISALLOWED: 20141
  ENCRYPTED_USERNAME_INVALID:    20142

_registerCodes
  UNKNOWN_QUERY_FIELD:     20200
  NO_RECORDS_FOUND:        20201
  INVALID_SELECT:          20202
  MISC_SEARCH_ERROR:       20203
  INVALID_QUERY_SYNTAX:    20206
  UNAUTHORIZED_QUERY:      20207
  MAX_RECORDS_EXCEEDED:    20208
  TIMEOUT:                 20209
  TOO_MANY_ACTIVE_QUERIES: 20210
  QUERY_TOO_COMPLEX:       20211
  INVALID_KEY_REQUEST:     20212
  INVALID_KEY:             20213

_registerCodes
  INVALID_PARAMETER:          20301
  RECORD_SAVE_ERROR:          20302
  MISC_UPDATE_ERROR:          20303
  WARNING_RESPONSE_NOT_GIVEN: 20311
  WARNING_RESPONSE_GIVEN:     20312

_registerCodes
  INVALID_RESOURCE:         20400
  INVALID_OBJECT_TYPE:      20401
  INVALID_IDENTIFIER:       20402
  NO_OBJECT_FOUND:          20403
  UNSUPPORTED_MIME_TYPE:    20406
  UNAUTHORIZED_RETRIEVAL:   20407
  RESOURCE_UNAVAILABLE:     20408
  OBJECT_UNAVAILABLE:       20409
  REQUEST_TOO_LARGE:        20410
  TIMEOUT:                  20411
  TOO_MANY_ACTIVE_REQUESTS: 20412
  MISC_ERROR:               20413

_registerCodes
  INVALID_RESOURCE:         20500
  INVALID_METADATA_TYPE:    20501
  INVALID_IDENTIFIER:       20502
  NO_METADATA_FOUND:        20503
  UNSUPPORTED_MIME_TYPE:    20506
  UNAUTHORIZED_RETRIEVAL:   20507
  RESOURCE_UNAVAILABLE:     20508
  METADATA_UNAVAILABLE:     20509
  REQUEST_TOO_LARGE:        20510
  TIMEOUT:                  20511
  TOO_MANY_ACTIVE_REQUESTS: 20512
  MISC_ERROR:               20513
  DTD_VERSION_UNAVAIL:      20514

_registerCodes
  NOT_LOGGED_IN:          20701
  MISC_TRANSACTION_ERROR: 20702

_registerCodes
  UNKNOWN_RESOURCE:                20800
  INVALID_OBJECT_TYPE:             20801
  INVALID_IDENTIFIER:              20802
  INVALID_UPDATE_ACTION:           20803
  INCONSISTENT_REQUEST_PARAMETERS: 20804
  DELETE_TARGET_NOT_FOUND:         20805
  UNSUPPORTED_MIME_TYPE:           20806
  UNAUTHORIZED:                    20807
  SOME_OBJECTS_NOT_DELETED:        20808
  BUSINESS_RULES_VIOLATION:        20809
  FILE_TOO_LARGE:                  20810
  TIMEOUT:                         20811
  TOO_MANY_ACTIVE_REQUESTS:        20812
  MISC_ERROR:                      20813


module.exports =
  tagMap: codeTagMap
  getReplyTag: (code) -> codeTagMap[code]
