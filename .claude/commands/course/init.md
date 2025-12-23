# /course init

Initialize a new Course OS project.

## Usage

```
/course init "<course-name>"
/course init --profile mini "<course-name>"
/course init --profile workshop "<course-name>"
```

## Arguments

- `<course-name>` - Name of the course (required)
- `--profile` - Configuration profile (optional, default: "default")

## Profiles

| Profile | Description |
|---------|-------------|
| `default` | Full 10-phase course development |
| `mini` | Condensed 7-phase for mini-courses |
| `workshop` | 5-phase for live workshops |

## Process

1. **Create directory structure:**
   ```
   specs/, content/, assets/, production/, .course-os/
   ```

2. **Initialize specifications:**
   - `specs/course.yaml` - Master course spec
   - `specs/progress.yaml` - Phase tracking

3. **Copy profile configuration:**
   - Load profile from `config.yml`
   - Apply phase settings

4. **Initialize git:**
   - Create repo if not exists
   - Add .gitignore
   - Initial commit

## Output Structure

```
<course-name>/
├── specs/
│   ├── course.yaml
│   ├── progress.yaml
│   └── modules/
├── content/
│   ├── scripts/
│   ├── lessons/
│   ├── assessments/
│   ├── examples/
│   ├── activities/
│   └── resources/
├── assets/
├── production/
│   ├── handoff/
│   ├── checklists/
│   │   └── phase-gates/
│   └── exports/
└── .course-os/
    ├── imports/
    ├── research/
    └── reviews/
```

## Example

```
You: /course init "Building SaaS Products"

Course OS: Initializing course project...
           Profile: default (full 10-phase)

           ✓ Created directory structure
           ✓ Initialized specs/course.yaml
           ✓ Initialized specs/progress.yaml
           ✓ Created git repository

           Project ready at: ./building-saas-products/

           Next: Run /course-os to begin Phase 1
```

## See Also

- `/course-os` - Start or resume development
- `/course status` - View progress
- `config.yml` - Profile configuration
