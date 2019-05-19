pragma solidity ^0.5.0;

contract WeddingCertificate {
  enum Statut {MARIE, DIVORCE}
 
  // Les noms des mariés et le statut du mariage (Mariés ou divorcés)
  string private nom1;
  string private nom2;
  Statut private statut;
 
  constructor(string memory _nom1, string memory _nom2) public {
    nom1 = _nom1;
    nom2 = _nom2;
    statut = Statut.MARIE;
  }
  
  // Donne les noms des mariés
  function getNoms() public view returns (string memory, string memory) {
    return (nom1, nom2);
  }
 
  function getStatutRaw() public view returns (uint8) {
    return uint8(statut);
  }
 
  // Donne le statut du mariage
  function getStatut() public view returns (Statut) {
    return statut;
  }
   
  // Permet de changer le statut du mariage. Ainsi, un couple pourra divorcer et même se remarier.
  function setStatut(uint8 _statut) public {
    assert(uint(Statut.DIVORCE) >= _statut);
    statut = Statut(_statut);
  }
}

