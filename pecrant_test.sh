#!/bin/sh

# stub for test
peco() { :; }
vagrant() { :; }

. ./pecrant

unset -f _pecrant

_pecrant() {
    cat <<EOF
1111111  default virtualbox poweroff /path/to/foo
2222222  default virtualbox running  /path/to/foo bar baz
EOF
}

test_pecrant_list() {
    local expect="$(cat <<EOF
1111111  default virtualbox poweroff /path/to/foo
2222222  default virtualbox running  /path/to/foo bar baz
EOF
          )"
    local actual="$(_pecrant_list)"

    assertEquals "${expect}" "${actual}"
}

test_pecrant_selected_ids() {
    local expect="$(cat <<EOF
1111111
2222222
EOF
          )"
    local actual="$(_pecrant_selected_ids)"

    assertEquals "${expect}" "${actual}"
}

test_pecrant_dir() {
    local expect="$(cat <<EOF
/path/to/foo
/path/to/foo bar baz
EOF
          )"
    local actual="$(_pecrant_dir)"

    assertEquals "${expect}" "${actual}"
}

. ./shunit2-2.1.6/src/shunit2
