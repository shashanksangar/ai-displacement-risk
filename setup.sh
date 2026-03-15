#!/bin/bash
# Setup script for AI Talent Copilot

echo "🚀 Setting up AI Talent Copilot..."

# Check if jobs directory exists
if [ -d "jobs" ]; then
    echo "✅ Jobs data already exists"
else
    echo "📥 Cloning karpathy/jobs repository..."
    git clone https://github.com/karpathy/jobs.git
    echo "✅ Jobs data cloned successfully"
fi

echo ""
echo "✨ Setup complete!"
echo ""
echo "To start the application:"
echo "  python3 server.py"
echo ""
