if GetFlagInt("徐谦提示") == 1 then goto label0 end;
    Talk(31, "阿弥陀佛。");
    do return end;
::label0::
    if InTeam(80) == true then goto label1 end;
        Talk(31, "阿弥陀佛。");
        do return end;
::label1::
        jyx2_ReplaceSceneObject("", "NPC/童四二", "1");
        Talk(80, "寿眉大师，我有一事请教。");
        Talk(31, "阿弥陀佛。");
        Talk(80, "听师父说，这一对玉镯子有个秘密，只有大师您能够破解。");
        Talk(31, "这！");
        Talk(80, "请问是什么秘密呀？大师？");
        Talk(31, "施主是从哪里拿到这对玉镯子的？");
        Talk(80, "有一个，是我从小带到大的，师父说从我到鸽子楼那天，我身上就带着这个。");
        Talk(31, "……");
        Talk(0, "大师，你怎么了？");
        Talk(31, "那……那么还有一个呢？");
        Talk(80, "还有一个，是曼陀谷一位阿姨送给我的。");
        Talk(31, "老衲……罪孽深重。");
        Talk(0, "大师，这跟你有什么关系吗？");
        Talk(31, "哎……");
        Talk(80, "怎么回事大师？你为什么低着头？");
        Talk(31, "十六年前，我还不是茶恩寺的住持，我在抵抗蓝隼国入侵的一战中受了重伤，和师父师兄们走散了。");
        Talk(80, "十几年前，寿眉大师应该是四十岁左右？");
        Talk(31, "后来是曼陀谷的一位女施主救了我。");
        Talk(80, "曼陀谷？");
        Talk(31, "在被她照顾的那段日子中，我在意识迷糊时破了戒。");
        Talk(80, "呵呵，老和尚也有抵不住诱惑的时候呀。");
        Talk(0, "四二，别打岔。");
        Talk(31, "后来得知那位女施主有了身孕，我很害怕，便逃回了茶恩寺。");
        Talk(80, "这就是传说中的渣男吗？");
        Talk(0, "你别说话好吗……");
        Talk(31, "这对玉镯子，是我当年送给那位女施主的。");
        Talk(80, "什么？？");
        Talk(31, "后来听说，曼陀谷那位女施主将男孩生了下来，送给了其他人抚养。");
        Talk(80, "男孩……那……那我……就是那个男孩。");
        Talk(31, "老衲罪孽深重，不但破了戒，还留下了一个孤儿。");
        Talk(80, "你……你就是我的父亲！");
        Talk(31, "其实我早就应该坦白此事并赎罪，但那时渡城正遭遇蓝隼国的频繁攻击，上一任住持枯藤大师年事已高，把住持之位传给了我，让我帮渡城渡过难关。");
        Talk(0, "确实，那时候莫桥山庄和万烛书苑应该还刚起步，渡城都是靠寿眉大师带领茶恩寺的弟子抵抗着蓝隼国的入侵，尤其是五年前与鬼将伏格多的那一战，若不是茶恩寺出手，渡城估计早已沦陷了。");
        Talk(31, "那一战茶恩寺损失了许多弟子，后来幸好莫穿林这一代侠士们逐渐成熟了，才能稳住渡城的局势。");
        Talk(80, "你们别说了，我……我要去找我娘！");
        Talk(31, "阿弥陀佛，我此生罪无可恕，唯有……以死赎罪。");
        Talk(80, "不要啊！爹！");
        Talk(0, "大师住手！");
        Talk(31, "不要拦我，拦我者同死。");
        if TryBattle(30) == true then goto label2 end;
            Dead();
            do return end;
::label2::
            if InTeam(30) == true then goto label3 end;
                Talk(31, "原以为莫穿林死后，渡城再无真侠士，看来江湖辈有人才出，我可以放心归去了。");
                Talk(80, "爹！你去哪了？");
                jyx2_ReplaceSceneObject("", "NPC/方丈", "");
                AddItem(32, 1);
                AddItem(33, 1);
                AddItem(30, 10);
                jyx2_ReplaceSceneObject("", "NPC/童四二", "");
                ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 2, -2, -2, 39, -1, -1, -2, -2, -2, -2, -2, -2);--茶恩寺，虚安，B
                ModifyEvent(7, 3, -2, -2, 79, -1, -1, -2, -2, -2, -2, -2, -2);--曼陀谷，粟兰，D
                SetFlagInt("寿眉归隐", 1);
                ModifyEvent(5, 5, -2, -2, 515, -1, -1, -2, -2, -2, -2, -2, -2);
                do return end;
::label3::
                Talk(31, "原以为莫穿林死后，渡城再无真侠士，看来江湖辈有人才出，我可以放心归去了。<color=orange>残阳映佛光，驱魔定城疆。</color>");
                Talk(30, "师祖这念的是什么呀？");
                Talk(80, "爹！你去哪了？");
                jyx2_ReplaceSceneObject("", "NPC/方丈", "");
                AddItem(32, 1);
                AddItem(33, 1);
                AddItem(30, 10);
                jyx2_ReplaceSceneObject("", "NPC/童四二", "");
                ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 0, -2, -2, 313, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 2, -2, -2, 39, -1, -1, -2, -2, -2, -2, -2, -2);--茶恩寺，虚安，B
                ModifyEvent(7, 3, -2, -2, 79, -1, -1, -2, -2, -2, -2, -2, -2);--曼陀谷，粟兰，D
                SetFlagInt("寿眉归隐", 1);
                ModifyEvent(5, 5, -2, -2, 515, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
