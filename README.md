# AI Job Exposure Search

A searchable web interface for exploring AI exposure ratings across 342 U.S. occupations, based on [karpathy/jobs](https://github.com/karpathy/jobs).

## 🎯 Features

- 🔍 **Search by Profession** - Type any job title or category to filter results instantly
- 📊 **AI Exposure Ratings** - See how susceptible each occupation is to AI/automation (0-10 scale)
- 💡 **Detailed Rationale** - Understand why each job received its exposure rating
- 🎨 **Beautiful UI** - Color-coded cards with intuitive, responsive design
- 📈 **342 Occupations** - Complete U.S. Bureau of Labor Statistics dataset

## 🚀 Quick Start

### 1. Clone and Setup

```bash
git clone https://github.com/YOUR_USERNAME/ai-job-search.git
cd ai-job-search
./setup.sh
```

The setup script will automatically clone the job data from [karpathy/jobs](https://github.com/karpathy/jobs).

### 2. Start the Server

```bash
python3 server.py
```

The server will:
- Start on `http://localhost:8000`
- Automatically open your browser
- Serve the searchable job interface

### 3. Search for Jobs

Once the interface loads:

1. Type any profession in the search box (e.g., "teacher", "engineer", "developer")
2. Results filter instantly as you type
3. View AI exposure scores and detailed rationales
4. Explore 342 different occupations

**Example searches to try:**
- "software" - Find all software-related jobs
- "teacher" - See various teaching professions
- "nurse" - Healthcare occupations
- "accountant" - Financial roles
- "engineer" - All engineering types

### 4. Understanding the Ratings

**AI Exposure Score (0-10):**
- **0-3 (Green)**: Low AI exposure - jobs requiring significant physical presence
- **4-6 (Orange)**: Medium AI exposure - hybrid digital/physical work
- **7-10 (Red)**: High AI exposure - primarily digital/knowledge work

The average score across all occupations is 5.3/10.

## 📖 How It Works

The interface loads job data from the [karpathy/jobs](https://github.com/karpathy/jobs) repository and provides:

1. **Instant Search** - JavaScript-based filtering of all 342 occupations
2. **Visual Hierarchy** - Color-coded badges show AI exposure at a glance
3. **Detailed Information** - Each card shows:
   - Job title
   - Category (e.g., "Business and Financial", "Computer and Mathematical")
   - AI exposure score (0-10)
   - Detailed rationale explaining the score

## 📊 Data Source

All data comes from the Bureau of Labor Statistics and includes AI exposure analysis by [@karpathy](https://github.com/karpathy):

- **342 U.S. occupations** from the Occupational Outlook Handbook
- **AI exposure scores** rated 0-10
- **Detailed rationales** explaining automation susceptibility
- **Categories** grouping similar professions

## 📁 Project Structure

```
ai-job-search/
├── index.html              # Main searchable web interface
├── server.py               # Simple Python HTTP server
├── setup.sh                # Setup script (clones job data)
├── jobs/                   # Cloned data from karpathy/jobs (after setup)
│   ├── occupations.json    # Job titles and metadata
│   ├── scores.json         # AI exposure ratings
│   └── ...                 # Other source files
└── README.md               # This file
```

## 🔧 Technical Details

### Frontend
- Pure HTML/CSS/JavaScript - no build tools required
- Responsive design works on desktop and mobile
- Real-time search filtering
- Data loaded from JSON files

### Server
- Simple Python HTTP server
- CORS enabled for local development
- Auto-opens browser on startup

## 💡 Use Cases

- **Career Planning** - Understand which professions are most/least susceptible to AI
- **Education Guidance** - Help students choose future-proof careers
- **Workforce Analysis** - Analyze automation impact across industries
- **Research** - Study AI's potential impact on the job market

## 🐛 Troubleshooting

### Port Already in Use

If port 8000 is busy:
```bash
# Edit server.py and change PORT = 8000 to another port
# Or manually specify a different port
python3 -m http.server 8080
```

### Data Not Loading

Make sure you ran the setup script:
```bash
./setup.sh
```

This clones the required job data from karpathy/jobs into the `jobs/` directory.

## 📚 Credits

- **Data Source**: [Bureau of Labor Statistics Occupational Outlook Handbook](https://www.bls.gov/ooh/)
- **AI Exposure Analysis**: [@karpathy](https://github.com/karpathy)
- **Original Project**: [karpathy/jobs](https://github.com/karpathy/jobs)

## 🎯 Future Enhancements

Potential improvements:
- Advanced filtering (by category, exposure range)
- Sorting options (alphabetical, by score, by employment)
- Comparison mode (compare multiple jobs side-by-side)
- Export search results
- Charts and visualizations of AI exposure distribution

## 📄 License

This project is a web interface built on top of data from [karpathy/jobs](https://github.com/karpathy/jobs). Please refer to the original repository for data licensing.

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests
- Improve documentation
