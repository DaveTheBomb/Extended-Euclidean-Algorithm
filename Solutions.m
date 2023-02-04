function Solutions
     
%   Question 1
    disp("Question 1");
    disp("Ëxterned Eucludian Algorithm");
    disp("____________________________")
    
    v1 = 187; u1 = 102; 
    v2 = 246; u2 = 194;    
    v3 = 44; u3 = 17;    
    v4 = 47; u4 = 21;    
    v5 = 7469; u5 = 2464;    
    v6 = 1819; u6 = 3587;
     
    [g1,a1,b1] = Extended_Euclidean_Int(v1,u1);
    [g2,a2,b2] = Extended_Euclidean_Int(v2,u2);
    [g3,a3,b3] = Extended_Euclidean_Int(v3,u3);
    [g4,a4,b4] = Extended_Euclidean_Int(v4,u4);
    [g5,a5,b5] = Extended_Euclidean_Int(v5,u5);
    [g6,a6,b6] = Extended_Euclidean_Int(v6,u6);
    
    v = [v1; v2; v3; v4; v5; v6];
    u = [u1; u2; u3; u4; u5; u6];
    g = [g1; g2; g3; g4; g5; g6];
    a = [a1; a2; a3; a4; a5; a6];
    b = [b1; b2; b3; b4; b5; b6];
    
    T = table(v, u, g, a, b);
    disp(T)  
%   Question 2
     disp(" ")
     disp("Question 2")
     disp(" ")
     
     p = 2;
     m = 4;
     field = gftuple([-1:2^m-2]', m, 2);
     disp("Galios Field GF(2^4) using primitive polynomial P(x) = x^4 + x + 1"); 
     field
     
     pol1 = 6;
     pol2 = 10;
        
     
     addition = gfadd(pol1,pol2,field);
     disp("Addition")
     disp("(alpha)^6 + (alpha)^10 = ");
     disp(addition)
     multiplication = gfmul(pol1,pol2,field);
     disp("Multiplication")
     disp("(alpha)^6 x (alpha)^10 = ");     
     disp(multiplication)
     division = gfdiv(pol1,pol2,field)   ; 
     disp("Division")
     disp("(alpha)^6 /(alpha)^10 = ");     
     disp(division)
     
     %    Question 3
     disp(" ");
     disp("Question 3");
     disp("P(x) = 1 + (alpha)^3*x + (alpha)^5*x^8");
     disp("Q(x) = (alpha)^6*x^3 + (alpha)^2*x^5");
     pol1 = [0 3 -Inf -Inf -Inf -Inf -Inf -Inf 5];
     pol2 = [-Inf -Inf -Inf 6 -Inf 2];
     multiply2Polynomials = gfconv(pol1,pol2, field);    
     disp("Multiplication: P(x) x Q(x) = ")
     disp(multiply2Polynomials)
        
     %    Question 4
     disp(" ");
     disp("Question 4");  
     disp("x^15 - 1 / x^4 + (alpha)^13*x^3 + (alpha)^6*x^2 + (alpha)^3*x + (alpha)^10");
     pol11 = [-Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf 0];
     pol12 = [0];
     pol1 = gfsub(pol11, pol12, field); % Subtacting 1 from X^15 => X^15 - 1 
     pol2 = [10 3 6 13 0];
     [quotient, remainder] = gfdeconv(pol1,pol2, field);
     disp("Quotient:")
     disp(quotient)
     disp("Remainder:")
     disp(remainder)
     
     %    Question 5
     disp(" ");
     disp(" ");
     disp("Question 5");   
     disp("v = 1 + x + x^2");
     disp("u = x^2");
     
     v = [0 0 -Inf 0];
     u = [-Inf -Inf 0 -Inf];
     [g,a,b] = Extended_Euclidean_GF(v, u, field);
     disp("g:")
     disp(g)
     disp("a:")
     disp(a)     
     disp("b:")
     disp(b)
     
end