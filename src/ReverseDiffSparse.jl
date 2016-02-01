module ReverseDiffSparse

using Base.Meta
using ForwardDiff
import DualNumbers: Dual, epsilon
import Calculus
import Lazy
# Override basic math functions to return NaN instead of throwing errors.
# This is what NLP solvers expect, and
# sometimes the results aren't needed anyway,
# because the code may compute derivatives wrt constants.
import NaNMath: sin, cos, tan, asin, acos, acosh, atanh, log, log2, log10, lgamma, log1p, pow

include("types.jl")
include("conversion.jl")
include("linearity.jl")
include("sparsity.jl")
include("forward.jl")
include("reverse.jl")
include("coloring.jl")
export Coloring
#include("mpb_wrapper.jl")
include("subexpressions.jl")
include("simplify.jl")

end # module
