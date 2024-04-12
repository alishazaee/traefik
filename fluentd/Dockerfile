# Start from the official Fluentd image
FROM fluentd:v1.16-debian-1

# Use root to install the plugin
USER root

# Install the fluent-plugin-prometheus plugin
RUN gem install fluent-plugin-prometheus && mkdir /etc/fluent

# Switch back to the fluent user
USER fluent