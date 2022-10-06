let issue_num = Sys.argv.(1) in
    let issue_contents = Sys.argv.(2) in
        let _ = (Printf.printf "%s and %s" issue_num issue_contents) in
            print_endline "::set-output name=string::Test Ocaml"