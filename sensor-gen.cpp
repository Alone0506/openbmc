// !!! WARNING: This is a GENERATED Code..Please do NOT Edit !!!

#include "sensordatahandler.hpp"

#include <ipmid/types.hpp>

namespace ipmi {
namespace sensor {

extern const IdInfoMap __attribute__((init_priority(101))) sensors = {
{2,{

        .entityType = 55,
        .instance = 1,
        .sensorType = 1,
        .sensorPath = "/xyz/openbmc_project/sensors/temperature/TedTemp",
        .sensorInterface = "xyz.openbmc_project.Sensor.Value",
        .sensorReadingType = 1,
        .coefficientM = 4,
        .coefficientB = 0,
        .exponentB = 0,
        .scaledOffset = 0,
        .exponentR = -1,
        .hasScale = false,
        .scale = 0,
        .sensorUnits1 = 0,
        .unit = "xyz.openbmc_project.Sensor.Value.Unit.DegreesC",
        .updateFunc = set::readingData<double>,
        .getFunc = get::readingData<double>,
        .mutability = Mutability(Mutability::Read),
        .sensorName = "",
        .sensorNameFunc = get::nameLeaf,
        .propertyInterfaces = {
            {"xyz.openbmc_project.Sensor.Value",{
                    {"Value",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
     },
}},
{3,{

        .entityType = 55,
        .instance = 1,
        .sensorType = 1,
        .sensorPath = "/xyz/openbmc_project/sensors/temperature/TedTemp2",
        .sensorInterface = "xyz.openbmc_project.Sensor.Value",
        .sensorReadingType = 1,
        .coefficientM = 4,
        .coefficientB = 0,
        .exponentB = 0,
        .scaledOffset = 0,
        .exponentR = -1,
        .hasScale = false,
        .scale = 0,
        .sensorUnits1 = 0,
        .unit = "xyz.openbmc_project.Sensor.Value.Unit.DegreesC",
        .updateFunc = set::readingData<double>,
        .getFunc = get::readingData<double>,
        .mutability = Mutability(Mutability::Read),
        .sensorName = "",
        .sensorNameFunc = get::nameLeaf,
        .propertyInterfaces = {
            {"xyz.openbmc_project.Sensor.Value",{
                    {"Value",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
     },
}},
{4,{

        .entityType = 55,
        .instance = 1,
        .sensorType = 1,
        .sensorPath = "/xyz/openbmc_project/sensors/temperature/TedVirtualTemp",
        .sensorInterface = "xyz.openbmc_project.Sensor.Value",
        .sensorReadingType = 1,
        .coefficientM = 4,
        .coefficientB = 0,
        .exponentB = 0,
        .scaledOffset = 0,
        .exponentR = -1,
        .hasScale = false,
        .scale = 0,
        .sensorUnits1 = 0,
        .unit = "xyz.openbmc_project.Sensor.Value.Unit.DegreesC",
        .updateFunc = set::readingData<double>,
        .getFunc = get::readingData<double>,
        .mutability = Mutability(Mutability::Read),
        .sensorName = "",
        .sensorNameFunc = get::nameLeaf,
        .propertyInterfaces = {
            {"xyz.openbmc_project.Sensor.Value",{
                    {"Value",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
     },
}},
{5,{

        .entityType = 55,
        .instance = 1,
        .sensorType = 1,
        .sensorPath = "/xyz/openbmc_project/sensors/temperature/TestSensor",
        .sensorInterface = "xyz.openbmc_project.Sensor.Value",
        .sensorReadingType = 1,
        .coefficientM = 4,
        .coefficientB = 0,
        .exponentB = 0,
        .scaledOffset = 0,
        .exponentR = -1,
        .hasScale = false,
        .scale = 0,
        .sensorUnits1 = 0,
        .unit = "xyz.openbmc_project.Sensor.Value.Unit.DegreesC",
        .updateFunc = set::readingData<double>,
        .getFunc = get::readingData<double>,
        .mutability = Mutability(Mutability::Read),
        .sensorName = "",
        .sensorNameFunc = get::nameLeaf,
        .propertyInterfaces = {
            {"xyz.openbmc_project.Sensor.Value",{
                    {"Value",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
     },
}},
{6,{

        .entityType = 55,
        .instance = 1,
        .sensorType = 1,
        .sensorPath = "/xyz/openbmc_project/sensors/temperature/TestSensor2",
        .sensorInterface = "xyz.openbmc_project.Sensor.Value",
        .sensorReadingType = 1,
        .coefficientM = 4,
        .coefficientB = 0,
        .exponentB = 0,
        .scaledOffset = 0,
        .exponentR = -1,
        .hasScale = false,
        .scale = 0,
        .sensorUnits1 = 0,
        .unit = "xyz.openbmc_project.Sensor.Value.Unit.DegreesC",
        .updateFunc = set::readingData<double>,
        .getFunc = get::readingData<double>,
        .mutability = Mutability(Mutability::Read),
        .sensorName = "",
        .sensorNameFunc = get::nameLeaf,
        .propertyInterfaces = {
            {"xyz.openbmc_project.Sensor.Value",{
                    {"Value",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
            {"xyz.openbmc_project.Sensor.Threshold.Warning",{
                    {"WarningHigh",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
            {"xyz.openbmc_project.Sensor.Threshold.Critical",{
                    {"CriticalHigh",{
                    {
                    },
                    {
                        { 255,{
                                }},
                    }}},
            }},
     },
}},
};

} // namespace sensor
} // namespace ipmi
