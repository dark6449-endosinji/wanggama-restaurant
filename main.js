document.addEventListener('DOMContentLoaded', () => {
    // 1. Navbar Scrolled Effect
    const navbar = document.getElementById('navbar');
    
    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
    });

    // 2. Menu Tabs Logic
    const tabBtns = document.querySelectorAll('.tab-btn');
    const menuContents = document.querySelectorAll('.menu-content');

    tabBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            // Remove active from all tabs
            tabBtns.forEach(b => b.classList.remove('active'));
            menuContents.forEach(c => c.classList.remove('active'));

            // Add active to clicked tab
            btn.classList.add('active');
            const targetId = btn.getAttribute('data-target');
            document.getElementById(targetId).classList.add('active');
        });
    });

    // 3. Intersection Observer for Fade-Up Animations
    const fadeElements = document.querySelectorAll('.fade-up');
    
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, observerOptions);

    fadeElements.forEach(element => {
        observer.observe(element);
    });

    // 4. Contact Button Logic
    const contactBtns = [document.getElementById('nav-contact-btn'), document.getElementById('footer-contact-btn')];
    contactBtns.forEach(btn => {
        if (btn) {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                btn.textContent = '041-355-6070';
                btn.style.backgroundColor = '#fff';
                btn.style.color = '#000';
            });
        }
    });
});
