# enable xyz.openbmc_project.Logging.IPMI.service
PACKAGECONFIG:append:romulus = " log-threshold send-to-logger"