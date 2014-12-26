// Copyright (C) 2014 Janne Edelman.
// Contact: Janne Edelman <janne.edelman@gmail.com>

import QtQuick.LocalStorage 2.0
import QtQuick 2.0
import Sailfish.Silica 1.0
import "../custom_emoji"
import ".."

KeyboardLayout {
    id: emojiKeyboard
    property int emojiLanguageSelectKeyWidth: (portraitMode ? 66 : 100 ) * geometry.scaleRatio
    property int emojiSetPageKeyWidth: (portraitMode ? 72 : 72 ) * geometry.scaleRatio
    property int emojiSetSelectKeyWidth: (portraitMode ? 44 : 88) * geometry.scaleRatio

    property variant emptySet: ["","","","","","","","","","",
				"","","","","","","","","","",
				"","","","","","","","","",""]
    property variant emojiChar:
    [
	[ emptySet ],
        [
            ["😄","😃","😀","😊","☺","😉","😍","😘","😚","😗",
             "😙","😜","😝","😛","😳","😁","😔","😌","😒","😞",
             "😣","😢","😂","😭","😪","😥","😰","😅","😓","😩"],
            ["😫","😨","😱","😠","😡","😤","😖","😆","😋","😷",
             "😎","😴","😵","😲","😟","😦","😧","😈","👿","😮",
             "😬","😐","😕","😯","😶","😇","😏","😑","👲","👳"],
            ["👮","👷","💂","👶","👦","👧","👨","👩","👴","👵",
             "👱","👼","👸","😺","😸","😻","😽","😼","🙀","😿",
             "😹","😾","👹","👺","🙈","🙉","🙊","💀","👽","💩"],
            ["🔥","✨","🌟","💫","💥","💢","💦","💧","💤","💨",
             "👂","👀","👃","👅","👄","👍","👎","👌","👊","✊",
             "✌","👋","✋","👐","👆","👇","👉","👈","🙌","🙏"],
            ["☝","👏","💪","🚶","🏃","💃","👫","👪","👬","👭",
             "💏","💑","👯","🙆","🙅","💁","🙋","💆","💇","💅",
             "👰","🙎","🙍","🙇","🎩","👑","👒","👟","👞","👡"],
            ["👠","👢","👕","👔","👚","👗","🎽","👖","👘","👙",
             "💼","👜","👝","👛","👓","🎀","🌂","💄","💛","💙",
             "💜","💚","❤","💔","💗","💓","💕","💖","💞","💘"],
            ["💌","💋","💍","💎","👤","👥","💬","👣","💭","",
             "","","","","","","","","","",
             "","","","","","","","","",""]
        ],
        [
            ["🐶","🐺","🐱","🐭","🐹","🐰","🐸","🐯","🐨","🐻",
             "🐷","🐽","🐮","🐗","🐵","🐒","🐴","🐑","🐘","🐼",
             "🐧","🐦","🐤","🐥","🐣","🐔","🐍","🐢","🐛","🐝"],
            ["🐜","🐞","🐌","🐙","🐚","🐠","🐟","🐬","🐳","🐋",
             "🐄","🐏","🐀","🐃","🐅","🐇","🐉","🐎","🐐","🐓",
             "🐕","🐖","🐁","🐂","🐲","🐡","🐊","🐫","🐪","🐆"],
            ["🐈","🐩","🐾","💐","🌸","🌷","🍀","🌹","🌻","🌺",
             "🍁","🍃","🍂","🌿","🌾","🍄","🌵","🌴","🌲","🌳",
             "🌰","🌱","🌼","🌐","🌞","🌝","🌚","🌑","🌒","🌓"],
            ["🌔","🌕","🌖","🌗","🌘","🌜","🌛","🌙","🌍","🌎",
             "🌏","🌋","🌌","🌠","⭐","☀","⛅","☁","⚡","☔",
             "❄","⛄","🌀","🌁","🌈","🌊","","","",""]
        ],
        [
            ["🎍","💝","🎎","🎒","🎓","🎏","🎆","🎇","🎐","🎑",
             "🎃","👻","🎅","🎄","🎁","🎋","🎉","🎊","🎈","🎌",
             "🔮","🎥","📷","📹","📼","💿","📀","💽","💾","💻"],
            ["📱","☎","📞","📟","📠","📡","📺","📻","🔊","🔉",
             "🔈","🔇","🔔","🔕","📢","📣","⏳","⌛","⏰","⌚",
             "🔓","🔒","🔏","🔐","🔑","🔎","💡","🔦","🔆","🔅"],
            ["🔌","🔋","🔍","🛁","🛀","🚿","🚽","🔧","🔩","🔨",
             "🚪","🚬","💣","🔫","🔪","💊","💉","💰","💴","💵",
             "💷","💶","💳","💸","📲","📧","📥","📤","✉","📩"],
            ["📨","📯","📫","📪","📬","📭","📮","📦","📝","📄",
             "📃","📑","📊","📈","📉","📜","📋","📅","📆","📇",
             "📁","📂","✂","📌","📎","✒","✏","📏","📐","📕"],
            ["📗","📘","📙","📓","📔","📒","📚","📖","🔖","📛",
             "🔬","🔭","📰","🎨","🎬","🎤","🎧","🎼","🎵","🎶",
             "🎹","🎻","🎺","🎷","🎸","👾","🎮","🃏","🎴","🀄"],
            ["🎲","🎯","🏈","🏀","⚽","⚾","🎾","🎱","🏉","🎳",
             "⛳","🚵","🚴","🏁","🏇","🏆","🎿","🏂","🏊","🏄",
             "🎣","☕","🍵","🍶","🍼","🍺","🍻","🍸","🍹","🍷"],
            ["🍴","🍕","🍔","🍟","🍗","🍖","🍝","🍛","🍤","🍱",
             "🍣","🍥","🍙","🍘","🍚","🍜","🍲","🍢","🍡","🍳",
             "🍞","🍩","🍮","🍦","🍨","🍧","🎂","🍰","🍪","🍫"],
            ["🍬","🍭","🍯","🍎","🍏","🍊","🍋","🍒","🍇","🍉",
             "🍓","🍑","🍈","🍌","🍐","🍍","🍠","🍆","🍅","🌽",
             "","","","","","","","","",""]
        ],
        [
            ["🏠","🏡","🏫","🏢","🏣","🏥","🏦","🏪","🏩","🏨",
             "💒","⛪","🏬","🏤","🌇","🌆","🏯","🏰","⛺","🏭",
             "🗼","🗾","🗻","🌄","🌅","🌃","🗽","🌉","🎠","🎡"],
            ["⛲","🎢","🚢","⛵","🚤","🚣","⚓","🚀","✈","💺",
             "🚁","🚂","🚊","🚉","🚞","🚆","🚄","🚅","🚈","🚇",
             "🚝","🚋","🚃","🚎","🚌","🚍","🚙","🚘","🚗","🚕"],
            ["🚖","🚛","🚚","🚨","🚓","🚔","🚒","🚑","🚐","🚲",
             "🚡","🚟","🚠","🚜","💈","🚏","🎫","🚦","🚥","⚠",
             "🚧","🔰","⛽","🏮","🎰","♨","🗿","🎪","🎭","📍"],
            ["🚩","","","","","","","","","",
             "","","","","","","","","","",
             "","","","","","","","","",""]
        ],
        [
            ["🔟","🔢","🔣","⬆","⬇","⬅","➡","🔠","🔡","🔤",
             "↗","↖","↘","↙","↔","↕","🔄","◀","▶","🔼",
             "🔽","↩","↪","ℹ","⏪","⏩","⏫","⏬","⤵","⤴"],
            ["🆗","🔀","🔁","🔂","🆕","🆙","🆒","🆓","🆖","📶",
             "🎦","🈁","🈯","🈳","🈵","🈴","🈲","🉐","🈹","🈺",
             "🈶","🈚","🚻","🚹","🚺","🚼","🚾","🚰","🚮","🅿"],
            ["♿","🚭","🈷","🈸","🈂","Ⓜ","🛂","🛄","🛅","🛃",
             "🉑","㊙","㊗","🆑","🆘","🆔","🚫","🔞","📵","🚯",
             "🚱","🚳","🚷","🚸","⛔","✳","❇","❎","✅","✴"],
            ["💟","🆚","📳","📴","🅰","🅱","🆎","🅾","💠","➿",
             "♻","♈","♉","♊","♋","♌","♍","♎","♏","♐",
             "♑","♒","♓","⛎","🔯","🏧","💹","💲","💱","©"],
            ["®","™","❌","‼","⁉","❗","❓","❕","❔","⭕",
             "🔝","🔚","🔙","🔛","🔜","🔃","🕛","🕧","🕐","🕜",
             "🕑","🕝","🕒","🕞","🕓","🕟","🕔","🕠","🕕","🕖"],
            ["🕗","🕘","🕙","🕚","🕡","🕢","🕣","🕤","🕥","🕦",
             "✖","➕","➖","➗","♠","♥","♣","♦","💮","💯",
             "✔","☑","🔘","🔗","➰","〰","〽","🔱","◼","◻"],
            ["◾","◽","▪","▫","🔺","🔲","🔳","⚫","⚪","🔴",
             "🔵","🔻","⬜","⬛","🔶","🔷","🔸","🔹","","",
             "","","","","","","","","",""]
        ]
    ];

    property var db: null
    property int dberror: 0

    property int emojiSet: 0
    property int emojiPage: 0
    property bool prevPage: (emojiPage > 0) ? true : false
    property bool nextPage: (emojiPage < (emojiChar[emojiSet].length-1)) ? true : false


    function openDB() {
        if(db !== null) return;

        // db = LocalStorage.openDatabaseSync(identifier, version, description, estimated_size, callback(db))
        db = LocalStorage.openDatabaseSync("keyboard-custom-emoji", "0.1", "The Emoji Keyboard", 100000);

        try {
            db.transaction(function(tx){
                tx.executeSql('CREATE TABLE IF NOT EXISTS settings(key TEXT UNIQUE, value TEXT)');
                var table  = tx.executeSql("SELECT * FROM settings");
                // Setup the settings table with default values
                if (table.rows.length == 0) {
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiSet', "0"]);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiPage0', '0']);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiPage1', '0']);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiPage2', '0']);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiPage3', '0']);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiPage4', '0']);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['emojiPage5', '0']);
                    tx.executeSql('INSERT INTO settings VALUES(?, ?)', ['Favorite', JSON.stringify(emptySet)]);
                  };
            });
        } catch (err) {
            return err;
        };
    }

    function saveSetting(key, value) {
        openDB();
        db.transaction( function(tx){
            tx.executeSql('INSERT OR REPLACE INTO settings VALUES(?, ?)', [key, value]);
        });
    }

    function getSetting(key,defvalue) {
        openDB();
        var res = "";
        db.transaction(function(tx) {
            var rs = tx.executeSql('SELECT value FROM settings WHERE key=?;', [key]);
            res = rs.rows.item(0).value;
        });
        return res ? res : defvalue;
    }

    Component.onCompleted: {
	var temp = emojiChar, s;
	emojiSet = getSetting('emojiSet',emojiSet);
	emojiPage = getSetting('emojiPage'+emojiSet,emojiPage);
	s = getSetting('Favorite');
	if(s != '') {
	    temp[0][0] = JSON.parse(s);
	    emojiSet = (temp[0][0][0] != "") ? emojiSet : ((emojiSet == 0) ? 1 : emojiSet)
	} else {
	    temp[0][0] = emptySet
	    emojiSet = 1
	}
	emojiChar = temp;
    }

    function strfy(val) {
	return JSON.stringify(val)
    }


/*
    Row {
	Text {
	    color: "red"
	    font.pixelSize: 10
	    text: "char: " + emojiChar[0][0][0]
	}
    }
*/
    Row {
	id: indicatorRow
	property int shareableWidth: width
	property int incidatorWidth: 20
	property int spacingWidth: 6
	property int paddingWidth: (shareableWidth / 2) - (emojiChar[emojiSet].length * (incidatorWidth + spacingWidth) / 2)
	
	spacing: spacingWidth
        Rectangle {
	    color: Theme.backgroundColor
	    opacity: 0
	    width: parent.paddingWidth
	    height: 3
	}
	Repeater {
	    model: emojiChar[emojiSet].length
	    Rectangle { 
		color: (emojiPage == index) ? "white" : Theme.highlightColor; 
		opacity: (emojiSet == 0) ? 0 : 0.9
		width: indicatorRow.incidatorWidth; height: 2 }
	}
    }
    KeyboardRow {
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][0] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][1] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][2] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][3] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][4] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][5] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][6] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][7] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][8] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][9] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][10] }
    }
    
    KeyboardRow {
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][11] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][12] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][13] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][14] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][15] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][16] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][17] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][18] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][19] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][20] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][21] }
    }
    
    KeyboardRow {
	FunctionKey {
	    icon.source: "image://theme/icon-m-left" + (pressed ? ("?" + Theme.highlightColor) : "")
	    opacity: prevPage ? 0.6 : 0.1
	    enabled: (prevPage ? true : false)
	    width: emojiSetPageKeyWidth
	    onClicked: {
		emojiPage = prevPage ? (emojiPage-1) : emojiPage;
		saveSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
	
	//	EmojiPageKey { pageDir: -1 }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][22] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][23] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][24] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][25] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][26] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][27] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][28] }
        EmojiSymbolKey { caption: emojiChar[emojiSet][emojiPage][29] }
	FunctionKey {
	    icon.source: "image://theme/icon-m-right" + (pressed ? ("?" + Theme.highlightColor) : "")
	    opacity: nextPage ? 0.6 : 0.1
	    enabled: (nextPage ? true : false)
	    width: emojiSetPageKeyWidth
	    onClicked: {
		emojiPage = nextPage ? (emojiPage+1) : emojiPage;
		saveSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
	
    }
    KeyboardRow {
	EmojiKbdSelectKey {}
	EmojiSetSelectKey {
	    symbol: emojiChar[5][5][1]
	    selected: (emojiSet==0) ? true : false
	    enabled: (emojiChar[0][0][0] != "") ? true : false
	    onClicked: {
		saveSetting('emojiPage'+emojiSet,emojiPage);
		emojiSet = 0
		saveSetting('emojiSet',emojiSet);
		emojiPage = 0
		canvas.updateIMArea()
	    }
	}
	EmojiSetSelectKey {
	    symbol: emojiChar[1][0][0]
	    selected: (emojiSet==1) ? true : false
	    onClicked: {
		saveSetting('emojiPage'+emojiSet,emojiPage);
		emojiSet = 1
		saveSetting('emojiSet',emojiSet);
		emojiPage = getSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
	EmojiSetSelectKey {
	    symbol: emojiChar[2][2][4]
	    selected: (emojiSet==2) ? true : false
	    onClicked: {
		saveSetting('emojiPage'+emojiSet,emojiPage);
		emojiSet = 2
		saveSetting('emojiSet',emojiSet);
		emojiPage = getSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
	EmojiSetSelectKey {
	    symbol: emojiChar[3][1][12]
	    selected: (emojiSet==3) ? true : false
	    onClicked: {
		saveSetting('emojiPage'+emojiSet,emojiPage);
		emojiSet = 3
		saveSetting('emojiSet',emojiSet);
		emojiPage = getSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
	EmojiSetSelectKey {
	    symbol: emojiChar[4][1][27]
	    selected: (emojiSet==4) ? true : false
	    onClicked: {
		saveSetting('emojiPage'+emojiSet,emojiPage);
		emojiSet = 4
		saveSetting('emojiSet',emojiSet);
		emojiPage = getSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
	EmojiSetSelectKey {
	    symbol: "!?#"
	    selected: (emojiSet==5) ? true : false
	    onClicked: {
		saveSetting('emojiPage'+emojiSet,emojiPage);
		emojiSet = 5
		saveSetting('emojiSet',emojiSet);
		emojiPage = getSetting('emojiPage'+emojiSet,emojiPage);
		canvas.updateIMArea()
	    }
	}
        BackspaceKey {
	}
	EmojiEnterKey {}
    }
}
