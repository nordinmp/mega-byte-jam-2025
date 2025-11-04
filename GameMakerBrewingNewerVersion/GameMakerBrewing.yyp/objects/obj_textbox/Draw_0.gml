/// @description Draw text
draw_set_font(text_font);
draw_set_halign(text_alignment_h);
draw_set_valign(text_alignment_v);
draw_set_color(text_color);

var draw_x = x + (16 * image_xscale) / 2;
var draw_y = y;
var line_height = 30 * yscale * 2.5; // afstand mellem linjer

if (break_text == true) {
    var lines = [];
    var current_line = "";

    var textLength = string_length(text);

    for (var i = 1; i <= textLength; i++) {
        var ch = string_char_at(text, i);
        current_line += ch;

        // hvis der findes et manuelt linebreak (\n)
        if (ch == "\n") {
            array_push(lines, string_trim(current_line));
            current_line = "";
            continue;
        }

        // hvis linjen overskrider max længde
        if (string_length(current_line) >= text_max_length) {
            var break_pos = string_length(current_line);

            // find nærmeste mellemrum bagud
            while (break_pos > 1 && string_char_at(current_line, break_pos) != " ") {
                break_pos--;
            }

            // hvis der ikke findes et mellemrum, del præcist ved text_max_length
            if (break_pos <= 1) break_pos = text_max_length;

            var part = string_copy(current_line, 1, break_pos);
            array_push(lines, string_trim(part));

            // fjern brugt tekst fra current_line
            current_line = string_delete(current_line, 1, break_pos);
            current_line = string_trim(current_line);
        }
    }

    // tilføj sidste linje hvis der er resterende tekst
    if (string_length(current_line) > 0) {
        array_push(lines, string_trim(current_line));
    }

    // tegn linjerne
    for (var i = 0; i < array_length(lines); i++) {
        draw_text_transformed(draw_x, draw_y + i * line_height, lines[i], xscale, yscale, rotation);
    }

} else {
    draw_text_transformed(draw_x, draw_y, text, xscale, yscale, rotation);
}
