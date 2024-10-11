function encrypted_message = caesar_cipher(message, shift)

    encrypted_message = '';

    for i = 1:length(message)
        if message(i) >= 'a' && message(i) <= 'z'
            new_char = char(mod(double(message(i)) - 'a' + shift, 26) + 'a');
            encrypted_message = [encrypted_message, new_char];
        else
            encrypted_message = [encrypted_message, message(i)];
        end
    end
end
