#!python3
import sys
import re
from signal import signal, SIGPIPE, SIG_DFL

# make script pipeable and prevent BrokenPipe error when piping out. https://stackoverflow.com/questions/14207708/ioerror-errno-32-broken-pipe-python
signal(SIGPIPE, SIG_DFL)

def main(log_file_name):
    is_equals_sign_re = "^={80}$"
    requests_re = "^-{4} Requests -{1,}$"
    is_separator_started = False
    is_requests_section = False

    with open(log_file_name, 'r') as fin:
        for line in fin:
            #print only the requests information
            if is_separator_started and is_requests_section:
                sys.stdout.write(line)

            # Identify ========================== sections that start and end a section
            if re.search(is_equals_sign_re, line):
                is_separator_started = not is_separator_started
                if is_separator_started:
                    sys.stdout.write(line)
                if not is_separator_started:
                    sys.stdout.write("\n")

            # Identify if we are in the correct section
            if re.search(requests_re, line):
                is_requests_section = not is_requests_section;
                if is_requests_section:
                    sys.stdout.write(line)

if __name__ == "__main__":

    if len(sys.argv) < 2:
        sys.stderr.write("Too few args. Expected 1\n")
        sys.stdout.write("Usage: cmd <file_name>\n")
    else:
        # index 0 is the location of this script. first arg starts at index 1
        log_file_name = sys.argv[1];
        main(log_file_name)
