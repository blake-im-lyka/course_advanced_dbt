{% test detect_substring_in_column(model, column_name, substring) %}

SELECT * FROM {{ model }}
WHERE lower({{ column_name}}) LIKE '%{{substring}}%'

{% endtest %}