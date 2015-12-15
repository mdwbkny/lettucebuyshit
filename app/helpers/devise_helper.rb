module DeviseHelper
	def devise_error_messages!
		return '' if resource.errors.empty?

		messages = resource.errors.messages.map { |attr,msg| content_tag(:li, msg.join(', ')) }.join
		sentence = I18n.t('errors.messages.not_saved', count: resource.errors.count, resources: resource.class.model_name.human.downcase)

		html = <<-HTML
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<h4>#{sentence}</h4>
			#{messages}
		</div>
		HTML

		html.html_safe
	end
end