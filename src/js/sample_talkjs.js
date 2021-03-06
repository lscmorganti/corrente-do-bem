Talk.ready.then(function () {
    var me = new Talk.User({
        id: '123456',
        name: 'Serhumano',
        email: 'alice@example.com',
        photoUrl: 'https://demo.talkjs.com/img/alice.jpg',
        welcomeMessage: 'Hey there! How are you? :-)',
    });
    window.talkSession = new Talk.Session({
        appId: 't2Lb4YOM',
        me: me,
    });
    var other = new Talk.User({
        id: '654321',
        name: 'Robozinho',
        email: 'Sebastian@example.com',
        photoUrl: 'https://demo.talkjs.com/img/sebastian.jpg',
        welcomeMessage: 'Hey, how can I help?',
    });

    var conversation = talkSession.getOrCreateConversation(
        Talk.oneOnOneId(me, other)
    );
    conversation.setParticipant(me);
    conversation.setParticipant(other);

    var inbox = talkSession.createInbox({ selected: conversation });
    inbox.mount(document.getElementById('talkjs-container'));
    });