class {{ project_name }} {

  appdeploy::django { '{{ project_name }}':
    user      => '{{ project_name }}',
    directory => '/home/{{ project_name }}/{{ project_name }}/src',
    proxy_hosts => [
      '{{ project_name }}.placeholder',
    ],

  }
}
