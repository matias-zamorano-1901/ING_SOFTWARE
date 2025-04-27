#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys

def main():
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'settings')  # Cambiado a 'settings'
    try:
        from django.core.management import execute_from_command_line
    except ImportError:
        print("Error: Django no está instalado.")
        sys.exit(1)
    execute_from_command_line(sys.argv)

if __name__ == '__main__':
    main()