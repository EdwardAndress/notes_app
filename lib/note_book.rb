class NoteBook
  def initialize
    @notes = []
  end

  def add(note_hash)
    @notes << note_hash
  end

  def all
    @notes
  end

  def select(note_number)
    note_index = note_number - 1
    @notes[note_index]
  end
end
