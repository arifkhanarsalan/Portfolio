document.addEventListener("DOMContentLoaded", function () {
    const toggleButton = document.getElementById("toggleContact");
    const contactInfo = document.getElementById("contactInfo");

    toggleButton.addEventListener("click", function () {
        if (contactInfo.classList.contains("hidden")) {
            contactInfo.classList.remove("hidden");
            toggleButton.textContent = "Hide Contact Info";
        } else {
            contactInfo.classList.add("hidden");
            toggleButton.textContent = "Show Contact Info";
        }
    });
});
document.addEventListener("DOMContentLoaded", function () {
    // Smooth scrolling for dropdown links
    document.querySelectorAll(".dropdown-content a").forEach(anchor => {
        anchor.addEventListener("click", function (e) {
            e.preventDefault();
            const targetSection = document.querySelector(this.getAttribute("href"));
            targetSection.scrollIntoView({ behavior: "smooth" });
        });
    });
});
