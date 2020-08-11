<?php

namespace App\Form;

use App\Entity\Commande;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use App\Entity\Statut;
use App\Entity\Produit;
use App\Entity\Client;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class CommandeType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Date_Co', DateType::class, [
                'widget'=>'single_text'
            ])
            ->add('Date_Li', DateType::class, [
                'widget'=>'single_text'
            ])
            ->add('IdPro', EntityType::class, [
                // looks for choices from this entity
                'class' => Produit::class,
            
                // uses the User.username property as the visible option string
                'choice_label' => 'Libelle',
                ])
            ->add('IdCli', EntityType::class, [
                // looks for choices from this entity
                'class' => Client::class,
                
                // uses the User.username property as the visible option string
                'choice_label' => 'Nom',
                ])
            ->add('IdSta', EntityType::class, [
                // looks for choices from this entity
                'class' => Statut::class,
                    
                // uses the User.username property as the visible option string
                'choice_label' => 'Libelle',
                ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Commande::class,
        ]);
    }
}
