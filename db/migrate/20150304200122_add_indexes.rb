# frozen_string_literal: true

class AddIndexes < SolidusSupport::Migration[4.2]
  def self.up
    unless index_exists?(:spree_promotion_rules_stores, :store_id)
      add_index :spree_promotion_rules_stores, :store_id
    end

    unless index_exists?(:spree_promotion_rules_stores, :promotion_rule_id)
      add_index :spree_promotion_rules_stores, :promotion_rule_id
    end
  end

  def self.down
    remove_index :spree_promotion_rules_stores, :store_id
    remove_index :spree_promotion_rules_stores, :promotion_rule_id
  end
end
