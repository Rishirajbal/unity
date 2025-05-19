// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);
        
        if (targetElement) {
            window.scrollTo({
                top: targetElement.offsetTop - 80,
                behavior: 'smooth'
            });
        }
    });
});

// Add animation on scroll
const animateOnScroll = () => {
    const elements = document.querySelectorAll('.feature-card, .download-card, .step, .controls, .hero-content, .hero-image');
    
    elements.forEach(element => {
        const elementPosition = element.getBoundingClientRect().top;
        const screenPosition = window.innerHeight / 1.3;
        
        if (elementPosition < screenPosition) {
            element.style.opacity = '1';
            element.style.transform = element.classList.contains('hero-image') ? 'translateX(0)' : 'translateY(0)';
        }
    });
};

// Initialize animations
document.addEventListener('DOMContentLoaded', () => {
    // Add animation classes to elements
    const fadeUpElements = document.querySelectorAll('.feature-card, .download-card, .step, .controls');
    fadeUpElements.forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(20px)';
        element.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    });
    
    // Hero animations
    const heroContent = document.querySelector('.hero-content');
    const heroImage = document.querySelector('.hero-image');
    
    if (heroContent) {
        heroContent.style.opacity = '0';
        heroContent.style.transform = 'translateY(30px)';
        heroContent.style.transition = 'opacity 0.8s ease, transform 0.8s ease';
    }
    
    if (heroImage) {
        heroImage.style.opacity = '0';
        heroImage.style.transform = 'translateX(30px)';
        heroImage.style.transition = 'opacity 0.8s ease 0.3s, transform 0.8s ease 0.3s';
    }
    
    // Trigger initial animation check
    setTimeout(() => {
        animateOnScroll();
    }, 100);
    
    // Add scroll event listener
    window.addEventListener('scroll', animateOnScroll);
    
    // Add download counter
    const downloadCounter = document.getElementById('download-counter');
    if (downloadCounter) {
        const randomDownloads = Math.floor(Math.random() * 500) + 1500;
        downloadCounter.textContent = randomDownloads.toLocaleString();
    }
});

// Add hover effect to download button
const downloadButton = document.querySelector('.download-button');
if (downloadButton) {
    downloadButton.addEventListener('mouseover', () => {
        downloadButton.innerHTML = '<i class="fas fa-download"></i> Click to Download';
    });
    
    downloadButton.addEventListener('mouseout', () => {
        downloadButton.innerHTML = '<i class="fas fa-download"></i> Download Game (25.9 MB)';
    });
    
    // Track download clicks
    downloadButton.addEventListener('click', () => {
        // Increment download counter
        const downloadCounter = document.getElementById('download-counter');
        if (downloadCounter) {
            const currentCount = parseInt(downloadCounter.textContent.replace(/,/g, ''));
            downloadCounter.textContent = (currentCount + 1).toLocaleString();
        }
        
        // Show download started notification
        const notification = document.createElement('div');
        notification.className = 'download-notification';
        notification.innerHTML = '<i class="fas fa-check-circle"></i> Download started!';
        document.body.appendChild(notification);
        
        setTimeout(() => {
            notification.style.opacity = '1';
            notification.style.transform = 'translateY(0)';
        }, 100);
        
        setTimeout(() => {
            notification.style.opacity = '0';
            notification.style.transform = 'translateY(-20px)';
            setTimeout(() => {
                notification.remove();
            }, 500);
        }, 3000);
    });
}

// Add FAQ toggle functionality
const faqItems = document.querySelectorAll('.faq-item');
faqItems.forEach(item => {
    const question = item.querySelector('.faq-question');
    const answer = item.querySelector('.faq-answer');
    const icon = item.querySelector('.faq-toggle i');
    
    if (question && answer && icon) {
        question.addEventListener('click', () => {
            // Toggle current item
            answer.style.display = answer.style.display === 'block' ? 'none' : 'block';
            icon.className = answer.style.display === 'block' ? 'fas fa-minus' : 'fas fa-plus';
            
            // Close other items
            faqItems.forEach(otherItem => {
                if (otherItem !== item) {
                    const otherAnswer = otherItem.querySelector('.faq-answer');
                    const otherIcon = otherItem.querySelector('.faq-toggle i');
                    if (otherAnswer && otherIcon) {
                        otherAnswer.style.display = 'none';
                        otherIcon.className = 'fas fa-plus';
                    }
                }
            });
        });
    }
});