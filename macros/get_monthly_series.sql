{% macro get_monthly_series(report_date='calendar_date', date_series_model='int_dates', day_of_month=1) %}
    SELECT
        {{report_date}} AS date_month
    FROM
        {{ref( date_series_model)}}
    WHERE
        day_of_month = {{day_of_month}}
{% endmacro %}