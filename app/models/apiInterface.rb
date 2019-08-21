class ApiInterface

    def self.getImages
        API = "https://www.googleapis.com/customsearch/v1"
        q = "inspirational quotes"
        cx = "003938950772588992970:14xlctpwx44"
        search_type = "image"
        key = "AIzaSyDcGY923SJsAZYiFKySjzNMRmwrnHtICZo"
        ​
        response = HTTP.get(API, params: {
                                q: q,
                                cx: cx,
                                searchType: search_type,
                                key: key,
                                })
        ​
        parsed_resp = JSON.parse(response.to_s)
    end 
end 