import vim


def header_length(line):
    if line and line[0] == ':':
        fields = line.split(':', 2)
        if len(fields) == 3:
            head = ':' + fields[1].strip() + ':'
            return len(head)
    return 0


def format_header_line(line, width):
    if line and line[0] == ':':
        fields = line.split(':', 2)
        if len(fields) == 3:
            head = ':' + fields[1].strip() + ':'
            content = fields[2].strip()
            format_string = '{:' + str(width) + '}{}'
            return format_string.format(head, content)
    return (' ' * width) + line.strip()


def main():
    b = vim.current.buffer
    r = range(vim.current.range.start, vim.current.range.end + 1)
    width = max(header_length(b[i]) for i in r) + 5
    for i in r:
        vim.current.buffer[i] = format_header_line(vim.current.buffer[i],
                                                   width)


if __name__ == '__main__':
    main()
