pragma solidity ^0.5.0;
import "./WeddingCertificate.sol";

contract WeddingCertificateFactory {
    
  // Liste de contrat de mariage existant
  address[] public weddingCertificates;
 
  // Annonce d'un mariage
  event WeddingAnnouncement(address certificat, string nom1, string nom2);
 
  // Donne le nombre de contrat existant
  function getContractCount() public view returns(uint) {
    return weddingCertificates.length;
  }

  // Créé un nouveau contrat de mariage.
  function nouveauContrat(string memory nom1, string memory nom2) public returns(address) {
    WeddingCertificate wc = new WeddingCertificate(nom1, nom2);
    weddingCertificates.push(address(wc));
    emit WeddingAnnouncement(address(wc), nom1, nom2);
    return address(wc);
  }
}
