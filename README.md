# NAME

Log::Any::Adapter::Journal - Adapter for Log::Any that outputs with a priority prefix that systemd's journal can parse

# VERSION

version 0.11

# STATUS

<div>
    <a href="https://travis-ci.org/mvgrimes/Log-Any-Adapter-Journal"><img src="https://travis-ci.org/mvgrimes/Log-Any-Adapter-Journal.svg?branch=master" alt="Build Status"></a>
    <a href="https://metacpan.org/pod/Log::Any::Adapter::Journal"><img alt="CPAN version" src="https://badge.fury.io/pl/Log-Any-Adapter-Journal.svg" /></a>
</div>

# SYNOPSIS

    use Log::Any::Adapter;
    Log::Any::Adapter->set( 'Journal', 
        # min_level => 'debug', # default is 'warning'
        # colors    => { }, # customize colors
        # use_color => 1, # force color even when not interactive
        # stderr    => 0, # print to STDOUT instead of the default STDERR
        # formatter => sub { "LOG: $_[1]" }, # default none
    );

# DESCRIPTION

When sending log messages to systemd's journal, the priority can be set by
prefixing the message with the priority (as a number) in angled brackets.
This adapter for will format [Log::Any](https://metacpan.org/pod/Log::Any) messages to accomodate the systemd's
log parser.

By default, systemd will parse the output from commands run as systemd
services/units for the priority prefix (both STDOUT and STDERR). Users can
also pipe output through the `systemd-cat` command to enable parsing of
priority for scripts.

This adapter is based on the [Log::Any::Adapter::Screen](https://metacpan.org/pod/Log::Any::Adapter::Screen), and accepts the same
optional settings. We assume you want color output when running interactively
and the priority prefix otherwise.  More precisely, the priority prefix will be
added when `! -t STDIN` or `!!use_color`.  See [Log::Any::Adapter::Screen](https://metacpan.org/pod/Log::Any::Adapter::Screen)
for more information on the various options.

# SEE ALSO

[Log::Any](https://metacpan.org/pod/Log::Any), [Log::Any::Adapter::Screen](https://metacpan.org/pod/Log::Any::Adapter::Screen), `systemd-cat`

# BUGS

Please report any bugs or feature requests on the bugtracker website [http://github.com/mvgrimes/Log-Any-Adapter-Journal/issues](http://github.com/mvgrimes/Log-Any-Adapter-Journal/issues)

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

# AUTHOR

Mark Grimes <mgrimes@cpan.org>

# SOURCE

Source repository is at [https://github.com/mvgrimes/Log-Any-Adapter-Journal](https://github.com/mvgrimes/Log-Any-Adapter-Journal).

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Mark Grimes <mgrimes@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
