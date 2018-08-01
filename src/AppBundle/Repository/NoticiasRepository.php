<?php
// src/AppBundle/Repository/NoticiasRepository.php
namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

class NoticiasRepository extends EntityRepository
{
    public function findAllOrderedByFechaHora()
    {
    	$entityManager = $this->getEntityManager();

    	$query = $entityManager->createQuery('SELECT n FROM AppBundle:Noticia n ORDER BY n.fechaHora DESC');
        
        return $query->getResult();
    }
}