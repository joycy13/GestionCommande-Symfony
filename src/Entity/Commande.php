<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CommandeRepository")
 */
class Commande
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="datetime")
     */
    private $Date_Co;

    /**
     * @ORM\Column(type="datetime")
     */
    private $Date_Li;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Produit")
     * @ORM\JoinColumn(nullable=false)
     */
    private $IdPro;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Client")
     * @ORM\JoinColumn(nullable=false)
     */
    private $IdCli;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Statut")
     * @ORM\JoinColumn(nullable=false)
     */
    private $IdSta;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDateCo(): ?\DateTimeInterface
    {
        return $this->Date_Co;
    }

    public function setDateCo(\DateTimeInterface $Date_Co): self
    {
        $this->Date_Co = $Date_Co;

        return $this;
    }

    public function getDateLi(): ?\DateTimeInterface
    {
        return $this->Date_Li;
    }

    public function setDateLi(\DateTimeInterface $Date_Li): self
    {
        $this->Date_Li = $Date_Li;

        return $this;
    }

    public function getIdPro(): ?Produit
    {
        return $this->IdPro;
    }

    public function setIdPro(?Produit $IdPro): self
    {
        $this->IdPro = $IdPro;

        return $this;
    }

    public function getIdCli(): ?Client
    {
        return $this->IdCli;
    }

    public function setIdCli(?Client $IdCli): self
    {
        $this->IdCli = $IdCli;

        return $this;
    }

    public function getIdSta(): ?Statut
    {
        return $this->IdSta;
    }

    public function setIdSta(?Statut $IdSta): self
    {
        $this->IdSta = $IdSta;

        return $this;
    }
}
