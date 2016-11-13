class AddInvestmentParametersToGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :group, :string
    add_column :groups, :recovery_time, :integer, :default => 0
    add_column :groups, :accepted, :boolean, :default => false
    add_column :groups, :total_investment, :integer, :default => 0
    add_column :groups, :minimal_investment, :integer, :default => 0

  end
end
