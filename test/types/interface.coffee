{testCase} = require "../helper"

describe "[TS] interface", ->
  testCase """
    basic
    ---
    interface User {
      name: string;
      id: number;
    }
    ---
    interface User {
      name: string;
      id: number;
    };
  """

  testCase """
    nested syntax
    ---
    interface User
      name: string
      id: number
    ---
    interface User {
      name: string;
      id: number;
    };
  """

  testCase """
    optional type
    ---
    interface User {
      name?: string;
      id: number;
    }
    ---
    interface User {
      name?: string;
      id: number;
    };
  """

  testCase """
    nested nested syntax
    ---
    interface User
      name:
        first: string
        last: string
      id: number
    ---
    interface User {
      name: {
        first: string;
        last: string;
      };
      id: number;
    };
  """

  testCase """
    export
    ---
    export interface Loc {
      pos: number
      length: number
    }
    ---
    export interface Loc {
      pos: number;
      length: number;
    };
  """