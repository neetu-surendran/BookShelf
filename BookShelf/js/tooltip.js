$(document).ready(function () {
    //when hidden field  and javascript both are on same page use
    //const stock = $("#" + '<%= hfStock.ClientID %>').val();
    // To access the control from JS file use, 'id$' will cause jQuery to search control whose ID ends with 'hfStock'
    const stock = parseInt($('input[id$=hfStock]').val());
    $('#btnPlus').click(function () {
        const currentQuantity = parseInt($('#quantityInput').val());
        if (currentQuantity >= stock) {
            $(this)
                .attr('data-bs-toggle', 'tooltip')
                .attr('data-bs-placement', 'top')
                .attr('title', `Stock limit exceeded! Available stock: ${stock}`);
            const tooltip = new bootstrap.Tooltip(this);
            tooltip.show();

            setTimeout(() => tooltip.dispose(), 4000);
        }
        else {
            $('#quantityInput').val(currentQuantity + 1);
        }
    });
    $('#btnMinus').click(function () {
        const currentQuantity = parseInt($('#quantityInput').val());

        if (currentQuantity > 1) {
            $('#quantityInput').val(currentQuantity - 1);
        }
    });
});
