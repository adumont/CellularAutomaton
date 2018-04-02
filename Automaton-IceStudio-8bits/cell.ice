{
  "version": "1.1",
  "package": {
    "name": "Automaton Cell",
    "version": "1.0",
    "description": "One cell of a Elementary Cellular Automaton",
    "author": "Alexandre Dumont",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "576e1719-f0ac-429b-9925-ca889c598a74",
          "type": "basic.input",
          "data": {
            "name": "a",
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
            "x": 88,
            "y": 32
          }
        },
        {
          "id": "baa8b2b8-3f83-4179-a361-108d2334cb3c",
          "type": "basic.input",
          "data": {
            "name": "b",
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
            "x": 88,
            "y": 112
          }
        },
        {
          "id": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 640,
            "y": 128
          }
        },
        {
          "id": "4edf291c-1c08-4566-86f5-ada516d8bd2a",
          "type": "basic.input",
          "data": {
            "name": "c",
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
            "x": 88,
            "y": 184
          }
        },
        {
          "id": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7",
          "type": "basic.input",
          "data": {
            "name": "rule",
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
            "x": 88,
            "y": 280
          }
        },
        {
          "id": "03cc6d6b-3eb5-4e1b-b0fe-2ec223c1a005",
          "type": "basic.code",
          "data": {
            "code": "wire [2:0] in = {c, b, a};\nassign out = rule[in];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a"
                },
                {
                  "name": "b"
                },
                {
                  "name": "c"
                },
                {
                  "name": "rule",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 288,
            "y": 96
          },
          "size": {
            "width": 288,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "576e1719-f0ac-429b-9925-ca889c598a74",
            "port": "out"
          },
          "target": {
            "block": "03cc6d6b-3eb5-4e1b-b0fe-2ec223c1a005",
            "port": "a"
          }
        },
        {
          "source": {
            "block": "baa8b2b8-3f83-4179-a361-108d2334cb3c",
            "port": "out"
          },
          "target": {
            "block": "03cc6d6b-3eb5-4e1b-b0fe-2ec223c1a005",
            "port": "b"
          }
        },
        {
          "source": {
            "block": "4edf291c-1c08-4566-86f5-ada516d8bd2a",
            "port": "out"
          },
          "target": {
            "block": "03cc6d6b-3eb5-4e1b-b0fe-2ec223c1a005",
            "port": "c"
          }
        },
        {
          "source": {
            "block": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7",
            "port": "out"
          },
          "target": {
            "block": "03cc6d6b-3eb5-4e1b-b0fe-2ec223c1a005",
            "port": "rule"
          },
          "size": 8
        },
        {
          "source": {
            "block": "03cc6d6b-3eb5-4e1b-b0fe-2ec223c1a005",
            "port": "out"
          },
          "target": {
            "block": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 428,
        "y": 267
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}