---
name: spree-orchestrator
description: Coordinate the multi-agent engineering workflow for the Spree Dart SDK, including research gates, delegation, integration, and release approval.
---

# Spree SDK Orchestration Skill

## Operating procedure
1. Read root `AGENTS.md`, roadmap, relevant task, role profile, and ADRs.
2. Determine prerequisites and file ownership before delegation.
3. Delegate only narrow tasks with explicit deliverables and acceptance criteria.
4. Keep no more than four children active initially.
5. Do not start implementation before research and architecture approval.
6. Review every handoff and diff; run integration checks before accepting work.
7. Update roadmap and feature parity matrix after each accepted task.
8. Escalate conflicting API evidence and scope decisions to the owner.
9. Require independent QA and security review before release.
10. Require explicit owner approval before publishing.

## Required child brief
Include role profile, this skill, objective, source evidence requirements, prerequisites, exact allowed files, forbidden files, acceptance criteria, commands, and handoff format.

## Integration discipline
Never allow overlapping file ownership. Prefer disjoint worktrees/branches. The parent orchestrator owns merges and shared contract changes.
