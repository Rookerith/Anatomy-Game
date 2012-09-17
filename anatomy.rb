
  class AnatomyLocations
    attr_reader :score
    def initialize
      print "Which Game do you want to play? \n 1) Anatomy Locations \n 2) abdominopelvic areas \n Choose:"
      game_choice = gets.chomp.to_i
      until (1..2).include?game_choice
        print "Which Game do you want to play? \n 1) Anatomy Locations \n 2) abdominopelvic areas \n Choose:"
        game_choice = gets.chomp.to_i
      end
      
      @h = Hash.new {|hash, key| hash[key] = "Term not found: #{key}"}
      if game_choice == 1
        @h["axial"]         = "Relating to head, neck, and trunk, the axis of the body."
        @h["appendicular"]  = "Relating to the limbs and their attachments to the axis."
        @h["abdominal"]     = "Pertaining to the anterior body trunk region inferior to the ribs"
        @h["acromial"]      = "Pertaining to the point of the shoulder."
        @h["antebrachial"]  = "Pertaining to the forearm."
        @h["antecubital"]   = "Pertaining to the anterior surface of the elbow."
        @h["axillary"]      = "Pertaining to the armpit."
        @h["brachial"]      = "Pertaining to the arm."
        @h["buccal"]        = "Pertaining to the cheek."
        @h["carpal"]        = "Pertaining to the wrist."
        @h["cephalic"]      = "Pertaining to the head."
        @h["cervical"]      = "Pertaining to the neck region."
        @h["coxal"]         = "Pertaining to the hip."
        @h["crural"]         = "Pertaining to the leg."
        @h["digital"]         = "Pertaining to the fingers or toes."
        @h["femoral"]         = "Pertaining to the thigh."
        @h["fibular"]         = "Pertaining to the side of the leg."
        @h["frontal"]         = "Pertaining to the forehead."
        @h["hallux"]         = "Pertaining to great toe."
        @h["inguinal"]         = "Pertaining to the groin."
        @h["mammary"]         = "Pertaining to the breast."
        @h["manus"]         = "Pertaining to the hand."
        @h["mental"]         = "Pertaining to the chin."
        @h["nasal"]         = "Pertaining to the nose."
        @h["oral"]         = "Pertaining to the mouth."
        @h["orbital"]         = "Pertaining to the bony eye socket (orbit)."
        @h["palmer"]         = "Pertaining to the palm of the hand."
        @h["patellar"]         = "Pertaining to the anterior knee (kneecap) region."
        @h["pedal"]         = "Pertaining to the foot."
        @h["pelvic"]         = "Pertaining to the pelvis region."
        @h["pollex"]         = "Pertaining to the thumb."
        @h["pubic"]         = "Pertaining to genital region."
        @h["sternal"]         = "Pertaining to the region of the breastbone."
        @h["tarsal"]         = "Pertaining to the ankle."
        @h["thoracic"]         = "Pertaining to the chest."
        @h["umbilical"]         = "Pertaining to the navel."
        @h["calcaneal"]         = "Pertaining to the heel of the foot."
        @h["dorsum"]         = "Pertaining to the back."
        @h["gluteal"]         = "Pertaining to the buttocks or rump."
        @h["lumbar"]         = "Pertaining to the area of the back between the ribs and hips; the loin."
        @h["occipital"]         = "Pertaining to the posterior aspect of the head or base of the skull."
        @h["olecranal"]         = "Pertaining to the posterior aspect of the elbow."
        @h["otic"]         = "Pertaining to the ear."
        @h["perineal"]         = "Pertaining to the region between the anus and external genitalia."
        @h["plantar"]         = "Pertaining to the sole of the foot."
        @h["popliteal"]         = "Pertaining to the back of the knee."
        @h["sacral"]         = "Pertaining to the region between the hips (overlying the sacrum)."
        @h["scapular"]         = "Pertaining scapula or shoulder blade area."
        @h["sural"]         = "Pertaining to the calf or posterior surface of the leg."
        @h["vertebral"]         = "Pertaining to the area of the spinal column."
      elsif game_choice == 2
        @h["1"]   = "Right hypochondriac region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["2"]   = "Epigasteric region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["3"]   = "Left hypochondriac: region \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["4"]   = "Right lumbar region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["5"]   = "Umbilical region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["6"]   = "Left lumbar region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["7"]   = "Right iliac (inguinal region): \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["8"]   = "Hypogastric (pubic) region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
        @h["9"]   = "Left iliac inguinal region: \n 1|2|3 \n ----- \n 4|5|6 \n ----- \n 7|8|9 \n"
      end
      @h = sort_hash(@h)
      @score = 0
    end
    
    def sort_hash(hash)
      hash.sort_by{rand}
    end
    
    def total_questions
      @h.length
    end
  
    def question_pull
      @h.each {|term, question| 
        print "#{question}\n"
        print "Your Answer?:"
        user_guess = gets.downcase.chomp
        if term.downcase == user_guess 
          @score += 1
          print "Correct! Your score is now " + @score.to_s + "/" + total_questions.to_s + "\n"
        else
          print "Incorrect.. The answer was: " + term.downcase + ", you supplied: " + user_guess + "\n"
        end
      }
      print "The game is over! Your score is: " + @score.to_s + " out of " + total_questions.to_s
    end
  end


game = AnatomyLocations.new
total_questions = game.total_questions
print "Welcome to the Anatomy Game! Below will be a question. Give the correct term for the question. There are " + total_questions.to_s + " questions to solve!\n"
game.question_pull






