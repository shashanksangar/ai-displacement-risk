#!/bin/bash
echo "🧪 Production Readiness Test"
echo "=============================="
echo ""

# Test 1: Files exist
echo "📁 Test 1: Required Files"
files=("index.html" "server.py" "setup.sh" "README.md" "FEATURES.md" ".gitignore")
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "  ✅ $file"
    else
        echo "  ❌ $file MISSING"
    fi
done
echo ""

# Test 2: Data files exist
echo "📊 Test 2: Data Files"
if [ -f "jobs/occupations.json" ]; then
    count=$(cat jobs/occupations.json | grep -c "title")
    echo "  ✅ occupations.json ($count entries)"
else
    echo "  ❌ occupations.json MISSING"
fi

if [ -f "jobs/scores.json" ]; then
    count=$(cat jobs/scores.json | grep -c "exposure")
    echo "  ✅ scores.json ($count entries)"
else
    echo "  ❌ scores.json MISSING"
fi
echo ""

# Test 3: HTML structure
echo "🌐 Test 3: HTML Features"
checks=(
    "AI Job Displacement Risk Calculator:Page title"
    "calculator-section:Calculator section"
    "calculateRisk:Calculator function"
    "toggleCalculator:Toggle function"
    "searchJobs:Search function"
    "exposure-badge:Exposure badges"
    "result-panel:Result panel"
)

for check in "${checks[@]}"; do
    search="${check%%:*}"
    name="${check##*:}"
    if grep -q "$search" index.html; then
        echo "  ✅ $name"
    else
        echo "  ❌ $name MISSING"
    fi
done
echo ""

# Test 4: Scripts executable
echo "🔧 Test 4: Permissions"
if [ -x "server.py" ]; then
    echo "  ✅ server.py is executable"
else
    echo "  ⚠️  server.py not executable (chmod +x server.py)"
fi

if [ -x "setup.sh" ]; then
    echo "  ✅ setup.sh is executable"
else
    echo "  ⚠️  setup.sh not executable (chmod +x setup.sh)"
fi
echo ""

# Test 5: Git status
echo "📦 Test 5: Git Repository"
if [ -d ".git" ]; then
    echo "  ✅ Git repository initialized"
    remote=$(git remote get-url origin 2>/dev/null)
    if [ -n "$remote" ]; then
        echo "  ✅ Remote: $remote"
    else
        echo "  ❌ No remote configured"
    fi
else
    echo "  ❌ Not a git repository"
fi
echo ""

echo "=============================="
echo "✨ Production Test Complete!"
