# notebook = NoteBook.new
# notebook.add(title: 'title', message: 'some message')
# notebook.all => show me all the notes
# notebook.select(1) => show me note number 1
# @notes[0] => {title: 'title', message: 'message'}
# {reminder: 'buy milk', another_reminder: 'buy cat food'}
# notes[:reminder] => 'buy milk'
# notes[:another_reminder] => 'buy cat food'
# notebook.remove(1) => remove note number 1

# NoteBook class
# add, all, select, remove (methods)
# notes (attribute / array of all notes)

require 'note_book'

describe NoteBook do
  describe '#add' do
    it 'adds a new note to the end of the notes array' do
      subject.add(title: 'reminder', message: 'buy milk')
      expect(subject.all.last).to eq({title: 'reminder', message: 'buy milk'})
    end
  end

  describe '#all' do
    it 'returns all of the notes' do
      subject.add(title: 'reminder', message: 'buy milk')
      subject.add(title: 'reminder', message: 'buy cat food')
      expect(subject.all).to eq [
        {title: 'reminder', message: 'buy milk'},
        {title: 'reminder', message: 'buy cat food'}
      ]
    end
  end

  describe '#select' do
    it 'selects a note at a specific position in the notes array' do
      subject.add(title: 'reminder', message: 'buy milk')
      subject.add(title: 'reminder', message: 'buy cat food')
      expect(subject.select(1)).to eq(
        {title: 'reminder', message: 'buy milk'}
      )
    end
  end

end
