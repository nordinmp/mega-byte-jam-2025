/// for example: scr_dialogue("letters", "example", "body")

function scr_dialogue(type, name, content) {
    var dialogues = {
        letters: {
            example: {
                title: "A Letter Header",
                body: "Hello Brewer! \n\n Lorem ipsum dolor sit amet consectetur. Massa tincidunt enim vulputate dolor fringilla natoque. Orci mi vitae nunc ut faucibus arcu eget. Mattis et nunc sed convallis.\n Adipiscing tristique aenean commodo mauris massa. Tortor magnis nulla augue nulla ut non quis. Lectus elit velit dui rutrum libero purus orci sagittis. Cum a condimentum a sed sed blandit pellentesque tellus morbi. \n Libero dictum velit nisl quis urna. Egestas integer gravida tortor ac vitae nibh."
            }
        },

        npc_dialogue: {
            villager_1: {
                greeting: "Cupcakes!",
                goodbye: "Safe travels!"
            }
        }
    };

    return dialogues[$ type][$ name][$ content];
}
