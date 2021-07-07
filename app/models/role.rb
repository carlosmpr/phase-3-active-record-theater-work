class Role < ActiveRecord::Base
has_many :auditions


def actors
    actors = self.auditions
    actors.collect{|n| n.actor}
end

def locations
    actors = self.auditions
    actors.collect{|n| n.location}
end


def lead
    actors = self.auditions
    findlead = actors.where(:hired => true).first
    findlead ? findlead : "no actor has been hired for this role"
end


def understudy
    actors = self.auditions
    findlead = actors.where(:hired => true)
    findlead[1] ? findlead[1] : "no actor has been hired for this role"
end

end
