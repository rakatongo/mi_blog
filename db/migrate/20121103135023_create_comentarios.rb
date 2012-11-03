class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.string :email
      t.text :cont

      t.timestamps
    end
  end
end
