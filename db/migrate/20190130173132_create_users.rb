class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #Création de nos colonnes
      t.string :name
      #Permet de lier à la table course et lui dire qu'elle lui apartient
      t.belongs_to :course, index:true
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
