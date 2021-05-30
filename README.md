# A-TSA-Based-Digital-Architecture-for-Computing-Eigenvalues-of-Asymmetric-Matrix
CNNA 2021 A Triangular Systolic Array Based Digital Architecture for Computing Eigenvalues of Asymmetric Matrix

Project name: A Triangular Systolic Array Based Digital Architecture for Computing Eigenvalues of Asymmetric Matrix

University name: Istanbul Technical University

Supervisor name: Müştak Erhan Yalçın

Supervisor e-mail: mustak.yalcin@itu.edu.tr

Participants: Elif Öztürk, İlayda Köseoğlu

Emails:
  elifozturk1109@gmail.com,
  ilaydakoseoglu98@hotmail.com

Abstract—This paper proposes a time-efficient parallel architecture for computing eigenvalues of asymmetric matrix with real values. The QR algorithm is used to compute the eigenvalues of asymmetric matrices. The QR decomposition process is required for the QR algorithm. The Modified Gram Schmidt (MGS) Orthogonalization is structurally suitable for parallel implementation by creating a triangular systolic array architecture. This architecture is created by placing boundary cell (BC) and internal cell (IC) modules in a triangle. In each iteration, Q column vector and R diagonal element are produced within the BC module, R upper diagonal elements are produced in IC modules. In the TSA model created for the next matrix, n diagonal (BC) modules, (n (n-1)) / 2 off-diagonal (IC) modules were used. Diagonal elements are produced, 4 BC, 6 ICs are used for the 4x4 matrix input in the implemented structure. The intended time efficiency is achieved thanks to the parallel IC modules. 

Keywords— systolic array, eigenvalue, QR algorithm, QR decomposition (QRD), Modified Gram Schmidt (MGS), asymmetric matrix
