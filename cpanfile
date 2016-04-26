requires 'Module::Build::Tiny';
requires 'Log::Any';
requires 'Log::Any::Adapter::Screen';
requires 'Class::Method::Modifiers';

on testing => sub {
    requires => 'Test::More';
}

