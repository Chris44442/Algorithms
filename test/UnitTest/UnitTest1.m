classdef UnitTest1 < matlab.unittest.TestCase
    methods(Test)
        function TestA(tc)
            x1 = single(rand(10000000,1)*2*pi-pi);
            tc.verifyEqual(sin(x1),SinF(x1),'AbsTol',single(1.2e-6),'RelTol',single(1.2e-6))
        end
    end
end