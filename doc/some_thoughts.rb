class Media
  def <=>(other)
    exhibits = exhibit_order <=> other.exhibit_order
    return exhibits unless exhibits == 0

    depth = exhibit_depth <=> other.exhibit_depth
    return depth unless depth == 0

    if archival?
      return 1 unless other.archival?
      depth = exhibit_depth <=> other.exhibit_depth
      return depth unless depth == 0
    elsif other.archival?
      return -1
    end
      
    created_at <=> other.created_at  
  end
end
