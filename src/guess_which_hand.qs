
namespace quantum_disaster {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
 
	//Console input doesn't work with Q#, so I am using python instead
    operation randomBit() : Result {
		use q = Qubit(); 
		H(q); //Uses the Hammard Gate transform to create a superposition state 
		let returnable = M(q); //Sets the qubit to |0> or |1>
		Reset(q); //Reminds me of free() or delete
		return returnable;
    }
}

