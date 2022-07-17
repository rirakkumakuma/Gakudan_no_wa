class ChangeColumnDefaultToMembersName < ActiveRecord::Migration[5.2]
  def change
    change_column_default :members, :last_name, from: nil, to: "sample"
    change_column_default :members, :first_name, from: nil, to: "sample"
    change_column_default :members, :last_name_kana, from: nil, to: "サンプル"
    change_column_default :members, :first_name_kana, from: nil, to: "サンプル"
  end
end
