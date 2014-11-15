{% from "example/map.jinja" import example with context %}

example:
  pkg:
    - installed
    - name: {{ example.pkg }}
  service:
    - running
    - name: {{ example.service }}
    - enable: True
    - require:
      - pkg: example
