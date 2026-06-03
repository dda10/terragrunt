```markdown
# terragrunt Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill teaches you the core development patterns and conventions used in the `terragrunt` TypeScript codebase. You'll learn about file naming, import/export styles, commit message patterns, and how to write and run tests. This guide also provides suggested commands and step-by-step workflows to help you contribute effectively.

## Coding Conventions

### File Naming
- Use **camelCase** for file names.
  - Example: `myModule.ts`, `userService.ts`

### Import Style
- Use **relative imports** for referencing other files.
  ```typescript
  import { myFunction } from './utils';
  ```

### Export Style
- Use **named exports** rather than default exports.
  ```typescript
  // In utils.ts
  export function myFunction() { ... }

  // In another file
  import { myFunction } from './utils';
  ```

### Commit Messages
- Freeform commit messages, typically short (average 24 characters).
  - Example: `fix bug in config loader`

## Workflows

### Adding a New Module
**Trigger:** When you need to add a new feature or utility.
**Command:** `/add-module`

1. Create a new file using camelCase (e.g., `newFeature.ts`).
2. Write your TypeScript code using named exports.
3. Import your module using a relative path where needed.
4. Write corresponding tests in a file named `newFeature.test.ts`.
5. Commit your changes with a concise message.

### Updating an Existing Module
**Trigger:** When modifying or refactoring existing code.
**Command:** `/update-module`

1. Locate the relevant file (e.g., `existingFeature.ts`).
2. Make your changes, maintaining named exports and relative imports.
3. Update or add tests in the corresponding `*.test.ts` file.
4. Commit your changes with a brief, descriptive message.

### Writing and Running Tests
**Trigger:** When you add or update code and need to ensure correctness.
**Command:** `/run-tests`

1. Write test files using the pattern `*.test.ts` (e.g., `myModule.test.ts`).
2. Use the project's preferred (unknown) testing framework.
3. Run the tests using the appropriate command for the framework.
4. Review and fix any failing tests.

## Testing Patterns

- Test files are named with the pattern `*.test.ts` (e.g., `utils.test.ts`).
- The specific testing framework is not detected, but standard TypeScript test writing practices apply.
- Place test files alongside the modules they test or in a dedicated `tests` directory.

  ```typescript
  // utils.test.ts
  import { myFunction } from './utils';

  test('myFunction works', () => {
    expect(myFunction()).toBe(true);
  });
  ```

## Commands
| Command         | Purpose                                      |
|-----------------|----------------------------------------------|
| /add-module     | Scaffold and add a new module                |
| /update-module  | Update or refactor an existing module        |
| /run-tests      | Run all test files in the codebase           |
```
