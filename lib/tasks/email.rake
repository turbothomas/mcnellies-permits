task :email => :environment do
 	@site_permits = SitePermit.less_than_thirty.all
 	unless @site_permits.blank?	
  PermitMailer.permit_notification(@site_permits).deliver
	end
end