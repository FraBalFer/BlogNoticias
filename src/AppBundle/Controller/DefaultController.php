<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\Normalizer\DateTimeNormalizer;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\XmlEncoder;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     * @Route("/inicio", name="inicio")
     */
    public function noticiasAction()
    {
    	$serializer = new Serializer(array(new DateTimeNormalizer()));
    	
    	$repository = $this->getDoctrine()->getRepository('AppBundle:Noticia');
    	$noticias = $repository->findAllOrderedByFechaHora();
    	$fecha_hora = $serializer->normalize(new \DateTime('2016/01/01'));

    	return $this->render('default/noticias.html.twig',
    		array('noticias' => $noticias)
    	);
    }


    /**
     * @Route("/noticia/{id}", name="noticia", requirements={"id"="\d+"}))
     */
    public function noticiaAction($id)
    {
  		$serializer = new Serializer(array(new DateTimeNormalizer()));
    	
    	$repository = $this->getDoctrine()->getRepository('AppBundle:Noticia');
    	$noticia = $repository->findOneById($id);

    	$url_atras = $this->generateUrl('homepage');

    	return $this->render('default/noticia_unica.html.twig',
    		array('noticia'=>$noticia,
    			'url_atras' => $url_atras
    		)
    	);
    }




    /**
      * @Route("/noticias.{_format}", name="noticias_json_xml", requirements={"_format": "json|xml"})
     */
    public function tareaJsonXmlTareaAction($_format)
    {

        $repository = $this->getDoctrine()->getRepository('AppBundle:Noticia');
        $noticias = $repository->findAll();

        $encoders = array(new XmlEncoder(), new JsonEncoder());
        $normalizers = array(new ObjectNormalizer());

        $serializer = new Serializer($normalizers, $encoders);

        $json_contenido = $serializer->serialize($noticias, $_format);
        
        $response = new Response();
        $response->headers->set('Content-type', 'application/'.$_format.'');
        $response->setContent($json_contenido);
        return $response;
    }

}
