module App
  module Hello
    def self.included(base)
      base.class_eval do
        desc 'hello [NAME]', 'say hello to NAME'
        long_desc <<~LONGDESC
          `app hello` will print out a warm welcoming message to a person of your choosing.

          > $ app hello "John Doe"
          \x5>
          \x5> Hello John Doe

          You can optionally specify a who sends the message with --from flag, which will print out whom the message is from.

          > $ app hello "John Doe" --from "Jane Doe"
          \x5>
          \x5> Hello John Doe
          \x5> From Jane Doe

          If you think it's not warm enough, you can make it stand out by using the --yell flag.

          > $ app hello "John Doe" --from "Jane Doe" --yell
          \x5>
          \x5> HELLO JOHN DOE!!!
          \x5> FROM JANE DOE!!!

          You can also specify the language of the greeting with --lang flag.

          > $ app hello "John Doe" --from "Jane Doe" --lang "ID"
          \x5>
          \x5> Halo John Doe
          \x5> Dari Jane Doe
        LONGDESC

        option :from, aliases: ['f'], desc: 'Specify the sender of the greeting', banner: 'NAME'
        option :yell, aliases: ['y'], type: :boolean, desc: 'All caps, with three exclamation marks (not two!!)'

        def hello(name)
          lang = options[:lang]
          from = options[:from]
          yell = options[:yell]

          outputs = []
          outputs << (lang == 'ID' ? "Halo #{name}" : "Hello #{name}")
          outputs << (lang == 'ID' ? "Dari #{from}" : "From #{from}") if from
          outputs = outputs.map { |i| i.upcase + '!!!' } if yell
          puts outputs.join("\n")
        end
      end
    end
  end
end
