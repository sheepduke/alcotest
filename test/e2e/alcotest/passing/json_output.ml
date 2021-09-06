let () =
  let open Alcotest in
  let id () = () in
  run ~argv:[| ""; "--json" |] __FILE__
    [
      ( "test-a",
        [
          test_case "First test case" `Quick id;
          test_case "Second test case" `Quick id;
        ] );
      ("test-b", [ test_case "Third test case" `Quick id ]);
    ]
