const fs = require('fs');
const path = require('path');
const toml = require('toml');

function getFiles(dir, fileList = []) {
  const files = fs.readdirSync(dir);
  files.forEach(file => {
    const name = path.join(dir, file);
    if (fs.statSync(name).isDirectory()) {
      getFiles(name, fileList);
    } else if (name.endsWith('.toml')) {
      fileList.push(name);
    }
  });
  return fileList;
}

const commandsDir = path.join(__dirname, '../commands/atomic');
const tomlFiles = getFiles(commandsDir);

let hasError = false;

tomlFiles.forEach(file => {
  const content = fs.readFileSync(file, 'utf-8');
  try {
    toml.parse(content);
    console.log(`PASS: ${file}`);
  } catch (e) {
    console.error(`FAIL: ${file} (Line ${e.line}, Col ${e.column}): ${e.message}`);
    hasError = true;
  }
});

if (hasError) {
  process.exit(1);
} else {
  console.log('\nAll TOML files are valid.');
}
