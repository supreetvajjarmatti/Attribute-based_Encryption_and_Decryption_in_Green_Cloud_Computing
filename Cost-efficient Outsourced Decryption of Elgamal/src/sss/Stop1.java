package sss;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;



public class Stop1 {

	
	public static Set stopWords(List al) throws IOException {

		LinkedHashMap lhm = new LinkedHashMap();

		ArrayList<String> a = new ArrayList<String>();
		ArrayList<String> aa = new ArrayList<String>();
		Set<String> hash_Set = new HashSet<String>(); 
		String s = null;
		int count = 0;
		String name = null;
		String[] split = null;
		String split1 = ",";
		String line = "";
		String[] stopWords = { "a","about","above","across","after","again","against","all","almost","alone","along","already","also","although","always","among","an","and","another","any","anybody","anyone","anything","anywhere","are","area","areas","around","as","ask","asked","asking","asks","at","away","b","back","backed","backing","backs","be","became","because","become","becomes","been","before","began","behind","being","beings","best","better","between","big","both","but","by","c","came","can","cannot","case","cases","certain","certainly","clear","clearly","come","could","d","did","differ","different","differently","do","does","done","down","down","downed","downing","downs","during","e","each","early","either","end","ended","ending","ends","enough","even","evenly","ever","every","everybody","everyone","everything","everywhere","f","face","faces","fact","facts","far","felt","few","find","finds","first","for","four","from","full","fully","further","furthered","furthering","furthers","g","gave","general","generally","get","gets","give","given","gives","go","going","good","goods","got","great","greater","greatest","group","grouped","grouping","groups","h","had","has","have","having","he","her","here","herself","high","high","high","higher","highest","him","himself","his","how","however","i","if","important","in","interest","interested","interesting","interests","into","is","it","its","itself","j","just","k","keep","keeps","kind","knew","know","known","knows","l","large","largely","last","later","latest","least","less","let","lets","like","likely","long","longer","longest","m","made","make","making","man","many","may","me","member","members","men","might","more","most","mostly","mr","mrs","much","must","my","myself","n","necessary","need","needed","needing","needs","never","new","new","newer","newest","next","no","nobody","non","noone","not","nothing","now","nowhere","number","numbers","o","of","off","often","old","older","oldest","on","once","one","only","open","opened","opening","opens","or","order","ordered","ordering","orders","other","others","our","out","over","p","part","parted","parting","parts","per","perhaps","place","places","point","pointed","pointing","points","possible","present","presented","presenting","presents","problem","problems","put","puts","q","quite","r","rather","really","right","right","room","rooms","s","said","same","saw","say","says","second","seconds","see","seem","seemed","seeming","seems","sees","several","shall","she","should","show","showed","showing","shows","side","sides","since","small","smaller","smallest","so","some","somebody","someone","something","somewhere","state","states","still","still","such","sure","t","take","taken","than","that","the","their","them","then","there","therefore","these","they","thing","things","think","thinks","this","those","though","thought","thoughts","three","through","thus","to","today","together","too","took","toward","turn","turned","turning","turns","two","u","under","until","up","upon","us","use","used","uses","v","very","w","want","wanted","wanting","wants","was","way","ways","we","well","wells","went","were","what","when","where","whether","which","while","who","whole","whose","why","will","with","within","without","work","worked","working","works","would","x","y","year","years","yet","you","young","younger","youngest","your","yours","z","i've", "us", "i", "I", "the", "without", "see",
				"unless", "due", "also", "must", "might", "like", "]", "[",
				"}", "{", "<", ">", "?", "\"", "\\", "/", ")", "(", "will",
				"may", "can", "much", "every", "the", "in", "other", "this",
				"the", "many", "any", "an", "or", "for", "in", "an", "an ",
				"is", "a", "about", "above", "after", "again", "against",
				"all", "am", "an", "and", "any", "are", "aren't", "as", "at",
				"be", "because", "been", "before", "being", "below", "between",
				"both", "but", "by", "can't", "cannot", "could", "couldn't",
				"did", "didn't", "do", "does", "doesn't", "doing", "don't",
				"down", "during", "each", "few", "for", "from", "further",
				"had", "hadn't", "has", "hasn't", "have", "haven't", "having",
				"he", "he'd", "he'll", "he's", "her", "here", "here's", "hers",
				"herself", "him", "himself", "his", "how", "how's", "i", "i",
				"i'd", "i'll", "i'm", "i've", "if", "in", "into", "is",
				"isn't", "it", "it's", "its", "itself", "let's", "me", "more",
				"most", "mustn't", "my", "myself", "no", "nor", "not", "of",
				"off", "on", "once", "only", "ought", "our", "ours",
				"ourselves", "out", "over", "own", "same", "shan't", "she",
				"she'd", "she'll", "she's", "should", "shouldn't", "so",
				"some", "such", "than", "that", "that's", "their", "theirs",
				"them", "themselves", "then", "there", "there's", "these",
				"they", "they'd", "they'll", "they're", "they've", "this",
				"those", "through", "to", "too", "under", "until", "up",
				"very", "was", "Was", "wasn't", "we", "we'd", "we'll", "we're",
				"we've", "were", "weren't", "what", "what's", "when", "when's",
				"where", "where's", "which", "while", "who", "who's", "whom",
				"why", "why's", "with", "won't", "would", "wouldn't", "you",
				"you'd", "you'll", "you're", "you've", "your", "yours",
				"yourself", "yourselves", "Without", "See", "Unless", "Due",
				"Also", "Must", "Might", "Like", "Will", "May", "Can", "Much",
				"Every", "The", "In", "Other", "This", "The", "Many", "Any",
				"An", "Or", "For", "In", "An", "An ", "Is", "A", "About",
				"Above", "After", "Again", "Against", "All", "Am", "An", "And",
				"Any", "Are", "Aren't", "As", "At", "Be", "Because", "Been",
				"Before", "Being", "Below", "Between", "Both", "But", "By",
				"Can't", "Cannot", "Could", "Couldn't", "Did", "Didn't", "Do",
				"Does", "Doesn't", "Doing", "Don't", "Down", "During", "Each",
				"Few", "For", "From", "Further", "Had", "Hadn't", "Has",
				"Hasn't", "Have", "Haven't", "Having", "He", "He'd", "He'll",
				"He's", "Her", "Here", "Here's", "Hers", "Herself", "Him",
				"Himself", "His", "How", "How's", "I ", " I", "I'd", "I'll",
				"I'm", "I've", "If", "In", "Into", "Is", "Isn't", "It", "It's",
				"Its", "Itself", "Let's", "Me", "More", "Most", "Mustn't",
				"My", "Myself", "No", "Nor", "Not", "Of", "Off", "On", "Once",
				"Only", "Ought", "Our", "Ours", "Ourselves", "Out", "Over",
				"Own", "Same", "Shan't", "She", "She'd", "She'll", "She's",
				"Should", "Shouldn't", "so", "some", "Such", "Than", "That",
				"That's", "Their", "Theirs", "Them", "Themselves", "Then",
				"There", "There's", "These", "They", "They'd", "They'll",
				"They're", "They've", "This", "Those", "Through", "To", "Too",
				"Under", "Until", "Up", "Very", "Was", "Wasn't", "We", "We'd",
				"We'll", "We're", "We've", "Were", "Weren't", "What", "What's",
				"When", "When's", "Where", "Where's", "Which", "While", "Who",
				"Who's", "Whom", "Why", "Why's", "With", "Won't", "Would",
				"Wouldn't", "You", "you", "You'd", "You'll", "You're",
				"You've", "Your", "Yours", "Yourself", "Yourselves", "a",
				"about", "above", "after", "again", "against", "all", "am",
				"an", "and", "any", "are", "as", "at", "be", "because", "been",
				"before", "being", "below", "between", "both", "but", "by",
				"could", "did", "do", "does", "doing", "down", "during",
				"each", "few", "for", "from", "further", "had", "has", "have",
				"having", "he", "he’d", "he’ll", "he’s", "her", "here",
				"here’s", "hers", "herself", "him", "himself", "his", "how",
				"how’s", "I", "I’d", "I’ll", "I’m", "I’ve", "if", "in", "into",
				"is", "it", "it’s", "its", "itself", "let’s", "me", "more",
				"most", "mymyself", "nor", "of", "on", "once", "only", "or",
				"other", "ought", "our", "ours", "ourselves", "out", "over",
				"own", "same", "she", "she’d", "she’ll", "she’s", "should",
				"so", "some", "such", "than", "that", "that’s", "the", "their",
				"theirs", "them", "themselves", "then", "there", "there’s",
				"these", "they", "they’d", "they’ll", "they’re", "they’ve",
				"this", "those", "through", "to", "too", "under", "until",
				"up", "very", "was", "we", "we’d", "we’ll", "we’re", "we’ve",
				"were", "what", "what’s", "when", "when’s", "where", "where’s",
				"which", "while", "who", "who’s", "whom", "why", "why’s",
				"with", "would", "you", "you’d", "you’ll", "you’re", "you’ve",
				"your", "yours", "yourself", "yourselves", "1st", "2nd", "3rd",
				"4th", "5th", "6th", "7th", "8th", "9th", "10th", "11th",
				"12th", "13th", "14th", "15th", "16th", "17th", "18th", "19th",
				"20th", "21st", "22nd", "23rd", "24th", "25th", "26th", "27th",
				"28th", "29th", "30th", "31st", "32nd", "33rd", "34th", "35th",
				"36th", "37th", "38th", "39th", "40th", "41st", "42nd", "43rd",
				"44th", "45th", "46th", "47th", "48th", "49th", "50th", "51st",
				"52nd", "53rd", "54th", "55th", "56th", "57th", "58th", "59th",
				"60th", "61st", "62nd", "63rd", "64th", "65th", "66th", "67th",
				"68th", "69th", "70th", "71st", "72nd", "73rd", "74th", "75th",
				"76th", "77th", "78th", "79th", "80th", "81st", "82nd", "83rd",
				"84th", "85th", "86th", "87th", "88th", "89th", "90th", "91st",
				"92nd", "93rd", "94th", "95th", "96th", "97th", "98th", "99th",
				"100th", "th", "rd", "first", "second", "third", "fourth",
				"fifth", "sixth", "seventh", "eighth", "p", "ninth",
				"eleventh", "twelth", "thirteenth", "tenth", "volume", "time",
				"trends", "recent", "queue", "neural", "nerual", "25rd",
				"annual", "gi=g=1", "21th", "00", "audio", "based", "client",
				"cross", "data", "editor", "figure", "group", "joint", "logic",
				"method", "new", "number", "online", "pages", "person",
				"press", "ratio", "search", "speech", "text", "thoery",
				"twenty", "video", "vision", "02", "05", "20002", "adopt",
				"03", "3th", "graph", "clark", "also", "appear", "brady",
				"croft", "daswam", "design", "goal", "goals", "high", "level",
				"mapped", "memory", "model", "mozer", "note", "notes", "part",
				"ottawa", "record", "scheme", "simply", "spring", "syntax",
				"system", "term", "theory", "thus", "tiny", "typed", "us",
				"uses", "use", "mit", "l", "al", "ca", "e", "enonc", "fth",
				"kernal", "large", "july", "micro", "papers", "zurich",
				"usenix", "mc", "mit", "monoir", "pe", "pwam", "rap", "st",
				"wam", "aided", "agent", "sigmod", "sigart", "sigir", "ascona",
				"base", "bases", "cial", "clarke", "clir", "digest", "disc",
				"et", "exact", "fault", "inter", "kernel", "naive", "object",
				"review", "sendai", "thirty", "tucson", "Mika", "used",
				"photo", "tumblr", "feel", "feeling", "opposite", "come",
				"way", "make", "needed", "little", "piano", "week", "going",
				"walk", "moment", "moment.", "weekend", "mother", "jerk",
				"stole", "accomplice", "friends", "plan", "work", "one",
				"arguments", "friend", "technologies", "something", "Get",
				"meaning", "refute", "Authority", "attachment", "feels",
				"someone", "else", "bike", "rides", "school", "today", "Never",
				"Ive", "lot", "got", "higher", "wrong", "know", "done", "back",
				"looking", "word", "done", "again!", "day", "left","behavior" };

		for (int a1 = 0; a1 < stopWords.length; a1++) {
			a.add(stopWords[a1].toLowerCase());
		}

		// System.out.println("rrrrrrrrrrrrr" +r1[0]);

		ArrayList array = new ArrayList();
		for (int j = 0; j < al.size(); j++) {

			//System.out.println(al.get(j));
			String[] r1 = al.get(j).toString().split(" ");

			for (int i = 0; i < r1.length; i++) {

				if (a.contains(r1[i].toLowerCase())) {

				} else {

					array.add(r1[i]);
					hash_Set.add(r1[i]);

					// System.out.printf(r1[j]+" ");
				}
				
			}

			// System.out.println(s);

		}
		//System.out.println(array + "  words");
		//System.out.println(hash_Set + "  words");
		return hash_Set;
		

	}
}

/* } */
