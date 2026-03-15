# AI Displacement Risk Calculator

A searchable web interface for exploring AI exposure ratings across 342 U.S. occupations with a personal displacement risk calculator, based on [karpathy/jobs](https://github.com/karpathy/jobs).

## 🎯 Features

### Core Features
- 🔍 **Search by Profession** - Type any job title or category to filter results instantly
- 📊 **AI Exposure Ratings** - See how susceptible each occupation is to AI/automation (0-10 scale)
- 💡 **Detailed Rationale** - Understand why each job received its exposure rating
- 🎨 **Beautiful UI** - Color-coded cards with intuitive, responsive design
- 📈 **342 Occupations** - Complete U.S. Bureau of Labor Statistics dataset

### 🆕 Personal Displacement Risk Calculator
- **Interactive Risk Assessment** - Calculate your personal displacement risk based on your profession
- **AI Skills Impact** - See how learning AI/ML skills affects your job security
- **Smart Recommendations** - Get personalized advice on upskilling strategies
- **Before/After Comparison** - Visual comparison of risk with and without AI skills
- **Risk Reduction Metrics** - See exactly how much AI skills can reduce your displacement risk

## 🚀 Quick Start

### 1. Clone and Setup

```bash
git clone https://github.com/YOUR_USERNAME/ai-displacement-risk.git
cd ai-displacement-risk
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

### 5. Using the Displacement Risk Calculator

Click **"Open Calculator"** to access the personal risk assessment tool:

1. **Select Your Profession** from the dropdown (342 occupations available)
2. **Toggle AI Skills** to indicate whether you have AI/ML training
3. **View Your Results**:
   - **Without AI Skills**: Your baseline displacement risk
   - **With AI Skills**: How much your risk decreases with AI knowledge
   - **Personalized Insights**: Context-specific analysis of your situation
   - **Recommendations**: Specific advice on upskilling priorities

**Example Results:**
- **Software Developer** (AI Exposure: 8/10)
  - Without AI skills: 8/10 risk
  - With AI skills: 2/10 risk
  - 75% risk reduction by learning AI

- **Construction Worker** (AI Exposure: 2/10)
  - Without AI skills: 2/10 risk
  - With AI skills: 1/10 risk
  - Already low risk, AI helps with admin tasks

**The Calculator Logic:**
- High-exposure jobs benefit dramatically from AI skills (become AI users, not replacements)
- Low-exposure jobs see smaller but meaningful improvements (administrative efficiency)
- Risk reduction typically ranges from 60-80% for knowledge workers

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
ai-displacement-risk/
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

### For Individuals
- **Career Planning** - Understand which professions are most/least susceptible to AI
- **Personal Risk Assessment** - Calculate your specific displacement risk
- **Upskilling Strategy** - Get data-driven recommendations on learning AI
- **Career Transitions** - Compare displacement risk across different career paths

### For Educators & Advisors
- **Education Guidance** - Help students choose future-proof careers
- **Curriculum Planning** - Identify where AI skills training is most critical
- **Career Counseling** - Provide evidence-based career advice

### For Organizations
- **Workforce Analysis** - Analyze automation impact across industries
- **Training Programs** - Identify which roles need AI upskilling most urgently
- **Hiring Strategy** - Understand AI exposure in different positions

### For Researchers
- **Labor Market Research** - Study AI's potential impact on employment
- **Policy Analysis** - Inform workforce development policies
- **Academic Studies** - Access comprehensive occupational AI exposure data

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

## 📸 Screenshots

### Search Interface
Browse and search through 342 occupations with color-coded AI exposure ratings.

### Displacement Risk Calculator
Interactive tool showing how AI skills impact your job security:
- Select your profession
- Toggle AI skills on/off
- View personalized risk assessment
- Get targeted recommendations

## 🎯 Future Enhancements

Potential improvements:
- **Advanced Filtering** - Filter by category, exposure range, risk level
- **Sorting Options** - Sort alphabetically, by score, by employment numbers
- **Comparison Mode** - Compare multiple jobs side-by-side
- **Export Results** - Download search results and personal assessments
- **Data Visualizations** - Charts showing AI exposure distribution across industries
- **Career Path Simulator** - Explore risk across potential career transitions
- **Skills Gap Analysis** - Identify specific AI skills most valuable for your field
- **Industry Trends** - Track how AI exposure changes over time
- **Salary Correlation** - Analyze relationship between AI exposure and compensation

## 📄 License

This project is a web interface built on top of data from [karpathy/jobs](https://github.com/karpathy/jobs). Please refer to the original repository for data licensing.

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests
- Improve documentation
