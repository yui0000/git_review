module Common
    extend ActiveSupport::Concern

    def templateList
        # ヘッダーのテンプレートリストを取得する
        @templates = Template.where(user_id: current_user.id).order('created_at asc')
    end

end