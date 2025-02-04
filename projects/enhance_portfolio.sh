#!/bin/bash

# Step 1: Remove .DS_Store and prevent it from being tracked
echo "🗑️ Removing .DS_Store files..."
find . -name ".DS_Store" -type f -delete
echo ".DS_Store" >> .gitignore

# Step 2: Ensure project directories exist
echo "📂 Ensuring project directories exist..."
mkdir -p projects/Project1 projects/Project2 projects/Project3

# Step 3: Update the main README.md with project links
echo "📝 Updating main README.md..."
cat <<EOL > README.md
# 🚀 Arsalan Khan | Technical Writer & Developer Portfolio  

## 📌 About Me  
- Passionate about **technical writing, content strategy, and structured documentation**.  
- Experienced in **Git, API documentation, AWS, and cloud technologies**.  
- Building expertise in **software development, biomechanics, and AI**.  

## 📂 Featured Projects  
- [🔗 Project 1 - API Documentation](projects/Project1)  
- [🔗 Project 2 - Technical Writing Samples](projects/Project2)  
- [🔗 Project 3 - Personal Website (GitHub Pages)](projects/Project3)  

## 📫 Connect With Me  
- 💼 [LinkedIn](https://www.linkedin.com/in/YOUR-PROFILE-HERE)  
- 🌐 [GitHub](https://github.com/arifkhanarsalan)  
EOL

echo "✅ Main README.md updated!"

# Step 4: Auto-generate structured README.md files for each project
echo "📄 Creating README.md files for projects..."

declare -A project_descriptions
project_descriptions["Project1"]="API Documentation to help developers integrate seamlessly."
project_descriptions["Project2"]="Technical Writing Samples showcasing structured documentation."
project_descriptions["Project3"]="Personal Website built with GitHub Pages."

for project in "Project1" "Project2" "Project3"; do
    cat <<EOL > "projects/$project/README.md"
# 🚀 $project

## 📌 Description  
${project_descriptions[$project]}

## 🛠 Technologies Used  
- Technology 1  
- Technology 2  
- Technology 3  

## 🔥 Features  
- Feature 1  
- Feature 2  
- Feature 3  

## 💻 Installation  
\`\`\`bash
# Clone the repository
git clone https://github.com/arifkhanarsalan/Portfolio.git
\`\`\`

## 🚀 Usage  
\`\`\`bash
# Example usage command
python main.py
\`\`\`

## 🖼 Screenshots  
*(Add images later if applicable.)*

## 📝 License  
This project is licensed under the **MIT License**.
EOL
    echo "✅ README.md created for $project"
done

# Step 5: Commit and Push All Changes to GitHub
echo "🚀 Committing and pushing changes to GitHub..."
git add .
git commit -m "Enhanced portfolio: cleaned repo, updated READMEs, and added project links"
git push origin main

echo "🎉 All enhancements applied successfully!"


