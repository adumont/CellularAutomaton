{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "c93026a1-a614-46ec-bc20-4d55a1cffdd3",
          "type": "basic.input",
          "data": {
            "name": "in0",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 144,
            "y": 168
          }
        },
        {
          "id": "0054a699-b179-4851-bc90-ae8fa7a09375",
          "type": "basic.input",
          "data": {
            "name": "in1",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 144,
            "y": 264
          }
        },
        {
          "id": "66d120a1-46ab-4ac5-9d1c-e1d09fd7ba26",
          "type": "basic.output",
          "data": {
            "name": "out",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 656,
            "y": 264
          }
        },
        {
          "id": "c14f52bb-88f2-4209-9fbe-783667da5fdf",
          "type": "basic.input",
          "data": {
            "name": "sel",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 144,
            "y": 376
          }
        },
        {
          "id": "652d8ba0-7b1d-43ff-93a5-94b7208bc9bd",
          "type": "basic.code",
          "data": {
            "code": "assign out = ( sel == 1'b1 ) ? in1 : in0;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in0",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "in1",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "sel"
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 352,
            "y": 216
          },
          "size": {
            "width": 160,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "c14f52bb-88f2-4209-9fbe-783667da5fdf",
            "port": "out"
          },
          "target": {
            "block": "652d8ba0-7b1d-43ff-93a5-94b7208bc9bd",
            "port": "sel"
          }
        },
        {
          "source": {
            "block": "652d8ba0-7b1d-43ff-93a5-94b7208bc9bd",
            "port": "out"
          },
          "target": {
            "block": "66d120a1-46ab-4ac5-9d1c-e1d09fd7ba26",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "c93026a1-a614-46ec-bc20-4d55a1cffdd3",
            "port": "out"
          },
          "target": {
            "block": "652d8ba0-7b1d-43ff-93a5-94b7208bc9bd",
            "port": "in0"
          },
          "size": 8
        },
        {
          "source": {
            "block": "0054a699-b179-4851-bc90-ae8fa7a09375",
            "port": "out"
          },
          "target": {
            "block": "652d8ba0-7b1d-43ff-93a5-94b7208bc9bd",
            "port": "in1"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}