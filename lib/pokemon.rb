class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: nil,name:,type:,db:)
    @id = id 
    @name = name 
    @type = type
    @db = db 
  end
  
  def self.save#(name,type,db) 
    
    sql = "INSERT INTO pokemons (name, type, db) 
      VALUES (?, ?, ?)"
      
    DB[:conn].execute(sql, self.name, self.type, self.db)
     @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemons")[0][0]
  end 
  
  def self.find
  end 
  
  
end
