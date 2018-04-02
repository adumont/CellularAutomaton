{
  "version": "1.1",
  "package": {
    "name": "Join 8bit",
    "version": "1.0",
    "description": "Join 8 wires to 1 8bit bus",
    "author": "Alexandre Dumont @adumont",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "66f09d67-d516-482f-9c57-2be69715a83a",
          "type": "basic.input",
          "data": {
            "name": "in0",
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
            "x": -296,
            "y": 16
          }
        },
        {
          "id": "97a359f9-27a4-4904-8376-08eed01bf406",
          "type": "basic.input",
          "data": {
            "name": "in1",
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
            "x": -296,
            "y": 88
          }
        },
        {
          "id": "cb5fec12-f979-4c10-ad2d-fa0db8e43025",
          "type": "basic.input",
          "data": {
            "name": "in2",
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
            "x": -296,
            "y": 160
          }
        },
        {
          "id": "9255a776-02ff-4058-9179-ee05c8125fa5",
          "type": "basic.input",
          "data": {
            "name": "in3",
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
            "x": -296,
            "y": 232
          }
        },
        {
          "id": "42dd115f-a7f9-4cf3-aecf-177d8b02225a",
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
            "x": 296,
            "y": 272
          }
        },
        {
          "id": "41514112-2db3-4694-b5e8-62ae9b85601e",
          "type": "basic.input",
          "data": {
            "name": "in4",
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
            "x": -296,
            "y": 304
          }
        },
        {
          "id": "e7886857-ff77-4efa-b609-ed5f198408a0",
          "type": "basic.input",
          "data": {
            "name": "in5",
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
            "x": -296,
            "y": 376
          }
        },
        {
          "id": "7efe04cc-cf2f-41d5-af40-5091ec18edf9",
          "type": "basic.input",
          "data": {
            "name": "in6",
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
            "x": -296,
            "y": 448
          }
        },
        {
          "id": "0a7a27d5-7afb-4a4a-a57e-209d52ab8f34",
          "type": "basic.input",
          "data": {
            "name": "in7",
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
            "x": -296,
            "y": 520
          }
        },
        {
          "id": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
          "type": "basic.code",
          "data": {
            "code": "assign out={\n    in7,\n    in6,\n    in5,\n    in4,\n    in3,\n    in2,\n    in1,\n    in0\n};",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in0"
                },
                {
                  "name": "in1"
                },
                {
                  "name": "in2"
                },
                {
                  "name": "in3"
                },
                {
                  "name": "in4"
                },
                {
                  "name": "in5"
                },
                {
                  "name": "in6"
                },
                {
                  "name": "in7"
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
            "x": -16,
            "y": 128
          },
          "size": {
            "width": 208,
            "height": 352
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "out"
          },
          "target": {
            "block": "42dd115f-a7f9-4cf3-aecf-177d8b02225a",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "66f09d67-d516-482f-9c57-2be69715a83a",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in0"
          }
        },
        {
          "source": {
            "block": "97a359f9-27a4-4904-8376-08eed01bf406",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in1"
          }
        },
        {
          "source": {
            "block": "cb5fec12-f979-4c10-ad2d-fa0db8e43025",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in2"
          }
        },
        {
          "source": {
            "block": "9255a776-02ff-4058-9179-ee05c8125fa5",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in3"
          }
        },
        {
          "source": {
            "block": "41514112-2db3-4694-b5e8-62ae9b85601e",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in4"
          }
        },
        {
          "source": {
            "block": "e7886857-ff77-4efa-b609-ed5f198408a0",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in5"
          }
        },
        {
          "source": {
            "block": "7efe04cc-cf2f-41d5-af40-5091ec18edf9",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in6"
          }
        },
        {
          "source": {
            "block": "0a7a27d5-7afb-4a4a-a57e-209d52ab8f34",
            "port": "out"
          },
          "target": {
            "block": "9f714c9b-f068-43be-a670-46ba8b53e1c9",
            "port": "in7"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 339,
        "y": 152.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}