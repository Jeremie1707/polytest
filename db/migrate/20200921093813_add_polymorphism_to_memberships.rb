class AddPolymorphismToMemberships < ActiveRecord::Migration[5.2]
  def change
    add_reference :memberships, :patient, foreign_key: true
    add_reference :memberships, :memberable, polymorphic: true, index:true
  end
end
