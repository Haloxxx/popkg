using popkg, Test

@testset "powell" begin

    x, f = 10, x->x^4+x^3+x^2+sin(x)
    @test powell(f, x) == (-0.5480747372690095, -0.29506124329088085)
    
    x, f = -24.5, x->x^2
    @test powell(f, x) == (0.0, 0.0)

    @testset "exception" begin

        @test_throws String powell(x->1, 6)

    end

end