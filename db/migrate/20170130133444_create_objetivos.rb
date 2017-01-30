class CreateObjetivos < ActiveRecord::Migration[5.0]
  def change
    create_table :objetivos do |t|
      t.references :mision, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.string :habilitado
      t.string :visible
      t.string :urlvideoinstructivo
      t.string :urlpdfinstructivo
      t.string :urlhtmlinstructivo
      t.string :descripcioninstructivo
      t.string :urlvideoevaluativo
      t.string :urlpdfevaluativo
      t.string :urlhtmlevaluativo
      t.string :descripcionevaluativo

      t.timestamps
    end
  end
end
