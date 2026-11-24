use advent_of_code_2026::framework::input::parse_fields;

#[test]
fn pinned_framework_parses_original_calibration_fixture() {
    let readings = parse_fields::<i32>(" -4 | 8 | 15 ", '|')
        .collect::<Result<Vec<_>, _>>()
        .expect("valid signed readings");
    assert_eq!(readings, [-4, 8, 15]);
    let error = parse_fields::<i32>("5 | offline", '|')
        .collect::<Result<Vec<_>, _>>()
        .expect_err("the second reading is malformed");
    assert_eq!(error.field(), 2);
}
