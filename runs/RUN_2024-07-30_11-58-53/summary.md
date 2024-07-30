
# CACE Summary

**general**

- name: sky130_ota_5t
- description: A simple 5-transistor OTA
- commit: n/a
- PDK: sky130A
- cace_format: 5.0

**authorship**

- designer: Rohit Rangaraj
- company: Virginia Tech
- creation_date: July 30, 2024
- license: Apache 2.0

**netlist source**: best

## Electrical Parameters

|      Parameter       |      Testbench       | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| A0                   | sky130_ota_5t_tb.spice |     50 V/V |            ​ |        any |            ​ |        any |            ​ | Skip 🟧  |
| UGF                  | sky130_ota_5t_tb.spice |     1e6 Hz |            ​ |        any |            ​ |        any |            ​ | Skip 🟧  |
| PM                   | sky130_ota_5t_tb.spice |       60 ° |            ​ |        any |            ​ |        any |            ​ | Skip 🟧  |

## Physical Parameters

|      Parameter       |         Tool         | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Area                 | cace_area            |          ​ |            ​ |          ​ |            ​ |    600 µm² |            ​ | Skip 🟧  |
| LVS errors           | cace_lvs             |          ​ |            ​ |          ​ |            ​ |          ​ |            ​ | Skip 🟧  |
| DRC errors           | cace_drc             |          ​ |            ​ |          ​ |            ​ |          ​ |            ​ | Skip 🟧  |

