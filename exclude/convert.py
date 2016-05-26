import os
import re
import html2text


post_regex = r"(^---.*---\n)(.*\s*)$"
comment_regex = r"(comments:.*\s)---\n"


def _convert_header(header):
    comments = re.search(comment_regex, header, re.DOTALL).groups()[0]
    header_no_comments = header.replace(comments, '')
    return header_no_comments


def convert(fd, basename):
    print(basename)
    post = fd.read()
    header, content = re.search(post_regex, post, re.DOTALL).groups()
    h = html2text.HTML2Text()
    h.escape_all = True
    new_header = _convert_header(header)
    #Convert the content
    md = h.handle(content)
    fdo = open("{}.md".format(basename), 'w', encoding="utf-8")
    fdo.write(new_header)
    fdo.write(md)
    fdo.close()


# Get the file list
file_list = os.listdir(os.getcwd())
for filename in file_list:
    basename, extension = os.path.splitext(filename)
    if extension == '.html':
        fd = open(filename, 'r', encoding="utf-8")
        convert(fd, basename)


