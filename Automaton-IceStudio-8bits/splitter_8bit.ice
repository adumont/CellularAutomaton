{
  "version": "1.1",
  "package": {
    "name": "8bit Bus Split",
    "version": "1.0",
    "description": "Split a 8bit bus in 8 1bit wires",
    "author": "Alexandre Dumont @adumont",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "72e62f53-e611-4b14-bbd7-56bfedabc444",
          "type": "basic.output",
          "data": {
            "name": "out0",
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
            "x": 544,
            "y": 32
          }
        },
        {
          "id": "4a558a2b-d212-45b2-9784-ff6f1bc0a14a",
          "type": "basic.output",
          "data": {
            "name": "out4",
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
            "x": 704,
            "y": 32
          }
        },
        {
          "id": "69cd9cc1-3abe-4492-ad1c-66004a2b2018",
          "type": "basic.output",
          "data": {
            "name": "out5",
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
            "x": 712,
            "y": 104
          }
        },
        {
          "id": "631cbdc1-0dbe-4324-87ff-ff8eee34077c",
          "type": "basic.output",
          "data": {
            "name": "out1",
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
            "x": 552,
            "y": 104
          }
        },
        {
          "id": "384d13a9-6039-4c45-9d21-92ecaf2146da",
          "type": "basic.output",
          "data": {
            "name": "out2",
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
            "x": 560,
            "y": 176
          }
        },
        {
          "id": "b0955101-3954-4c75-a575-799b4ca8506c",
          "type": "basic.output",
          "data": {
            "name": "out6",
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
            "x": 720,
            "y": 176
          }
        },
        {
          "id": "fadfbbd7-5013-4949-8666-82fa8a42078d",
          "type": "basic.output",
          "data": {
            "name": "out3",
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
            "x": 568,
            "y": 248
          }
        },
        {
          "id": "cd622594-cc47-4d90-b509-d3b7940b95db",
          "type": "basic.output",
          "data": {
            "name": "out7",
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
            "x": 728,
            "y": 248
          }
        },
        {
          "id": "48df82d1-e359-444e-84b2-04c3b441e9cb",
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
            "x": 32,
            "y": 296
          }
        },
        {
          "id": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
          "type": "basic.code",
          "data": {
            "code": "assign out0 = in[0];\nassign out1 = in[1];\nassign out2 = in[2];\nassign out3 = in[3];\nassign out4 = in[4];\nassign out5 = in[5];\nassign out6 = in[6];\nassign out7 = in[7];\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "out0"
                },
                {
                  "name": "out1"
                },
                {
                  "name": "out2"
                },
                {
                  "name": "out3"
                },
                {
                  "name": "out4"
                },
                {
                  "name": "out5"
                },
                {
                  "name": "out6"
                },
                {
                  "name": "out7"
                }
              ]
            }
          },
          "position": {
            "x": 216,
            "y": 168
          },
          "size": {
            "width": 224,
            "height": 320
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out0"
          },
          "target": {
            "block": "72e62f53-e611-4b14-bbd7-56bfedabc444",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out7"
          },
          "target": {
            "block": "cd622594-cc47-4d90-b509-d3b7940b95db",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out1"
          },
          "target": {
            "block": "631cbdc1-0dbe-4324-87ff-ff8eee34077c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out2"
          },
          "target": {
            "block": "384d13a9-6039-4c45-9d21-92ecaf2146da",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out3"
          },
          "target": {
            "block": "fadfbbd7-5013-4949-8666-82fa8a42078d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out6"
          },
          "target": {
            "block": "b0955101-3954-4c75-a575-799b4ca8506c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out5"
          },
          "target": {
            "block": "69cd9cc1-3abe-4492-ad1c-66004a2b2018",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
            "port": "out4"
          },
          "target": {
            "block": "4a558a2b-d212-45b2-9784-ff6f1bc0a14a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "48df82d1-e359-444e-84b2-04c3b441e9cb",
            "port": "out"
          },
          "target": {
            "block": "4c86ea43-51bf-4cab-8f68-55145ba9a773",
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