# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :email

    @@all = []

    def initialize(address)
        @email = address
        @@all << address
    end

    def parse
        @email.split.map {|split_array| split_array.split(",")}.flatten.uniq
    end
end