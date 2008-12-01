# ToMidi
module To_Midi
    
 def to_midi(file, note_length='half')
     midi_max = 128.0
     midi_min = 0.0

      low, high = min, max
      song = MIDI::Sequence.new
      # Create a new track to hold the melody, running at 120 beats per minute.
      song.tracks << (melody = MIDI::Track.new(song))
      melody.events <<  
      MIDI::Tempo.new(MIDI::Tempo.bpm_to_mpq(70))
      # Tell channel zero to use the "piano" sound.
      melody.events << MIDI::ProgramChange.new(0,0)
      # Create a series of note events that play on channel zero.
      each do |number|
        midi_note = (midi_min + ((number-midi_min) * (midi_max-low)/high)).to_i
        melody.events << MIDI::NoteOnEvent.new(0, midi_note, 127, 0)
        melody.events << MIDI::NoteOffEvent.new(0, midi_note, 127,
        song.note_to_delta(note_length))
        end
        open(file, 'w') { |f| song.write(f) }
 end
    def convert
        body.each_byte {|c| text_array << c } 
        text_array.to_midi("#{track_title}.mid")
    end 
end

