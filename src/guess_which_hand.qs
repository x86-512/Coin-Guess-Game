
namespace quantum_disaster {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
 
	//Console input doesn't work with Q#, so I am using python instead
    operation randomBit() : Result {
		use q = Qubit(); 
		H(q); //Uses the Hammard Gate transform to create a superposition state 
		//Dirac Notation: |Ψ> = (1/√2)|0> + (1/√2)|1> (the superposition state vector has a magnitude of 1 so the wavefunction magnitudes squared add up to 1)
		let returnable = M(q); //Measures the qubit, forcing it to choose to |0> or |1>, there is a 50% probability of it being one or the other
		Reset(q); //Reminds me of free() or delete
		return returnable;
    }
}

