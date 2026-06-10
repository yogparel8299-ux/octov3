#!/bin/bash
set -e

echo "=== OCTO BATCH 1 FOUNDATION ==="

mkdir -p octo/{apps/web,workers,packages,supabase,infrastructure,scripts,prompts,types,.github,.devcontainer}

cat > octo/package.json <<'EOF'
{
  "name": "octo",
  "private": true,
  "version": "1.0.0",
  "packageManager": "pnpm@10.12.4",
  "scripts": {
    "dev": "echo Octo foundation ready",
    "build": "echo Build placeholder"
  }
}
EOF

cat > octo/pnpm-workspace.yaml <<'EOF'
packages:
  - "apps/*"
  - "workers/*"
  - "packages/*"
EOF

cat > octo/.gitignore <<'EOF'
node_modules
.next
dist
.env
.turbo
EOF

cat > octo/.env.example <<'EOF'
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
SUPABASE_SERVICE_ROLE_KEY=
PADDLE_API_KEY=
OPENAI_API_KEY=
ANTHROPIC_API_KEY=
GOOGLE_AI_API_KEY=
EOF

cat > octo/README.md <<'EOF'
# Octo
AI Operating System
EOF

cat > octo/.devcontainer/devcontainer.json <<'EOF'
{
  "name": "Octo",
  "image": "mcr.microsoft.com/devcontainers/javascript-node:22",
  "postCreateCommand": "npm install -g pnpm"
}
EOF

echo "Batch 1 Foundation Generated"
