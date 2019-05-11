function [soluciones, errores] = newtonRaphson(matriz, x_0, toleran, iterac)
    jacob = jacobian(matriz);
    variables = findsym(matriz);
    solucionesAux = [];
    erroresAux = [];
    e = 1;
    i = 1;
    while i ~= iterac
        if e < toleran
            funcionEval = subs(matriz, variables, x_0);
            jacobEval = subs(jacob, variables, x_0);
            x_1 = x_0 - inversa(jacobEval)*traspuesta(funcionEval);
            e = norm(x_1 - x_0, inf)/norm(x_1, inf);
            solucionesAux = [solucionesAux , x_1];
            erroresAux = [erroresAux , e];
            i = i + 1;
            x_0 = x_1;
        else
            i = iterac;
        end
    end
    soluciones = solucionesAux;
    errores = erroresAux;
end