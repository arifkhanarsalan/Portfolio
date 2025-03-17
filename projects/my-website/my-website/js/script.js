document.addEventListener("DOMContentLoaded", function () {
    // Dropdown menu toggle
    const dropBtn = document.querySelector(".dropbtn");
    const dropContent = document.querySelector(".dropdown-content");

    if (dropBtn && dropContent) {
        dropBtn.addEventListener("click", function () {
            dropContent.classList.toggle("show");
        });
    }

    // Close dropdown if clicked outside
    window.addEventListener("click", function (event) {
        if (dropBtn && dropContent && !dropBtn.contains(event.target) && !dropContent.contains(event.target)) {
            dropContent.classList.remove("show");
        }
    });

    // Smooth scrolling for dropdown links
    document.querySelectorAll(".dropdown-content a").forEach(anchor => {
        anchor.addEventListener("click", function (e) {
            e.preventDefault();
            const targetSection = document.querySelector(this.getAttribute("href"));
            if (targetSection) {
                targetSection.scrollIntoView({ behavior: "smooth" });
            }
        });
    });

    // Contact info toggle
    const toggleContact = document.getElementById("toggleContact");
    const contactInfo = document.getElementById("contactInfo");

    if (toggleContact && contactInfo) {
        toggleContact.addEventListener("click", function () {
            if (contactInfo.classList.contains("hidden")) {
                contactInfo.classList.remove("hidden");
                toggleContact.textContent = "Hide Contact Info";
            } else {
                contactInfo.classList.add("hidden");
                toggleContact.textContent = "Show Contact Info";
            }
        });
    }
});
