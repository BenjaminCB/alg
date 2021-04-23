let vs = lego(100000000, [3, 5, 7, 11, 13, 17, 19]);
console.log(vs[vs.length - 1]);
function lego(l, ss) {
    let vs = [];
    vs[0] = 0;
    for (let i = 1; i <= l; i++) {
        vs[i] = Number.MAX_SAFE_INTEGER;
        let v = vs[i];
        for (s of ss) {
            if (i - s == 0) {
                v = 1;
                break;
            }

            if (i - s > 0) {
                v = v < vs[i - s] + 1 ? v : vs[i - s] + 1;
            }
        }
        vs[i] = v;
    }

    return vs;
}
