{% from "example/map.jinja" import example, example_config with context %}

include:
  - example

example-config:
  file.managed:
    - name: {{ example.conf_file }}
    - source: salt://example/templates/conf.jinja
    - template: jinja
    - context:
      config: {{ example_config }}
    - watch_in:
      - service: example
    - require:
      - pkg: example
