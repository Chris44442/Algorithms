function SinFOutput = SinF(input)
    SinFOutput = single(zeros(size(input)));
    for i = 1:numel(input)

        InputIsNegative = input(i) < 0;
        input(i) = abs(input(i));
        if input(i) > pi/2
            input(i) = single(pi) - input(i);
        end

        c1 = single(-1.6665853e-1);
        c2 = single(8.3142747e-3);
        c3 = single(-1.8542223e-4);

        InputPowTwo = input(i).*input(i);
        InputPowThree = InputPowTwo.*input(i);
        InputPowFive = InputPowThree.*InputPowTwo;

        p1 = c3 * InputPowTwo;
        p2 = p1 + c2;
        p3 = c1 * InputPowThree;

        p4 = p3 + input(i);
        p5 = p2 .* InputPowFive;

        p6 = p4 + p5;

        if InputIsNegative
           p6 = -1 * p6; 
        end
        SinFOutput(i) = p6;
    end
end