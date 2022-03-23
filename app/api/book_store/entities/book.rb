module BookStore
 module Entities
  class Book < Grape::Entity
   expose :isbn
   expose :title
   expose :stock
  end
 end
end
