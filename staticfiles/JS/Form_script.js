document.addEventListener('DOMContentLoaded', function() {
    // Define the slider names and text labels
    const sliders = [
        { name: 'Rating1', textClass: 'satisfactionText' },
        { name: 'Rating2', textClass: 'satisfactionText2' },
        { name: 'Rating3', textClass: 'satisfactionText3' },
        { name: 'Rating4', textClass: 'satisfactionText4' },
        { name: 'Rating5', textClass: 'satisfactionText5' },
        { name: 'Rating6', textClass: 'satisfactionText6' },
    ];

    sliders.forEach(function(sliderInfo) {
        const slider = document.getElementById(sliderInfo.name);

        slider.addEventListener('input', function() {
            const value = this.value;
            const text = getValueText(value);

            document.querySelector(`.${sliderInfo.textClass}`).textContent = text;

            // Change color based on value
            const color = getValueColor(value);
            document.querySelector(`.${sliderInfo.textClass}`).style.color = color;
        });
    });

    function getValueText(value) {
        switch (value) {
            case '1':
                return 'Not Satisfied';
            case '2':
                return 'Slightly Satisfied';
            case '3':
                return 'Moderately Satisfied';
            case '4':
                return 'Satisfied';
            case '5':
                return 'Highly Satisfied';
            default:
                return '';
        }
    }

    function getValueColor(value) {
        switch (value) {
            case '1':
                return 'red';
            case '2':
                return 'orange';
            case '3':
                return '#FFD700';
            case '4':
                return '#76BA1B';
            case '5':
                return 'green';
            default:
                return 'black';
        }
    }
});
