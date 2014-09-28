
<h2>Edit Information <%= resource_name.to_s.humanize %></h2>

<%= simple_form_for(resource, :as => resource_name, :url => registration_path(resource_name), :html => { :method => :put, :class => 'form-vertical' }) do |f| %>
  <%= f.error_notification %>
  <%= display_base_errors resource %>
  <%= f.input :first, :autofocus => true %>
  <%= f.input :email, :required => true %>
  <%= f.input :password, :autocomplete => "off", :hint => "leave it blank if you don't want to change it", :required => false %>
  <%= f.input :password_confirmation, :required => false %>
  <%= f.input :current_password, :hint => "we need your current password to confirm your changes", :required => true %>
  <%= f.button :submit, 'Update', :class => 'btn-primary' %>
<% end %>

<h3>Cancel my SR Account</h3>
<p>Are you sure you would like to delete your account information <%= link_to "Cancel my account", registration_path(resource_name), :data => { :confirm => "Are you sure?" }, :method => :delete %>.</p>
