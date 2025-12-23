# Accessibility Checklist

## WCAG 2.1 AA Compliance

### Video Content
- [ ] Captions for all spoken content
- [ ] Audio descriptions for visual-only content
- [ ] Transcripts available
- [ ] No flashing content (>3 flashes/second)

### Audio Content
- [ ] Transcripts for all audio
- [ ] Clear audio quality
- [ ] Consistent volume levels

### Visual Content
- [ ] Alt text for all images
- [ ] Color not sole means of conveying info
- [ ] Sufficient color contrast (4.5:1 min)
- [ ] Text readable without images

### Interactive Content
- [ ] Keyboard accessible
- [ ] Focus indicators visible
- [ ] Form labels associated
- [ ] Error messages clear

## Caption Specifications

```yaml
# production/accessibility/caption-specs.yaml
captions:
  format: SRT|VTT
  timing:
    max_duration: 7  # seconds
    min_duration: 1
    reading_speed: 200  # words per minute

  style:
    max_lines: 2
    max_chars_per_line: 42
    position: bottom_center

  content:
    speaker_identification: true
    sound_effects: true  # [music], [applause]
    accuracy: verbatim|edited
```

## Audio Description Specifications

```yaml
audio_descriptions:
  lessons_requiring:
    - lesson-01  # Complex visual demo
    - lesson-05  # Diagram explanation

  approach: extended|standard
  voice: distinct_from_instructor

  content:
    describe:
      - Visual demonstrations
      - On-screen text not spoken
      - Charts and diagrams
      - Relevant actions
```

## UDL Considerations

### Multiple Means of Engagement
- Varied content types
- Choice in learning paths
- Relevance to learners

### Multiple Means of Representation
- Video + text + audio options
- Visual and verbal explanations
- Summarized and detailed versions

### Multiple Means of Action/Expression
- Different assessment types
- Flexible submission formats
- Varied practice activities
