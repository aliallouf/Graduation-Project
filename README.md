# The Applications of Fusion Neutrosophic Number Theory in Public Key Cryptography and the Improvement of RSA Algorithm

## Overview
This repository contains the implementation and research paper for a graduation project focused on enhancing the security of the RSA cryptosystem by integrating concepts from Fusion Neutrosophic Number Theory. The project demonstrates a novel approach to public-key cryptography that aims to increase the computational complexity required to break the encryption, making it more robust against brute-force attacks.

## Project Goal
The primary objective of this work is to construct a neutrosophic version of the RSA crypto-algorithm. This involves utilizing fundamental concepts from fusion neutrosophic number theory, such as neutrosophic phi-Euler's function, neutrosophic congruencies, and neutrosophic inverses, to develop a cryptosystem that leverages the increased complexity of factoring neutrosophic integers.

## Key Concepts
* **Neutrosophic Number Theory:** A branch of mathematics that introduces "indeterminacy" (denoted by `I` where `I^2 = I`) into algebraic structures. This project applies neutrosophic algebraic structures to number theory concepts relevant to cryptography.
* **RSA Algorithm:** A widely used public-key cryptosystem. The classical RSA algorithm's security relies on the difficulty of factoring large integers into their prime factors.
* **Fusion Neutrosophic Number Theory:** The specific framework used to define neutrosophic versions of traditional number theory functions, which are then applied to the RSA algorithm.

## Files in this Repository

* **`crypto2.pdf`**: This is the core research paper for the project. It provides a comprehensive explanation of the theoretical foundations, the proposed neutrosophic RSA algorithm, detailed examples, and a complexity analysis comparing it with the classical RSA and El-Gamal algorithms.
    * **Authors**: Mehmet Merkepci, Mohammad Abobala, Ali Allouf.
    * **Published In**: Fusion: Practice and Applications (FPA), Vol. 10, No. 02. PP. 69-74, 2023.
    * **DOI**: [https://doi.org/10.54216/FPA.100206](https://doi.org/10.54216/FPA.100206)
    * **Key highlights from the paper include**:
        * Definition of the neutrosophic ring of integers `Z(I)` and positive neutrosophic integers.
        * Introduction of the special neutrosophic phi-Euler's function `φs`.
        * Step-by-step description of the neutrosophic RSA encryption and decryption processes.
        * Empirical comparison showing that the neutrosophic RSA has approximately twice the complexity of classical RSA against brute-force attacks.

* **`neut_rsa.m`**: A MATLAB script that implements the encryption phase of the neutrosophic RSA algorithm.
    * It defines a plain text, picks neutrosophic prime integers `P` and `Q`, computes `N`, calculates the neutrosophic phi of `N` (`φs(N)`), selects a public key `E`, and encrypts the message.
    * The script demonstrates the calculation of the encrypted message `C = M^E (mod N)`.

* **`phi.m`**: A MATLAB function that calculates Euler's totient function (`φ(n)`) for a given integer `n`. This function is a utility required by `neut_rsa.m` for calculating the neutrosophic phi-Euler's function.

* **`neutro_decre.m`**: A MATLAB script that implements the decryption phase of the neutrosophic RSA algorithm.
    * It takes a cipher text `C`, the secret key `D` (inverse of `E`), and `N` as inputs.
    * It demonstrates the decryption of the message `M = C^D (mod N)`, recovering the original plain text.

## How to Run the Code (MATLAB)

1.  Ensure you have MATLAB installed.
2.  Download all `.m` files (`neut_rsa.m`, `phi.m`, `neutro_decre.m`) into the same directory.
3.  Open MATLAB.
4.  Navigate to the directory where you saved the files.

**To encrypt a message:**
* Open `neut_rsa.m` in the MATLAB editor.
* Run the script directly from the editor or by typing `neut_rsa` in the MATLAB command window.
* The script will display the computed `N`, `φs(N)`, and the encrypted message `C`. A stem plot of `C` will also be generated.

**To decrypt a message:**
* Open `neutro_decre.m` in the MATLAB editor.
* Run the script directly from the editor or by typing `neutro_decre` in the MATLAB command window.
* The script will display the decrypted message `M`.

## Results and Complexity
As detailed in `crypto2.pdf`, the neutrosophic RSA algorithm significantly increases the computational time required for brute-force attacks compared to classical RSA. Numerical examples and tables provided in the paper demonstrate that the neutrosophic version's complexity is approximately double that of the classical RSA. This enhancement stems from the added difficulty in splitting neutrosophic positive integers into their factors.

## Future Work
The research suggests further exploration into defining a version of RSA based on the refined neutrosophic number theoretical approach to potentially achieve even greater security enhancements.

## Contact
For any discussions or inquiries, please contact the authors via the email provided in the code files.
ali1allouf@gmail.com
