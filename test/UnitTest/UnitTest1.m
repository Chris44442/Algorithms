classdef UnitTest1 < matlab.unittest.TestCase
    methods(Test)
        function TestA(tc)
            
            x1 = single(rand()*1000);
            
            
            
            tc.verifyEqual(sin(x1),SinF(x1),'AbsTol',1e-4,'RelTol',1e-4)
        end
    end
end