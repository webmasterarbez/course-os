# Quality Audit Checklist

## Phase Completion Audit

### Phase 1: Import
- [ ] Source catalog complete
- [ ] Gap analysis done
- [ ] All sources summarized

### Phase 2: Research
- [ ] 4-pass research complete
- [ ] Knowledge map created
- [ ] Misconceptions documented

### Phase 3: Discovery
- [ ] 2-3 personas created
- [ ] Competitor analysis done
- [ ] Positioning defined

### Phase 4: Strategy
- [ ] Outcomes defined (Bloom's)
- [ ] Format specified
- [ ] Success metrics set (Kirkpatrick)

### Phase 5: Architecture
- [ ] Curriculum structured
- [ ] Lessons specified
- [ ] Outcomes mapped to modules

### Phase 6: Content
- [ ] Lesson blueprints complete
- [ ] Examples created
- [ ] Activities designed

### Phase 7: Scripts
- [ ] All lessons scripted
- [ ] Visual cues included
- [ ] Timing estimated

### Phase 8: Assessments
- [ ] All outcomes assessed
- [ ] Rubrics created
- [ ] Passing criteria set

### Phase 9: Media
- [ ] Shot lists complete
- [ ] Graphics specified
- [ ] Accessibility planned

## Content Quality Audit

### Instructional Design
- [ ] Gagné's 9 events addressed per lesson
- [ ] Merrill's principles applied
- [ ] Bloom's levels appropriate
- [ ] Kirkpatrick levels covered

### Consistency
- [ ] Voice consistent across scripts
- [ ] Formatting consistent
- [ ] Terminology consistent
- [ ] Visual style defined

### Accessibility
- [ ] WCAG 2.1 AA planned
- [ ] UDL principles applied
- [ ] Captions specified
- [ ] Alt text planned

## Audit Report Template

```yaml
# production/quality-audit.yaml
audit:
  date: YYYY-MM-DD
  auditor: ""

  phase_completion:
    phase_1: pass|fail|partial
    phase_2: pass|fail|partial
    # ... all phases

  quality_scores:
    instructional_design: 0-100
    content_quality: 0-100
    accessibility: 0-100
    consistency: 0-100

  issues:
    - phase: ""
      issue: ""
      severity: critical|major|minor
      resolution: ""

  overall: pass|fail
  notes: ""
```
