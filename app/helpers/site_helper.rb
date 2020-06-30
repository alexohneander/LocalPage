module SiteHelper
    def get_website_from_domain

        website = Website.where(domain: request.domain).first

        if website == nil
            website = Website.where(subdomain: request.subdomains.first)
        end

        if website == nil
            website = get_default_website
        end

        if website != nil
            return website
        end
    end

    def get_default_website
        website = Website.where(domain: "localhost").first
        return website
    end

    def get_page
        website = get_website_from_domain
        page = Page.where(website_id: website.id, url: request.path).first

        return page
    end
end
