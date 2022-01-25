package main

import (
	"testing"
)

func FakeTest(t *testing.T) {
	if "this" != "that" {
		t.Error("Never fail")
	}
}
