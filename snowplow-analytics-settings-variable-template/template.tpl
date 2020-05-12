___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Snowplow Analytics Settings",
  "description": "The Snowplow Analytics Settings variable can be used to easily apply a set of tracker configuration parameters to tags created with the Snowplow Analytics tag template.",
  "__wm": "VGVtcGxhdGUtQXV0aG9yX1Nub3dwbG93QW5hbHl0aWNzU2V0dGluZ3MtU2ltby1BaGF2YQ==",
  "securityGroups": [],
  "categories": [
    "ANALYTICS"
  ],
  "id": "cvt_temp_public_id",
  "type": "MACRO",
  "version": 1,
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "displayName": "Application Settings",
    "name": "trackerParamsApp",
    "groupStyle": "ZIPPY_OPEN",
    "type": "GROUP",
    "subParams": [
      {
        "help": "See \u003ca href\u003d\"https://github.com/snowplow/snowplow/wiki/1-General-parameters-for-the-Javascript-tracker#221-setting-the-application-id\"\u003ehere\u003c/a\u003e for more information.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "Application ID",
        "defaultValue": "my-site",
        "simpleValueType": true,
        "name": "appId",
        "type": "TEXT"
      },
      {
        "selectItems": [
          {
            "displayValue": "Web",
            "value": "web"
          },
          {
            "displayValue": "Mobile/Tablet",
            "value": "mob"
          },
          {
            "displayValue": "Desktop/Laptop/Notebook",
            "value": "pc"
          },
          {
            "displayValue": "Server-Side App",
            "value": "srv"
          },
          {
            "displayValue": "General App",
            "value": "app"
          },
          {
            "displayValue": "Connected TV",
            "value": "tv"
          },
          {
            "displayValue": "Games Console",
            "value": "cnsl"
          },
          {
            "displayValue": "Internet of Things",
            "value": "iot"
          },
          {
            "displayValue": "[Custom]",
            "value": "custom"
          }
        ],
        "displayName": "Platform",
        "simpleValueType": true,
        "name": "platform",
        "type": "SELECT",
        "subParams": [
          {
            "alwaysInSummary": false,
            "enablingConditions": [
              {
                "paramName": "platform",
                "type": "EQUALS",
                "paramValue": "custom"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "displayName": "",
            "simpleValueType": true,
            "name": "customPlatform",
            "type": "TEXT"
          }
        ]
      }
    ]
  },
  {
    "displayName": "Privacy",
    "name": "trackerParamsPrivacy",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "macrosInSelect": false,
        "selectItems": [
          {
            "displayValue": "True",
            "value": true
          },
          {
            "displayValue": "False",
            "value": false
          }
        ],
        "displayName": "Respect \"Do Not Track\"",
        "simpleValueType": true,
        "name": "respectDoNotTrack",
        "type": "SELECT"
      }
    ]
  },
  {
    "displayName": "Cookie Settings",
    "name": "trackerParamsCookie",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "alwaysInSummary": false,
        "selectItems": [
          {
            "displayValue": "Cookie and Local Storage",
            "value": "cookieAndLocalStorage"
          },
          {
            "displayValue": "Cookie",
            "value": "cookie"
          },
          {
            "displayValue": "Local Storage",
            "value": "localStorage"
          },
          {
            "value": "none",
            "displayValue": "None"
          }
        ],
        "displayName": "State Storage Strategy",
        "simpleValueType": true,
        "name": "stateStorageStrategy",
        "type": "SELECT"
      },
      {
        "help": "Set to \u003cstrong\u003eauto\u003c/strong\u003e to have Snowplow write the cookie on the root domain.",
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "type": "EQUALS",
            "paramValue": "cookie"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          }
        ],
        "displayName": "Cookie Domain",
        "defaultValue": "auto",
        "simpleValueType": true,
        "name": "cookieDomain",
        "type": "TEXT"
      },
      {
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "type": "EQUALS",
            "paramValue": "cookie"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          }
        ],
        "displayName": "Cookie Name",
        "defaultValue": "sp",
        "simpleValueType": true,
        "name": "cookieName",
        "type": "TEXT"
      },
      {
        "selectItems": [
          {
            "displayValue": "2 years",
            "value": 63072000
          },
          {
            "displayValue": "1 year",
            "value": 31536000
          },
          {
            "displayValue": "6 months",
            "value": 15552000
          },
          {
            "displayValue": "3 months",
            "value": 7776000
          },
          {
            "displayValue": "1 month",
            "value": 2592000
          },
          {
            "displayValue": "7 days",
            "value": 604800
          },
          {
            "displayValue": "1 day",
            "value": 86400
          },
          {
            "displayValue": "Session",
            "value": 0
          },
          {
            "displayValue": "Disable first-party cookie",
            "value": -1
          },
          {
            "displayValue": "[Custom lifetime]",
            "value": "custom"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "type": "EQUALS",
            "paramValue": "cookie"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          }
        ],
        "displayName": "Cookie Lifetime",
        "simpleValueType": true,
        "name": "cookieLifetime",
        "type": "SELECT",
        "subParams": [
          {
            "enablingConditions": [
              {
                "paramName": "cookieLifetime",
                "type": "EQUALS",
                "paramValue": "custom"
              }
            ],
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "simpleValueType": true,
            "name": "customCookieLifetime",
            "type": "TEXT"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "cookieSameSite",
        "displayName": "Cookie SameSite",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "None",
            "displayValue": "None"
          },
          {
            "value": "Lax",
            "displayValue": "Lax"
          },
          {
            "value": "Strict",
            "displayValue": "Strict"
          },
          {
            "value": "noSameSite",
            "displayValue": "null"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookie",
            "type": "EQUALS"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "cookieSecure",
        "displayName": "Cookie Secure",
        "selectItems": [
          {
            "value": true,
            "displayValue": "True"
          },
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookie",
            "type": "EQUALS"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "sessionCookieTimeout",
        "displayName": "Session Cookie Timeout",
        "simpleValueType": true,
        "valueUnit": "seconds",
        "defaultValue": 1800,
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookie",
            "type": "EQUALS"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "maxLocalStorageQueueSize",
        "displayName": "Maximum Local Storage Queue Size",
        "simpleValueType": true,
        "defaultValue": 1000,
        "enablingConditions": [
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "cookieAndLocalStorage",
            "type": "EQUALS"
          },
          {
            "paramName": "stateStorageStrategy",
            "paramValue": "localStorage",
            "type": "EQUALS"
          }
        ],
        "valueUnit": "events"
      }
    ]
  },
  {
    "displayName": "Dispatching",
    "name": "trackerParamsHit",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "macrosInSelect": false,
        "selectItems": [
          {
            "displayValue": "POST",
            "value": "post"
          },
          {
            "displayValue": "GET",
            "value": "get"
          },
          {
            "displayValue": "Beacon",
            "value": "beacon"
          }
        ],
        "displayName": "Dispatch Method",
        "simpleValueType": true,
        "name": "eventMethod",
        "type": "SELECT"
      },
      {
        "macrosInSelect": false,
        "selectItems": [
          {
            "displayValue": "True",
            "value": true
          },
          {
            "displayValue": "False",
            "value": false
          }
        ],
        "displayName": "Encode Into Base64",
        "simpleValueType": true,
        "name": "encodeBase64",
        "type": "SELECT"
      },
      {
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ],
        "displayName": "Page Unload Pause Length",
        "defaultValue": 500,
        "simpleValueType": true,
        "name": "pageUnloadTimer",
        "valueUnit": "milliseconds",
        "type": "TEXT"
      },
      {
        "macrosInSelect": false,
        "selectItems": [
          {
            "displayValue": "Force HTTPS",
            "value": "https"
          },
          {
            "displayValue": "Force HTTP",
            "value": "http"
          },
          {
            "displayValue": "Use page protocol",
            "value": "none"
          }
        ],
        "displayName": "Tracker Endpoint Protocol",
        "defaultValue": "none",
        "simpleValueType": true,
        "name": "forceProtocol",
        "type": "SELECT"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventMethod",
            "type": "NOT_EQUALS",
            "paramValue": "get"
          }
        ],
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "displayName": "Buffer Size",
        "defaultValue": 1,
        "simpleValueType": true,
        "name": "bufferSize",
        "type": "TEXT"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventMethod",
            "type": "NOT_EQUALS",
            "paramValue": "get"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "displayName": "POST Path",
        "defaultValue": "/com.snowplowanalytics.snowplow/tp2",
        "simpleValueType": true,
        "name": "postPath",
        "type": "TEXT"
      },
      {
        "enablingConditions": [
          {
            "paramName": "eventMethod",
            "type": "NOT_EQUALS",
            "paramValue": "get"
          }
        ],
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "displayName": "Maximum POST Payload Size",
        "defaultValue": 40000,
        "simpleValueType": true,
        "name": "maxPostBytes",
        "valueUnit": "bytes",
        "type": "TEXT"
      }
    ]
  },
  {
    "displayName": "Predefined Contexts",
    "name": "trackerParamsContexts",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "simpleValueType": true,
        "name": "webPage",
        "checkboxText": "webPage",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "performanceTiming",
        "checkboxText": "performanceTiming",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "gaCookies",
        "checkboxText": "gaCookies",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "geolocation",
        "checkboxText": "geolocation",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyExperiments",
        "checkboxText": "optimizelyExperiments",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyStates",
        "checkboxText": "optimizelyStates",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyVariations",
        "checkboxText": "optimizelyVariations",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyVisitor",
        "checkboxText": "optimizelyVisitor",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyAudiences",
        "checkboxText": "optimizelyAudiences",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyDimensions",
        "checkboxText": "optimizelyDimensions",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelySummary",
        "checkboxText": "optimizelySummary",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "optimizelyXSummary",
        "checkboxText": "optimizelyXSummary",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "parrable",
        "checkboxText": "parrable",
        "type": "CHECKBOX"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

return {
  type: 'snowplow',
  appId: data.appId,
  platform: data.platform === 'custom' ? data.customPlatform : data.platform,
  respectDoNotTrack: data.respectDoNotTrack,
  stateStorageStrategy: data.stateStorageStrategy,
  cookieDomain: data.cookieDomain !== 'auto' && data.cookieDomain,
  discoverRootDomain: data.cookieDomain === 'auto',
  cookieName: data.cookieName,
  cookieLifetime: data.cookieLifetime !== 'custom' ? data.cookieLifetime : data.customCookieLifetime,
  cookieSameSite: data.cookieSameSite === 'noSameSite' ? null : data.cookieSameSite,
  cookieSecure: data.cookieSecure,
  maxLocalStorageQueueSize: data.maxLocalStorageQueueSize,
  eventMethod: data.eventMethod,
  encodeBase64: data.encodeBase64,
  pageUnloadTimer: data.pageUnloadTimer,
  forceSecureTracker: data.forceProtocol === 'https',
  forceUnsecureTracker: data.forceProtocol === 'http',
  bufferSize: data.bufferSize,
  postPath: data.postPath,
  maxPostBytes: data.maxPostBytes,
  contexts: {
    webPage: data.webPage,
    performanceTiming: data.performanceTiming,
    gaCookies: data.gaCookies,
    geolocation: data.geolocation,
    optimizelyExperiments: data.optimizelyExperiments,
    optimizelyStates: data.optimizelyStates,
    optimizelyVariations: data.optimizelyVariations,
    optimizelyVisitor: data.optimizelyVisitor,
    optimizelyAudiences: data.optimizelyAudiences,
    optimizelyDimensions: data.optimizelyDimensions,
    optimizelySummary: data.optimizelySummary,
    optimizelyXSummary: data.optimizelyXSummary,
    parrable: data.parrable
  }
};


___TESTS___

scenarios:
- name: Variable returns expected object
  code: "const expected = {\n  type: 'snowplow',\n  appId: mockData.appId,\n  platform:\
    \ mockData.customPlatform,\n  respectDoNotTrack: mockData.respectDoNotTrack,\n\
    \  stateStorageStrategy: mockData.stateStorageStrategy,\n  cookieDomain: false,\n\
    \  discoverRootDomain: true,\n  cookieName: mockData.cookieName,\n  cookieLifetime:\
    \ mockData.customCookieLifetime,\n  cookieSameSite: null,\n  cookieSecure: mockData.cookieSecure,\n\
    \  maxLocalStorageQueueSize: mockData.maxLocalStorageQueueSize,\n  eventMethod:\
    \ mockData.eventMethod,\n  encodeBase64: mockData.encodeBase64,\n  pageUnloadTimer:\
    \ mockData.pageUnloadTimer,\n  forceSecureTracker: false,\n  forceUnsecureTracker:\
    \ true,\n  bufferSize: mockData.bufferSize,\n  postPath: mockData.postPath,\n\
    \  maxPostBytes: mockData.maxPostBytes,\n  contexts: {\n    webPage: mockData.webPage,\n\
    \    performanceTiming: undefined,\n    gaCookies: undefined,\n    geolocation:\
    \ mockData.geolocation,\n    optimizelyExperiments: undefined,\n    optimizelyStates:\
    \ undefined,\n    optimizelyVariations: undefined,\n    optimizelyVisitor: undefined,\n\
    \    optimizelyAudiences: undefined,\n    optimizelyDimensions: undefined,\n \
    \   optimizelySummary: undefined,\n    optimizelyXSummary: undefined,\n    parrable:\
    \ undefined\n  }\n};\n  \n// Call runCode to run the template's code.\nconst variableResult\
    \ = runCode(mockData);\n\n// Verify that the variable returns a result.\nassertThat(variableResult).isEqualTo(expected);"
setup: |-
  const mockData = {
    appId: 'appId',
    platform: 'custom',
    customPlatform: 'testPlatform',
    respectDoNotTrack: false,
    stateStorageStrategy: 'cookieAndLocalStorage',
    cookieDomain: 'auto',
    cookieName: 'sp',
    cookieLifetime: 'custom',
    customCookieLifetime: '123',
    cookieSameSite: 'noSameSite',
    cookieSecure: true,
    sessionCookieTimeout: '123',
    maxLocalStorageQueueTime: '123',
    eventMethod: 'post',
    encodeBase64: false,
    pageUnloadTimer: '123',
    forceProtocol: 'http',
    bufferSize: '123',
    postPath: 'postPath',
    maxPostBytes: '123',
    webPage: true,
    geolocation: true
  };


___NOTES___

Created on 16/08/2019, 09:46:59


