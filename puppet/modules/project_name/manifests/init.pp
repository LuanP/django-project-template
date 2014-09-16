class {{ project_name }} {

  appdeploy::django { '{{ project_name }}':
    user        => '{{ project_name }}',
    proxy_hosts => [
      '{{ project_name }}.placeholder',
    ],
    environment => {
      'DJANGO_SETTINGS_MODULE' => '{{ project_name }}.settings.prod',
    },
  }
}
