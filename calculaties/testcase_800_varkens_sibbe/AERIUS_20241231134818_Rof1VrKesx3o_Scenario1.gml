<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<imaer:FeatureCollectionCalculator xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:imaer="http://imaer.aerius.nl/5.1" xmlns:gml="http://www.opengis.net/gml/3.2" gml:id="NL.IMAER.Collection" xsi:schemaLocation="http://imaer.aerius.nl/5.1 https://imaer.aerius.nl/5.1/IMAER.xsd">
    <imaer:metadata>
        <imaer:AeriusCalculatorMetadata>
            <imaer:project>
                <imaer:ProjectMetadata>
                    <imaer:year>2024</imaer:year>
                </imaer:ProjectMetadata>
            </imaer:project>
            <imaer:situation>
                <imaer:SituationMetadata>
                    <imaer:name>Scenario 1</imaer:name>
                    <imaer:reference>Rof1VrKesx3o</imaer:reference>
                    <imaer:situationType>REFERENCE</imaer:situationType>
                </imaer:SituationMetadata>
            </imaer:situation>
            <imaer:version>
                <imaer:VersionMetadata>
                    <imaer:aeriusVersion>2023.2.2_20240911_1b4d5131e3</imaer:aeriusVersion>
                    <imaer:databaseVersion>2023.2.2_1b4d5131e3_check_nl_stable</imaer:databaseVersion>
                </imaer:VersionMetadata>
            </imaer:version>
        </imaer:AeriusCalculatorMetadata>
    </imaer:metadata>
    <imaer:featureMember>
        <imaer:FarmLodgingEmissionSource sectorId="4110" gml:id="ES.1">
            <imaer:identifier>
                <imaer:NEN3610ID>
                    <imaer:namespace>NL.IMAER</imaer:namespace>
                    <imaer:localId>ES.1</imaer:localId>
                </imaer:NEN3610ID>
            </imaer:identifier>
            <imaer:label>Test Varkenstal</imaer:label>
            <imaer:emissionSourceCharacteristics>
                <imaer:EmissionSourceCharacteristics>
                    <imaer:heatContent>
                        <imaer:SpecifiedHeatContent>
                            <imaer:value>0.0</imaer:value>
                        </imaer:SpecifiedHeatContent>
                    </imaer:heatContent>
                    <imaer:emissionHeight>5.0</imaer:emissionHeight>
                </imaer:EmissionSourceCharacteristics>
            </imaer:emissionSourceCharacteristics>
            <imaer:geometry>
                <imaer:EmissionSourceGeometry>
                    <imaer:GM_Point>
                        <gml:Point srsName="urn:ogc:def:crs:EPSG::28992" gml:id="ES.1.POINT">
                            <gml:pos>185207.52364393612 316950.6359044108</gml:pos>
                        </gml:Point>
                    </imaer:GM_Point>
                </imaer:EmissionSourceGeometry>
            </imaer:geometry>
            <imaer:emission>
                <imaer:Emission substance="NH3">
                    <imaer:value>6400.0</imaer:value>
                </imaer:Emission>
            </imaer:emission>
            <imaer:emission>
                <imaer:Emission substance="NOX">
                    <imaer:value>0.0</imaer:value>
                </imaer:Emission>
            </imaer:emission>
            <imaer:emission>
                <imaer:Emission substance="PM10">
                    <imaer:value>0.0</imaer:value>
                </imaer:Emission>
            </imaer:emission>
            <imaer:emission>
                <imaer:Emission substance="NO2">
                    <imaer:value>0.0</imaer:value>
                </imaer:Emission>
            </imaer:emission>
            <imaer:farmLodging>
                <imaer:CustomFarmLodging>
                    <imaer:numberOfAnimals>800</imaer:numberOfAnimals>
                    <imaer:animalType>D</imaer:animalType>
                    <imaer:description>test</imaer:description>
                    <imaer:emissionFactor>
                        <imaer:Emission substance="NH3">
                            <imaer:value>8.0</imaer:value>
                        </imaer:Emission>
                    </imaer:emissionFactor>
                    <imaer:emissionFactorType>PER_ANIMAL_PER_YEAR</imaer:emissionFactorType>
                </imaer:CustomFarmLodging>
            </imaer:farmLodging>
            <imaer:established>2024-11-01</imaer:established>
        </imaer:FarmLodgingEmissionSource>
    </imaer:featureMember>
    <imaer:featureMember>
        <imaer:Building gml:id="Building.1">
            <imaer:identifier>
                <imaer:NEN3610ID>
                    <imaer:namespace>NL.IMAER</imaer:namespace>
                    <imaer:localId>Building.1</imaer:localId>
                </imaer:NEN3610ID>
            </imaer:identifier>
            <imaer:label>Building 1</imaer:label>
            <imaer:height>8.0</imaer:height>
            <imaer:geometry>
                <imaer:BuildingGeometry>
                    <imaer:GM_Surface>
                        <gml:Polygon srsName="urn:ogc:def:crs:EPSG::28992" gml:id="Building.1.SURFACE">
                            <gml:exterior>
<gml:LinearRing>
    <gml:posList>185183.39666812058 316961.4143689759 185216.80727502715 316961.4143689759 185216.80727502715 316940.85399549495 185184.68169146313 316944.70906552265 185183.39666812058 316961.4143689759</gml:posList>
</gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </imaer:GM_Surface>
                </imaer:BuildingGeometry>
            </imaer:geometry>
        </imaer:Building>
    </imaer:featureMember>
</imaer:FeatureCollectionCalculator>
