#!/bin/bash

# Define the main README file
MAIN_README="README.md"

# Ensure hyperlinks are properly formatted in the main README
echo "🔗 Updating hyperlinks in $MAIN_README..."

cat <<EOL > $MAIN_README
# 🚀 Arsalan Khan | Technical Writer & Developer Portfolio  

## 📌 About Me  
- Passionate about **technical writing, content strategy, and structured documentation**.  
- Experienced in **Git, API documentation, AWS, and cloud technologies**.  
- Building expertise in **software development, biomechanics, and AI**.  

## 📂 Featured Projects  
- [🔗 Project 1 - API Documentation](projects/Project1/README.md)  
- [🔗 Project 2 - Technical Writing Samples](projects/Project2/README.md)  
- [🔗 Project 3 - Personal Website (GitHub Pages)](projects/Project3/README.md)  

## 📫 Connect With Me  
- 💼 [LinkedIn](https://www.linkedin.com/in/YOUR-PROFILE-HERE)  
- 🌐 [GitHub](https://github.com/arifkhanarsalan)  
EOL

echo "✅ Main README hyperlinks updated!"

# Loop through each project and update its README file
for project in "Project1" "Project2" "Project3"; do
    PROJECT_README="projects/$project/README.md"

    echo "🔗 Updating hyperlinks in $PROJECT_README..."

    cat <<EOL > $PROJECT_README
# 🚀 $project  

## 📌 Description  
This project contains structured documentation to explain its purpose.

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

## 📫 Connect With Me  
- 💼 [LinkedIn](https://www.linkedin.com/in/YOUR-PROFILE-HERE)  
- 🌐 [GitHub](https://github.com/arifkhanarsalan)  

## 📝 License  
This project is licensed under the **MIT License**.
EOL

    echo "✅ Hyperlinks updated in $PROJECT_README"
done

# Commit and push the changes
echo "🚀 Committing and pushing updated READMEs..."
git add README.md projects/Project1/README.md projects/Project2/README.md projects/Project3/README.md
git commit -m "Updated hyperlinks in README files"
git push origin main

echo "🎉 All hyperlinks updated successfully!"

