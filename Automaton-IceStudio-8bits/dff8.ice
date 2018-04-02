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
          "id": "49e12c1f-5603-493a-951b-fb8c26a83055",
          "type": "basic.input",
          "data": {
            "name": "in",
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
            "x": 176,
            "y": 248
          }
        },
        {
          "id": "737b8cab-ae75-4c0c-9454-fc6abd9c896b",
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
            "x": 752,
            "y": 280
          }
        },
        {
          "id": "09733a97-075b-4e03-9412-ef382d8a2c92",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 176,
            "y": 320
          }
        },
        {
          "id": "79e64c02-93c2-41b8-ad98-e36032dd6d61",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] r;\n\nalways @ (posedge clk)\n    r <= in;\n    \nassign out = r;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "clk"
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
            "x": 328,
            "y": 240
          },
          "size": {
            "width": 320,
            "height": 144
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "09733a97-075b-4e03-9412-ef382d8a2c92",
            "port": "out"
          },
          "target": {
            "block": "79e64c02-93c2-41b8-ad98-e36032dd6d61",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "49e12c1f-5603-493a-951b-fb8c26a83055",
            "port": "out"
          },
          "target": {
            "block": "79e64c02-93c2-41b8-ad98-e36032dd6d61",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "79e64c02-93c2-41b8-ad98-e36032dd6d61",
            "port": "out"
          },
          "target": {
            "block": "737b8cab-ae75-4c0c-9454-fc6abd9c896b",
            "port": "in"
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