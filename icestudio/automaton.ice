{
  "version": "1.1",
  "package": {
    "name": "Automaton",
    "version": "1.0",
    "description": "Cellular Automaton 8 bit",
    "author": "Alexandre Dumont @adumont",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "02d5debe-1254-403d-b50f-4cc4e8ee8fd5",
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
            "x": 1112,
            "y": 104
          }
        },
        {
          "id": "adf86786-375f-4a60-b43d-2a5d9fb1815a",
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
            "x": -392,
            "y": 128
          }
        },
        {
          "id": "89ea6d17-bc62-449e-9604-acfdb69a3747",
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
            "x": -392,
            "y": 328
          }
        },
        {
          "id": "985fb918-f1cf-4f24-9c34-0d47b89495f1",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 80,
            "y": -40
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
          "type": "93b0746e46f8795111ed77b842643e4bca75c17b",
          "position": {
            "x": -200,
            "y": 32
          },
          "size": {
            "width": 96,
            "height": 256
          }
        },
        {
          "id": "5ceda8cd-a051-4ab4-af20-9b492388e244",
          "type": "bc219435bd43c3ee3a90a769ac0a6e29182dc551",
          "position": {
            "x": 856,
            "y": 8
          },
          "size": {
            "width": 96,
            "height": 256
          }
        },
        {
          "id": "1098b5f4-c750-4ec9-88c0-9c867c514553",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 272,
            "y": -40
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "ed73901f-b9f9-448a-884a-6069085e1cf0",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 448,
            "y": -40
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "a2144c34-054a-4ecc-961e-de37c4791e6d",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 624,
            "y": -40
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "4c0bc752-bd38-446e-8f0c-a74be31dbca4",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 128,
            "y": 176
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "13fb0e2a-4c3e-4bc0-99fe-f108b5f6cb0a",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 304,
            "y": 176
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "b83d19c3-4ddd-49be-ae78-697047a86739",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 480,
            "y": 176
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "d6f7435c-05f1-417b-940a-d01d037abe5a",
          "type": "c981796869414c8dbb89fa84ab96699ea565ba61",
          "position": {
            "x": 656,
            "y": 176
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "f196fa27-5db8-4db5-a8b0-1440f86ebb93",
          "type": "basic.info",
          "data": {
            "info": "Implements an 8 bit Elementary Cellular Automaton (<a href=http://mathworld.wolfram.com/ElementaryCellularAutomaton.html>more</a>)\n\n<img src=http://mathworld.wolfram.com/images/eps-gif/ElementaryCA30_1000.gif>\n\n04/02/2018 - @adumont",
            "readonly": true
          },
          "position": {
            "x": -392,
            "y": -376
          },
          "size": {
            "width": 432,
            "height": 176
          }
        },
        {
          "id": "a2204559-f1c4-438f-8663-0233dd139705",
          "type": "basic.info",
          "data": {
            "info": "<img src=https://avatars3.githubusercontent.com/u/333274?s=460&v=4 width=64 height=64>\n<b>@adumont</b>\n",
            "readonly": true
          },
          "position": {
            "x": 88,
            "y": -368
          },
          "size": {
            "width": 112,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "adf86786-375f-4a60-b43d-2a5d9fb1815a",
            "port": "out"
          },
          "target": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "48df82d1-e359-444e-84b2-04c3b441e9cb"
          },
          "size": 8
        },
        {
          "source": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "42dd115f-a7f9-4cf3-aecf-177d8b02225a"
          },
          "target": {
            "block": "02d5debe-1254-403d-b50f-4cc4e8ee8fd5",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "985fb918-f1cf-4f24-9c34-0d47b89495f1",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "66f09d67-d516-482f-9c57-2be69715a83a"
          }
        },
        {
          "source": {
            "block": "1098b5f4-c750-4ec9-88c0-9c867c514553",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "97a359f9-27a4-4904-8376-08eed01bf406"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "cd622594-cc47-4d90-b509-d3b7940b95db"
          },
          "target": {
            "block": "985fb918-f1cf-4f24-9c34-0d47b89495f1",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "72e62f53-e611-4b14-bbd7-56bfedabc444"
          },
          "target": {
            "block": "985fb918-f1cf-4f24-9c34-0d47b89495f1",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "631cbdc1-0dbe-4324-87ff-ff8eee34077c"
          },
          "target": {
            "block": "985fb918-f1cf-4f24-9c34-0d47b89495f1",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "72e62f53-e611-4b14-bbd7-56bfedabc444"
          },
          "target": {
            "block": "1098b5f4-c750-4ec9-88c0-9c867c514553",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "631cbdc1-0dbe-4324-87ff-ff8eee34077c"
          },
          "target": {
            "block": "1098b5f4-c750-4ec9-88c0-9c867c514553",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "384d13a9-6039-4c45-9d21-92ecaf2146da"
          },
          "target": {
            "block": "1098b5f4-c750-4ec9-88c0-9c867c514553",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "985fb918-f1cf-4f24-9c34-0d47b89495f1",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "1098b5f4-c750-4ec9-88c0-9c867c514553",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "631cbdc1-0dbe-4324-87ff-ff8eee34077c"
          },
          "target": {
            "block": "ed73901f-b9f9-448a-884a-6069085e1cf0",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "384d13a9-6039-4c45-9d21-92ecaf2146da"
          },
          "target": {
            "block": "ed73901f-b9f9-448a-884a-6069085e1cf0",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "fadfbbd7-5013-4949-8666-82fa8a42078d"
          },
          "target": {
            "block": "ed73901f-b9f9-448a-884a-6069085e1cf0",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "ed73901f-b9f9-448a-884a-6069085e1cf0",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ed73901f-b9f9-448a-884a-6069085e1cf0",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "cb5fec12-f979-4c10-ad2d-fa0db8e43025"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "384d13a9-6039-4c45-9d21-92ecaf2146da"
          },
          "target": {
            "block": "a2144c34-054a-4ecc-961e-de37c4791e6d",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "fadfbbd7-5013-4949-8666-82fa8a42078d"
          },
          "target": {
            "block": "a2144c34-054a-4ecc-961e-de37c4791e6d",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "4a558a2b-d212-45b2-9784-ff6f1bc0a14a"
          },
          "target": {
            "block": "a2144c34-054a-4ecc-961e-de37c4791e6d",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "a2144c34-054a-4ecc-961e-de37c4791e6d",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "a2144c34-054a-4ecc-961e-de37c4791e6d",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "9255a776-02ff-4058-9179-ee05c8125fa5"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "fadfbbd7-5013-4949-8666-82fa8a42078d"
          },
          "target": {
            "block": "4c0bc752-bd38-446e-8f0c-a74be31dbca4",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "4a558a2b-d212-45b2-9784-ff6f1bc0a14a"
          },
          "target": {
            "block": "4c0bc752-bd38-446e-8f0c-a74be31dbca4",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "69cd9cc1-3abe-4492-ad1c-66004a2b2018"
          },
          "target": {
            "block": "4c0bc752-bd38-446e-8f0c-a74be31dbca4",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "4c0bc752-bd38-446e-8f0c-a74be31dbca4",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "4c0bc752-bd38-446e-8f0c-a74be31dbca4",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "41514112-2db3-4694-b5e8-62ae9b85601e"
          }
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "13fb0e2a-4c3e-4bc0-99fe-f108b5f6cb0a",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "b83d19c3-4ddd-49be-ae78-697047a86739",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "89ea6d17-bc62-449e-9604-acfdb69a3747",
            "port": "out"
          },
          "target": {
            "block": "d6f7435c-05f1-417b-940a-d01d037abe5a",
            "port": "53ce434d-caf5-4dd9-9a39-b5f01cc9cda7"
          },
          "size": 8
        },
        {
          "source": {
            "block": "d6f7435c-05f1-417b-940a-d01d037abe5a",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "0a7a27d5-7afb-4a4a-a57e-209d52ab8f34"
          }
        },
        {
          "source": {
            "block": "b83d19c3-4ddd-49be-ae78-697047a86739",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "7efe04cc-cf2f-41d5-af40-5091ec18edf9"
          }
        },
        {
          "source": {
            "block": "13fb0e2a-4c3e-4bc0-99fe-f108b5f6cb0a",
            "port": "36aaeb97-4cf1-48d5-a419-b5267dc1b59c"
          },
          "target": {
            "block": "5ceda8cd-a051-4ab4-af20-9b492388e244",
            "port": "e7886857-ff77-4efa-b609-ed5f198408a0"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "4a558a2b-d212-45b2-9784-ff6f1bc0a14a"
          },
          "target": {
            "block": "13fb0e2a-4c3e-4bc0-99fe-f108b5f6cb0a",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "69cd9cc1-3abe-4492-ad1c-66004a2b2018"
          },
          "target": {
            "block": "13fb0e2a-4c3e-4bc0-99fe-f108b5f6cb0a",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "b0955101-3954-4c75-a575-799b4ca8506c"
          },
          "target": {
            "block": "13fb0e2a-4c3e-4bc0-99fe-f108b5f6cb0a",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "69cd9cc1-3abe-4492-ad1c-66004a2b2018"
          },
          "target": {
            "block": "b83d19c3-4ddd-49be-ae78-697047a86739",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "b0955101-3954-4c75-a575-799b4ca8506c"
          },
          "target": {
            "block": "b83d19c3-4ddd-49be-ae78-697047a86739",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "cd622594-cc47-4d90-b509-d3b7940b95db"
          },
          "target": {
            "block": "b83d19c3-4ddd-49be-ae78-697047a86739",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "b0955101-3954-4c75-a575-799b4ca8506c"
          },
          "target": {
            "block": "d6f7435c-05f1-417b-940a-d01d037abe5a",
            "port": "576e1719-f0ac-429b-9925-ca889c598a74"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "cd622594-cc47-4d90-b509-d3b7940b95db"
          },
          "target": {
            "block": "d6f7435c-05f1-417b-940a-d01d037abe5a",
            "port": "baa8b2b8-3f83-4179-a361-108d2334cb3c"
          }
        },
        {
          "source": {
            "block": "ff1cd1ee-74b5-4714-a2db-1c5a22c98ede",
            "port": "72e62f53-e611-4b14-bbd7-56bfedabc444"
          },
          "target": {
            "block": "d6f7435c-05f1-417b-940a-d01d037abe5a",
            "port": "4edf291c-1c08-4566-86f5-ada516d8bd2a"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 438.01,
        "y": 423.1592
      },
      "zoom": 0.995
    }
  },
  "dependencies": {
    "c981796869414c8dbb89fa84ab96699ea565ba61": {
      "package": {
        "name": "Automaton Cell",
        "version": "1.0",
        "description": "One cell of a Elementary Cellular Automaton",
        "author": "Alexandre Dumont",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "576e1719-f0ac-429b-9925-ca889c598a74",
              "type": "basic.input",
              "data": {
                "name": "a",
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
                "name": "out"
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
                "clock": false,
                "size": 8
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
                "code": "assign out = rule[{c, b, a}];",
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
            "x": 7,
            "y": 264.5
          },
          "zoom": 1
        }
      }
    },
    "93b0746e46f8795111ed77b842643e4bca75c17b": {
      "package": {
        "name": "8bit Bus Split",
        "version": "1.0",
        "description": "Split a 8bit bus in 8 1bit wires",
        "author": "Alexandre Dumont @adumont",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "72e62f53-e611-4b14-bbd7-56bfedabc444",
              "type": "basic.output",
              "data": {
                "name": "out0"
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
                "name": "out4"
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
                "name": "out5"
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
                "name": "out1"
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
                "name": "out2"
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
                "name": "out6"
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
                "name": "out3"
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
                "name": "out7"
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
                "clock": false,
                "size": 8
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
      }
    },
    "bc219435bd43c3ee3a90a769ac0a6e29182dc551": {
      "package": {
        "name": "Join 8bit",
        "version": "1.0",
        "description": "Join 8 wires to 1 8bit bus",
        "author": "Alexandre Dumont @adumont",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "66f09d67-d516-482f-9c57-2be69715a83a",
              "type": "basic.input",
              "data": {
                "name": "in0",
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
                "size": 8
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
      }
    }
  }
}