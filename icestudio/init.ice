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
          "id": "8b6f5398-2b35-4bad-89ed-5bfde630a6e2",
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
            "x": 144,
            "y": 192
          }
        },
        {
          "id": "29d7b912-9439-4bfd-811c-1390616d55a8",
          "type": "basic.output",
          "data": {
            "name": "init",
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
            "x": 688,
            "y": 192
          }
        },
        {
          "id": "bfca319f-9fa6-42a3-aa09-f7da6cf98ab5",
          "type": "basic.code",
          "data": {
            "code": "reg t=0;\n\nalways @(posedge clk)\n    t<=1;\n    \nassign init = t;\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "init"
                }
              ]
            }
          },
          "position": {
            "x": 336,
            "y": 152
          },
          "size": {
            "width": 272,
            "height": 144
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8b6f5398-2b35-4bad-89ed-5bfde630a6e2",
            "port": "out"
          },
          "target": {
            "block": "bfca319f-9fa6-42a3-aa09-f7da6cf98ab5",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "bfca319f-9fa6-42a3-aa09-f7da6cf98ab5",
            "port": "init"
          },
          "target": {
            "block": "29d7b912-9439-4bfd-811c-1390616d55a8",
            "port": "in"
          }
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