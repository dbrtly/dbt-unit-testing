{{
    config(
        tags=['unit-test', 'bigquery']
    )
}}

{% call dbt_unit_testing.test('model_bq_array', 'should return an array') %}
  {% call dbt_unit_testing.mock_ref ('model_bq_array_stub') %}
    select [1,2,3] as my_array
  {% endcall %}
  {% call dbt_unit_testing.expect() %}
    select [1,2,3] as my_array
  {% endcall %}
{% endcall %}
 

