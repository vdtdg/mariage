pragma solidity >=0.4.0 <0.6.0;
import "remix_tests.sol";
import "./WeddingCertificate.sol";

contract test_1 {
  WeddingCertificate _wc;
  enum Statut {MARIE, DIVORCE}
 
  function beforeAll() public {
    // instantiation du contrat
    _wc = new WeddingCertificate("nom1", "nom2");
  }

  function getNomsTest() public {
    // Test si la fonction getNoms fait bien ce qu'on lui demande.
    string memory nom1;
    string memory nom2;
    (nom1, nom2) = _wc.getNoms();
    Assert.equal(nom1, "nom1", "Nom incorrect");
    Assert.equal(nom2, "nom2", "Nom incorrect");
  }

  function getStatutTest() public {
    Assert.equal(uint(_wc.getStatut()), uint(Statut.MARIE), "Statut initial incorrect");
  }
}

contract test_2 {
  WeddingCertificate _wc;
  enum Statut {MARIE, DIVORCE}
 
  function beforeAll() public {
    // instantiation du contrat et modification du Statut de ce dernier.
    _wc = new WeddingCertificate("nom1", "nom2");
    _wc.setStatut(uint8(Statut.DIVORCE));
  }

  function getStatutDivorceTest() public {
    // use 'Assert' to test the contract
    Assert.equal(uint(_wc.getStatut()), uint(Statut.DIVORCE), "Statut incorrect");
  }
}

