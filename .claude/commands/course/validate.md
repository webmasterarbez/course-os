# /course validate

Run quality checks on course development.

## Usage

```
/course validate
/course validate --phase 4
/course validate --all
/course validate --fix
```

## Arguments

- `--phase N` - Validate specific phase only
- `--all` - Validate all phases (including future)
- `--fix` - Attempt to auto-fix issues

## Process

1. Load quality gate configuration from `config.yml`
2. Run checks for completed/current phases
3. Report issues by severity
4. Update `specs/progress.yaml` with scores

## Quality Checks by Phase

### Phase 1: Import
- [ ] `catalog.yaml` exists and valid YAML
- [ ] At least 1 source cataloged
- [ ] `gaps.yaml` exists
- [ ] All sources have summaries

### Phase 2: Research
- [ ] All 4 research passes complete (or profile minimum)
- [ ] `knowledge-map.yaml` exists
- [ ] Concepts have relationships defined
- [ ] Misconceptions documented

### Phase 3: Discovery
- [ ] 2-3 personas defined
- [ ] Personas have all required fields
- [ ] Positioning defined
- [ ] Learner journey mapped

### Phase 4: Strategy
- [ ] Learning outcomes use Bloom's verbs
- [ ] Outcomes are measurable (SMART)
- [ ] Kirkpatrick metrics defined for all 4 levels
- [ ] Format specified
- [ ] Prerequisites documented

### Phase 5: Architecture
- [ ] All outcomes mapped to modules
- [ ] Lessons reference Gagné's events
- [ ] Prerequisites respected in sequencing
- [ ] Duration estimates present

### Phase 6: Content
- [ ] All lessons have blueprints
- [ ] Merrill's principles applied
- [ ] Examples provided
- [ ] Activities designed

### Phase 7: Scripts
- [ ] All lessons have scripts
- [ ] Visual cues included
- [ ] Voice consistent
- [ ] Timing estimated

### Phase 8: Assessments
- [ ] All outcomes have assessments
- [ ] All Kirkpatrick levels covered
- [ ] Rubrics exist for projects
- [ ] Passing criteria defined

### Phase 9: Media
- [ ] Shot lists complete
- [ ] Graphics specified
- [ ] Accessibility specs defined
- [ ] Production notes included

### Phase 10: Production
- [ ] Quality audit complete
- [ ] Handoff documentation exists
- [ ] At least one export generated
- [ ] Launch checklist complete

## Output

```
Course Validation Report
========================

Profile: default
Quality Gates: strict

PHASE 1: Import ✓
  Score: 92/100
  ✓ Catalog exists (12 sources)
  ✓ Gaps documented
  ✓ Summaries complete

PHASE 2: Research ✓
  Score: 88/100
  ✓ All 4 passes complete
  ✓ Knowledge map (45 concepts)
  ⚠ 3 concepts missing relationships

PHASE 3: Discovery ✓
  Score: 95/100
  ✓ 3 personas defined
  ✓ Positioning clear
  ✓ Journey mapped

PHASE 4: Strategy (Current)
  Score: 75/100 (incomplete)
  ✓ 5 outcomes defined
  ✗ Missing Kirkpatrick L4 metrics
  ✗ Prerequisites not documented

Issues Found: 3
  2 Critical (blocking)
  1 Warning (non-blocking)

RECOMMENDATIONS:
  1. Add Kirkpatrick Level 4 metrics to specs/success-metrics.yaml
  2. Create specs/prerequisites.yaml
  3. Add relationships to 3 orphan concepts in knowledge map

Overall: NEEDS ATTENTION
```

## Severity Levels

| Level | Description | Blocks Progress |
|-------|-------------|-----------------|
| Critical | Missing required element | Yes (strict mode) |
| Major | Incomplete but present | Yes (strict mode) |
| Warning | Best practice issue | No |
| Info | Suggestion | No |

## Quality Modes

From `config.yml`:

- **strict**: Block on critical and major issues
- **relaxed**: Block only on critical issues
- **none**: Report only, never block

## See Also

- `/course status` - View progress
- `config.yml` - Quality gate settings
- `.claude/standards/` - Framework references
