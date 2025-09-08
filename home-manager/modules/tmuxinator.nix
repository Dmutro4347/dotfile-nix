{
  programs.tmuxinator = {
    enable = true;
    projects.django = {
      name = "django";
      root = "~/code/python/my_blog_web";

      windows = [
        {
          name = "editor";
          panes = [
            "source venv/bin/activate && nvim ."
          ];
        }
        {
          name = "server";
          panes = [
            "source venv/bin/activate && python manage.py runserver 0.0.0.0:8000"
          ];
        }
        {
          name = "shell";
          panes = [
            "source venv/bin/activate && python manage.py shell"
          ];
        }
        {
          name = "git";
          panes = [
            "lazygit"
          ];
        }
      ];
    };
  };
}
