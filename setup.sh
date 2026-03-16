#!/bin/bash
# Setup script for AI Displacement Risk Calculator

echo "🚀 Setting up AI Displacement Risk Calculator..."
echo ""

# Check if required data files exist
if [ -f "jobs/occupations.json" ] && [ -f "jobs/scores.json" ]; then
    echo "✅ Jobs data already included in repository"
else
    echo "⚠️  Required data files not found."
    echo ""
    echo "Note: This project originally used data from karpathy/jobs, which has"
    echo "been taken down by the creator. The necessary data files are now"
    echo "included directly in this repository."
    echo ""
    exit 1
fi

echo ""
echo "✨ Setup complete!"
echo ""
echo "📊 Data Source: Bureau of Labor Statistics (342 occupations)"
echo "⚠️  Disclaimer: AI exposure scores are exploratory and subjective."
echo ""
echo "To start the application:"
echo "  python3 server.py"
echo ""
echo "Then open: http://localhost:8000"
echo ""
