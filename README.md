# tree-sitter-hocon

[![npm](https://img.shields.io/npm/v/tree-sitter-hocon.svg)](https://www.npmjs.com/package/tree-sitter-hocon)

A tree-sitter parser for HOCON (Human-Optimized Config Object Notation) format.

## Usage

### Rust

Add this to your `Cargo.toml`:

```toml
[dependencies]
tree-sitter = "0.20"
tree-sitter-hocon = "0.1"
```

Then use it like this:

```rust
use tree_sitter::Parser;
use tree_sitter_hocon::language;

let mut parser = Parser::new();
parser.set_language(language()).expect("Error loading HOCON grammar");

let source_code = r#"
app {
  name = "My Application"
  port = 8080
  features = ["auth", "logging"]
}
"#;

let tree = parser.parse(source_code, None).unwrap();
```

### Node.js

Install with npm:

```bash
npm install tree-sitter-hocon
```

Or with yarn:

```bash
yarn add tree-sitter-hocon
```

Then use it like this:

```javascript
const Parser = require('tree-sitter');
const HOCON = require('tree-sitter-hocon');

const parser = new Parser();
parser.setLanguage(HOCON);

const sourceCode = `
app {
  name = "My Application"
  port = 8080
  features = ["auth", "logging"]
}
`;

const tree = parser.parse(sourceCode);
console.log(tree.rootNode.toString());
```

## References

- [Official HOCON Specification](https://github.com/lightbend/config/blob/main/HOCON.md)