FROM openjdk:11-jre-slim
MAINTAINER serrodcal
ADD gatling-charts-highcharts-bundle-3.5.1-bundle.tar.gz /opt/app/java/gatling/

ENV GATLING_HOME /opt/app/java/gatling/gatling-charts-highcharts-bundle-3.5.1-bundle/gatling-charts-highcharts-bundle-3.5.1
ENV PATH="/opt/app/java/gatling/gatling-charts-highcharts-bundle-3.5.1-bundle/gatling-charts-highcharts-bundle-3.5.1/bin:$PATH"
ADD gatling.conf /opt/app/java/gatling/gatling-charts-highcharts-bundle-3.5.1-bundle/gatling-charts-highcharts-bundle-3.5.1/conf/gatling.conf

ENTRYPOINT ["gatling.sh"]



