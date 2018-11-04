friend(zuthy).
friend(smrity).
friend(mahzabin).
friend(efa).
friend(sadia).
friend(nahida).
friend(bentee).
friend(era).
friend(jannat).
friend(nisha).
friend(tanha).
friend(nitu).
friend(taiaba).
friend(santa).
friend(faria).
blocked(airtelbuzz).
blocked(rokomari).
blocked(bl_furti).
blocked(gp).
blocked(teletalk).
contains(link).
contains(image).
contains(gif).
contains(legitimate_text).
contains(balance_offer).
contains(hazar_sms).
contains(sms_offer).
contains(last_day).
catagory(promotion).
catagory(advertisement).
catagory(horoscope).
catagory(ching_oracle).
catagory(promotion).
catagory(biorhythm).
catagory(advertisement).
catagory(promotion).
catagory(advertisement).
suspiciousword(winning_lottery).
suspiciousword(million_dollar).
suspiciousword(free_dvd).
suspiciousword(free_access).
suspiciousword(viagra).
suspiciousword(got_promotion).
suspiciousword(lottery).
suspiciousword(got_a_new_car).
suspiciousword(free_flat).
suspiciousword(lotterywin).
suspiciousword(free_vacation_offer).

case(1,Name,Media,Message):- friend(Name) ->
                   (
                                 write("You have a message."),nl,
                                 write(Name),write(" Says "),nl,
                                 write(Message)
                    );
                   contains(Media)->
                   (
                       write("Its a spam.")
                   );
                   (
                       write("This is a message from "),
                       write(Name),write(" Says "),
                       write(Message)
                   ).

case(2,Word,Type,Name):- suspiciousword(Word) -> write("Its a Spam.");
                         case(3,Name,Type).

case(3,Name,Type):-blocked(Name) ->write("Its a Spam.");
                         case(4,Type).

case(4,Type):-catagory(Type) -> write("Its a Spam.").

incoming(Message):- write("Scaning Message for information."),nl,
                    write("Sender."),read(Name),nl,
                    write("Contains."),read(Media),nl,
                    write("Message Type."),read(Type),nl,
                    write("Most Used Word."),read(Word),nl,
                    case(2,Word,Type,Name)-> nl;
                    case(1,Name,Media,Message).

















