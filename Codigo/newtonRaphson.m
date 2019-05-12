function [soluciones, errores] = newtonRaphson(matriz, x_0, toleran, iterac)
    jacob = jacobian(matriz);
    variables = transpuesta(symvar(matriz));
    solucionesAux = [];
    erroresAux = [];
    e = 1;
    i = 1;
    while i ~= iterac
            funcionEval = subs(matriz, variables, x_0);
            jacobEval = subs(jacob, variables, x_0);
            x_1 = eval(x_0 - (inv(jacobEval)*(funcionEval')));
           
            e = norm(x_1 - x_0, inf)/norm(x_1, inf);
            
            solucionesAux = [solucionesAux , x_1];
            erroresAux = [erroresAux , e];
            
            i = i + 1;
            x_0 = x_1;
            
            if e < toleran
                break;
            end
    end
    soluciones = solucionesAux;
    errores = erroresAux;
end