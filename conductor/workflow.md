# Project Workflow

## Guiding Principles

1. **The Plan is the Source of Truth:** All work must be tracked in `plan.md`
2. **The Tech Stack is Deliberate:** Changes to the tech stack must be documented in `tech-stack.md` *before* implementation
3. **Test-Driven Development:** Write tests (prompts/scripts) before implementing functionality
4. **Verification over Coverage:** Focus on automated prompt evaluation and integration testing rather than traditional code coverage (Target: 0%)
5. **User Experience First:** Every decision should prioritize user experience and transparency
6. **Non-Interactive & CI-Aware:** Prefer non-interactive commands for validation and testing.

## Task Workflow

All tasks follow a strict lifecycle:

### Standard Task Workflow

1. **Select Task:** Choose the next available task from `plan.md` in sequential order

2. **Mark In Progress:** Before beginning work, edit `plan.md` and change the task from `[ ]` to `[~]`

3. **Define Verification (Red Phase):**
   - Create a new test case or evaluation script (e.g., in `Promptfoo`).
   - Define the expected behavior and acceptance criteria.
   - **CRITICAL:** Run the verification and confirm that it fails as expected.

4. **Implement to Pass (Green Phase):**
   - Write the minimum amount of prompt instructions or configuration code necessary to pass the verification.
   - Run the verification suite again and confirm that it now passes.

5. **Refactor (Optional but Recommended):**
   - Improve the clarity, precision, and performance of the prompts without changing the external behavior.
   - Rerun verification to ensure it still passes.

6. **Verify Standards:** Ensure the prompt follows the project's `product-guidelines.md` and `general.md` style guide.

7. **Document Deviations:** If implementation differs from the tech stack or guidelines, update the relevant documents first.

8. **Commit Changes:**
   - Stage all changes related to the task.
   - Commit after every completed task.
   - Propose a clear, concise commit message.

9. **Attach Task Summary with Git Notes:**
   - **Step 9.1: Get Commit Hash:** Obtain the hash of the *just-completed commit*.
   - **Step 9.2: Draft Note Content:** Create a detailed summary (task name, changes, file list, rationale).
   - **Step 9.3: Attach Note:** Use `git notes add -m "<content>" <hash>`.

10. **Record Task Commit SHA:**
    - Update `plan.md`, change status to `[x]`, and append the first 7 characters of the commit hash.

11. **Commit Plan Update:**
    - Stage and commit the updated `plan.md`.

### Phase Completion Verification and Checkpointing Protocol

**Trigger:** This protocol is executed immediately after a task is completed that also concludes a phase in `plan.md`.

1. **Announce Protocol Start:** Inform the user that the phase is complete.

2. **Execute Automated Validation:** Run the full suite of prompt evaluations and integration tests.

3. **Propose Manual Verification Plan:** Provide a step-by-step guide for the user to manually verify the new functionality.

4. **Await User Feedback:** Pause for explicit user confirmation.

5. **Create Checkpoint Commit:** Perform a checkpoint commit (e.g., `conductor(checkpoint): End of Phase X`).

6. **Attach Verification Report:** Use Git notes to attach the full validation and verification report to the checkpoint commit.

7. **Record Phase Checkpoint SHA:** Update `plan.md` with the checkpoint SHA.

## Definition of Done

A task is complete when:
1. All instructions/configs implemented to specification
2. Automated verifications (prompts/scripts) passing
3. Prompt follows product guidelines and style guides
4. Changes committed per task
5. Git note with task summary attached
6. Implementation recorded in `plan.md`
