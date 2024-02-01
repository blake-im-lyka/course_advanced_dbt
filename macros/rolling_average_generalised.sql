{% macro rolling_average_generalised(column_name, partition_by, order_by='created_at', rolling_average_period=7) %}
    avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ rolling_average_period - 1 }} PRECEDING AND CURRENT ROW
            ) AS avg_{{ rolling_average_period }}_periods_{{ column_name }}
{% endmacro %}