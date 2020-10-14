use Kubectl::CLIWrapper;
 
my $kube = Kubectl::CLIWrapper->new(
  server => 'https://kubernetes.example.org/',
  username => 'user',
  password => 'pass',
);
 
my $result = $kube->run('explain', 'service');
# $result->success == 1 if the command executed correctly
# $result->output contains the output of the command
 
my $result = $kube->json('get', 'pods');
# $result->success == 1 if the command executed correctly
# $result->output contains the output of the command
# $result->json is a hashref with the result of the parsed JSON output of the command
 
my $result = $kube->input('{"kind":"Service" ... }', 'create', '-f', '-');
# $result->success == 1 if the command executed correctly
# $result->output contains the output of the command