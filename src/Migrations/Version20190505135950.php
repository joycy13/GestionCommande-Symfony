<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190505135950 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE commande ADD id_pro_id INT NOT NULL, ADD id_cli_id INT NOT NULL, ADD id_sta_id INT NOT NULL');
        $this->addSql('ALTER TABLE commande ADD CONSTRAINT FK_6EEAA67DE5805157 FOREIGN KEY (id_pro_id) REFERENCES produit (id)');
        $this->addSql('ALTER TABLE commande ADD CONSTRAINT FK_6EEAA67D9A79575D FOREIGN KEY (id_cli_id) REFERENCES client (id)');
        $this->addSql('ALTER TABLE commande ADD CONSTRAINT FK_6EEAA67DC8BA16A FOREIGN KEY (id_sta_id) REFERENCES statut (id)');
        $this->addSql('CREATE INDEX IDX_6EEAA67DE5805157 ON commande (id_pro_id)');
        $this->addSql('CREATE INDEX IDX_6EEAA67D9A79575D ON commande (id_cli_id)');
        $this->addSql('CREATE INDEX IDX_6EEAA67DC8BA16A ON commande (id_sta_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE commande DROP FOREIGN KEY FK_6EEAA67DE5805157');
        $this->addSql('ALTER TABLE commande DROP FOREIGN KEY FK_6EEAA67D9A79575D');
        $this->addSql('ALTER TABLE commande DROP FOREIGN KEY FK_6EEAA67DC8BA16A');
        $this->addSql('DROP INDEX IDX_6EEAA67DE5805157 ON commande');
        $this->addSql('DROP INDEX IDX_6EEAA67D9A79575D ON commande');
        $this->addSql('DROP INDEX IDX_6EEAA67DC8BA16A ON commande');
        $this->addSql('ALTER TABLE commande DROP id_pro_id, DROP id_cli_id, DROP id_sta_id');
    }
}
