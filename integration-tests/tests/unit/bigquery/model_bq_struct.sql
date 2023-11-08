{{
    config(
        tags=['unit-test', 'bigquery']
    )
}}

{% call dbt_unit_testing.test('model_bq_struct', 'should be return a struct') %}
  {% call dbt_unit_testing.mock_ref ('model_bq_struct_stub') %}
    select 1 as a, struct('b' as b, true as c) as my_struct
  {% endcall %}
  {% call dbt_unit_testing.expect() %}
    select 1 as a, struct('b' as b, true as c) as my_struct
  {% endcall %}
{% endcall %}
 