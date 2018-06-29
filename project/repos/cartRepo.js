exports.add = (cart, item) => {
    for (i = cart.length - 1; i >= 0; i--) {
        if (cart[i].ProId === item.ProId) {
            cart[i].Quantity += item.Quantity;
            return;
        }
    }

    cart.push(item);
}

exports.add1 = (cart, id, num) => {
    for (i = cart.length - 1; i >= 0; i--) {
        if (cart[i].ProId === id) {
            cart[i].Quantity = num;
            return;
        }
    }

    cart.push(item);
}
exports.remove = (cart, proId) => {
    for (var i = cart.length - 1; i >= 0; i--) {
        if (proId === cart[i].ProId) {
            cart.splice(i, 1);
            return;
        }
    }
}