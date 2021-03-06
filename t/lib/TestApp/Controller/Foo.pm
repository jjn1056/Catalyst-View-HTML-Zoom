package TestApp::Controller::Foo;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

sub bar :Local {
    my ($self, $c) = @_;
    $c->stash( name => 'Foo Foo' );
}

sub name_zaction_class :Local {
    my ($self, $c) = @_;
    $c->stash(
      name => 'Dave',
      template => 'main',
      zoom_action => 'main',
      zoom_class => 'TestApp::View::HTML::Root',
    );
}

sub name_zaction_class_short :Local {
    my ($self, $c) = @_;
    $c->stash(
      name => 'Dave',
      template => 'main',
      zoom_action => 'main',
      zoom_class => '::Root',
    );
}

sub name_zaction_class_short_fh :Local {
    my ($self, $c) = @_;
    $c->stash(
      name => 'Dave',
      template => 'main',
      zoom_action => 'main',
      zoom_class => '::Root',
      zoom_renders_as_method => 'to_fh',
    );
}

__PACKAGE__->meta->make_immutable;
