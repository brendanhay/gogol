{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.CivicInfo.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.CivicInfo.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Contest_LevelItem
    Contest_LevelItem
      ( Contest_LevelItem_International,
        Contest_LevelItem_Country,
        Contest_LevelItem_ADMINISTRATIVEAREA1,
        Contest_LevelItem_Regional,
        Contest_LevelItem_ADMINISTRATIVEAREA2,
        Contest_LevelItem_Locality,
        Contest_LevelItem_SUBLOCALITY1,
        Contest_LevelItem_SUBLOCALITY2,
        Contest_LevelItem_Special,
        ..
      ),

    -- * Contest_RolesItem
    Contest_RolesItem
      ( Contest_RolesItem_HeadOfState,
        Contest_RolesItem_HeadOfGovernment,
        Contest_RolesItem_DeputyHeadOfGovernment,
        Contest_RolesItem_GovernmentOfficer,
        Contest_RolesItem_ExecutiveCouncil,
        Contest_RolesItem_LegislatorUpperBody,
        Contest_RolesItem_LegislatorLowerBody,
        Contest_RolesItem_HighestCourtJudge,
        Contest_RolesItem_Judge,
        Contest_RolesItem_SchoolBoard,
        Contest_RolesItem_SpecialPurposeOfficer,
        Contest_RolesItem_OtherRole,
        ..
      ),

    -- * ElectoralDistrict_Scope
    ElectoralDistrict_Scope
      ( ElectoralDistrict_Scope_Statewide,
        ElectoralDistrict_Scope_Congressional,
        ElectoralDistrict_Scope_StateUpper,
        ElectoralDistrict_Scope_StateLower,
        ElectoralDistrict_Scope_Countywide,
        ElectoralDistrict_Scope_Judicial,
        ElectoralDistrict_Scope_SchoolBoard,
        ElectoralDistrict_Scope_Citywide,
        ElectoralDistrict_Scope_Special,
        ElectoralDistrict_Scope_CountyCouncil,
        ElectoralDistrict_Scope_Township,
        ElectoralDistrict_Scope_Ward,
        ElectoralDistrict_Scope_CityCouncil,
        ElectoralDistrict_Scope_National,
        ..
      ),

    -- * GeocodingSummary_FeatureType
    GeocodingSummary_FeatureType
      ( GeocodingSummary_FeatureType_TypeAny,
        GeocodingSummary_FeatureType_TypeTransportation,
        GeocodingSummary_FeatureType_TypeRoute,
        GeocodingSummary_FeatureType_TypeDeprecatedHighwayDoNotUse,
        GeocodingSummary_FeatureType_TypeHighway,
        GeocodingSummary_FeatureType_TYPEHIGHWAY1,
        GeocodingSummary_FeatureType_TYPEHIGHWAY2,
        GeocodingSummary_FeatureType_TYPEHIGHWAY3,
        GeocodingSummary_FeatureType_TYPEHIGHWAY4,
        GeocodingSummary_FeatureType_TYPEHIGHWAY5,
        GeocodingSummary_FeatureType_TYPEHIGHWAY6,
        GeocodingSummary_FeatureType_TYPEHIGHWAY7,
        GeocodingSummary_FeatureType_TYPEHIGHWAY8,
        GeocodingSummary_FeatureType_TYPEHIGHWAY9,
        GeocodingSummary_FeatureType_TypeBicycleRoute,
        GeocodingSummary_FeatureType_TypeTrail,
        GeocodingSummary_FeatureType_TypeSegment,
        GeocodingSummary_FeatureType_TypeRoad,
        GeocodingSummary_FeatureType_TypeRailway,
        GeocodingSummary_FeatureType_TypeStandardTrack,
        GeocodingSummary_FeatureType_TypeJrTrack,
        GeocodingSummary_FeatureType_TypeNarrowTrack,
        GeocodingSummary_FeatureType_TypeMonorailTrack,
        GeocodingSummary_FeatureType_TypeSubwayTrack,
        GeocodingSummary_FeatureType_TypeLightRailTrack,
        GeocodingSummary_FeatureType_TypeBroadTrack,
        GeocodingSummary_FeatureType_TypeHighSpeedRail,
        GeocodingSummary_FeatureType_TypeTrolleyTrack,
        GeocodingSummary_FeatureType_TypeFerry,
        GeocodingSummary_FeatureType_TypeFerryBoat,
        GeocodingSummary_FeatureType_TypeFerryTrain,
        GeocodingSummary_FeatureType_TypeVirtualSegment,
        GeocodingSummary_FeatureType_TypeIntersection,
        GeocodingSummary_FeatureType_TypeTransit,
        GeocodingSummary_FeatureType_TypeTransitStation,
        GeocodingSummary_FeatureType_TypeBusStation,
        GeocodingSummary_FeatureType_TypeTramwayStation,
        GeocodingSummary_FeatureType_TypeTrainStation,
        GeocodingSummary_FeatureType_TypeSubwayStation,
        GeocodingSummary_FeatureType_TypeFerryTerminal,
        GeocodingSummary_FeatureType_TypeAirport,
        GeocodingSummary_FeatureType_TypeAirportCivil,
        GeocodingSummary_FeatureType_TypeAirportMilitary,
        GeocodingSummary_FeatureType_TypeAirportMixed,
        GeocodingSummary_FeatureType_TypeHeliport,
        GeocodingSummary_FeatureType_TypeSeaplaneBase,
        GeocodingSummary_FeatureType_TypeAirstrip,
        GeocodingSummary_FeatureType_TypeCableCarStation,
        GeocodingSummary_FeatureType_TypeGondolaLiftStation,
        GeocodingSummary_FeatureType_TypeFunicularStation,
        GeocodingSummary_FeatureType_TypeSpecialStation,
        GeocodingSummary_FeatureType_TypeHorseCarriageStation,
        GeocodingSummary_FeatureType_TypeMonorailStation,
        GeocodingSummary_FeatureType_TypeSeaport,
        GeocodingSummary_FeatureType_TypeTransitStop,
        GeocodingSummary_FeatureType_TypeTransitTrip,
        GeocodingSummary_FeatureType_TypeTransitDeparture,
        GeocodingSummary_FeatureType_TypeTransitLeg,
        GeocodingSummary_FeatureType_TypeTransitLine,
        GeocodingSummary_FeatureType_TypeTransitAgency,
        GeocodingSummary_FeatureType_TypeTransitTransfer,
        GeocodingSummary_FeatureType_TypeSegmentPath,
        GeocodingSummary_FeatureType_TypeRoadSign,
        GeocodingSummary_FeatureType_TypeIntersectionGroup,
        GeocodingSummary_FeatureType_TypePathway,
        GeocodingSummary_FeatureType_TypeRestrictionGroup,
        GeocodingSummary_FeatureType_TypeTollCluster,
        GeocodingSummary_FeatureType_TypePolitical,
        GeocodingSummary_FeatureType_TypeCountry,
        GeocodingSummary_FeatureType_TypeAdministrativeArea,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA1,
        GeocodingSummary_FeatureType_TypeUsState,
        GeocodingSummary_FeatureType_TypeGbCountry,
        GeocodingSummary_FeatureType_TypeJpTodoufuken,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA2,
        GeocodingSummary_FeatureType_TypeGbFormerPostalCounty,
        GeocodingSummary_FeatureType_TypeGbTraditionalCounty,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA3,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA4,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA5,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA6,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA7,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA8,
        GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA9,
        GeocodingSummary_FeatureType_TypeColloquialArea,
        GeocodingSummary_FeatureType_TypeReservation,
        GeocodingSummary_FeatureType_TypeLocality,
        GeocodingSummary_FeatureType_TypeGbPostTown,
        GeocodingSummary_FeatureType_TypeJpGun,
        GeocodingSummary_FeatureType_TypeJpShikuchouson,
        GeocodingSummary_FeatureType_TypeJpSubShikuchouson,
        GeocodingSummary_FeatureType_TypeColloquialCity,
        GeocodingSummary_FeatureType_TypeSublocality,
        GeocodingSummary_FeatureType_TypeUsBorough,
        GeocodingSummary_FeatureType_TypeGbDependentLocality,
        GeocodingSummary_FeatureType_TypeJpOoaza,
        GeocodingSummary_FeatureType_TypeJpKoaza,
        GeocodingSummary_FeatureType_TypeJpGaiku,
        GeocodingSummary_FeatureType_TypeGbDoubleDependentLocality,
        GeocodingSummary_FeatureType_TypeJpChiban,
        GeocodingSummary_FeatureType_TypeJpEdaban,
        GeocodingSummary_FeatureType_TYPESUBLOCALITY1,
        GeocodingSummary_FeatureType_TYPESUBLOCALITY2,
        GeocodingSummary_FeatureType_TYPESUBLOCALITY3,
        GeocodingSummary_FeatureType_TYPESUBLOCALITY4,
        GeocodingSummary_FeatureType_TYPESUBLOCALITY5,
        GeocodingSummary_FeatureType_TypeNeighborhood,
        GeocodingSummary_FeatureType_TypeConstituency,
        GeocodingSummary_FeatureType_TypeDesignatedMarketArea,
        GeocodingSummary_FeatureType_TypeSchoolDistrict,
        GeocodingSummary_FeatureType_TypeLandParcel,
        GeocodingSummary_FeatureType_TypeDisputedArea,
        GeocodingSummary_FeatureType_TypePoliceJurisdiction,
        GeocodingSummary_FeatureType_TypeStatisticalArea,
        GeocodingSummary_FeatureType_TypeConstituencyFuture,
        GeocodingSummary_FeatureType_TypePark,
        GeocodingSummary_FeatureType_TypeGolfCourse,
        GeocodingSummary_FeatureType_TypeLocalPark,
        GeocodingSummary_FeatureType_TypeNationalPark,
        GeocodingSummary_FeatureType_TypeUsNationalPark,
        GeocodingSummary_FeatureType_TypeUsNationalMonument,
        GeocodingSummary_FeatureType_TypeNationalForest,
        GeocodingSummary_FeatureType_TypeProvincialPark,
        GeocodingSummary_FeatureType_TypeProvincialForest,
        GeocodingSummary_FeatureType_TypeCampgrounds,
        GeocodingSummary_FeatureType_TypeHikingArea,
        GeocodingSummary_FeatureType_TypeBusiness,
        GeocodingSummary_FeatureType_TypeGovernment,
        GeocodingSummary_FeatureType_TypeBorderCrossing,
        GeocodingSummary_FeatureType_TypeCityHall,
        GeocodingSummary_FeatureType_TypeCourthouse,
        GeocodingSummary_FeatureType_TypeEmbassy,
        GeocodingSummary_FeatureType_TypeLibrary,
        GeocodingSummary_FeatureType_TypeSchool,
        GeocodingSummary_FeatureType_TypeUniversity,
        GeocodingSummary_FeatureType_TypeEmergency,
        GeocodingSummary_FeatureType_TypeHospital,
        GeocodingSummary_FeatureType_TypePharmacy,
        GeocodingSummary_FeatureType_TypePolice,
        GeocodingSummary_FeatureType_TypeFire,
        GeocodingSummary_FeatureType_TypeDoctor,
        GeocodingSummary_FeatureType_TypeDentist,
        GeocodingSummary_FeatureType_TypeVeterinarian,
        GeocodingSummary_FeatureType_TypeTravelService,
        GeocodingSummary_FeatureType_TypeLodging,
        GeocodingSummary_FeatureType_TypeRestaurant,
        GeocodingSummary_FeatureType_TypeGasStation,
        GeocodingSummary_FeatureType_TypeParking,
        GeocodingSummary_FeatureType_TypePostOffice,
        GeocodingSummary_FeatureType_TypeRestArea,
        GeocodingSummary_FeatureType_TypeCashMachine,
        GeocodingSummary_FeatureType_TypeCarRental,
        GeocodingSummary_FeatureType_TypeCarRepair,
        GeocodingSummary_FeatureType_TypeShopping,
        GeocodingSummary_FeatureType_TypeGrocery,
        GeocodingSummary_FeatureType_TypeTouristDestination,
        GeocodingSummary_FeatureType_TypeEcoTouristDestination,
        GeocodingSummary_FeatureType_TypeBirdWatching,
        GeocodingSummary_FeatureType_TypeFishing,
        GeocodingSummary_FeatureType_TypeHunting,
        GeocodingSummary_FeatureType_TypeNatureReserve,
        GeocodingSummary_FeatureType_TypeTemple,
        GeocodingSummary_FeatureType_TypeChurch,
        GeocodingSummary_FeatureType_TypeGurudwara,
        GeocodingSummary_FeatureType_TypeHinduTemple,
        GeocodingSummary_FeatureType_TypeMosque,
        GeocodingSummary_FeatureType_TypeSynagogue,
        GeocodingSummary_FeatureType_TypeStadium,
        GeocodingSummary_FeatureType_TypeBar,
        GeocodingSummary_FeatureType_TypeMovieRental,
        GeocodingSummary_FeatureType_TypeCoffee,
        GeocodingSummary_FeatureType_TypeGolf,
        GeocodingSummary_FeatureType_TypeBank,
        GeocodingSummary_FeatureType_TypeDoodle,
        GeocodingSummary_FeatureType_TypeGrounds,
        GeocodingSummary_FeatureType_TypeAirportGrounds,
        GeocodingSummary_FeatureType_TypeBuildingGrounds,
        GeocodingSummary_FeatureType_TypeCemetery,
        GeocodingSummary_FeatureType_TypeHospitalGrounds,
        GeocodingSummary_FeatureType_TypeIndustrial,
        GeocodingSummary_FeatureType_TypeMilitary,
        GeocodingSummary_FeatureType_TypeShoppingCenter,
        GeocodingSummary_FeatureType_TypeSportsComplex,
        GeocodingSummary_FeatureType_TypeUniversityGrounds,
        GeocodingSummary_FeatureType_TypeDeprecatedTarmac,
        GeocodingSummary_FeatureType_TypeEnclosedTrafficArea,
        GeocodingSummary_FeatureType_TypeParkingLot,
        GeocodingSummary_FeatureType_TypeParkingGarage,
        GeocodingSummary_FeatureType_TypeOffRoadArea,
        GeocodingSummary_FeatureType_TypeBorder,
        GeocodingSummary_FeatureType_TypeBuilding,
        GeocodingSummary_FeatureType_TypeGeocodedAddress,
        GeocodingSummary_FeatureType_TypeNaturalFeature,
        GeocodingSummary_FeatureType_TypeTerrain,
        GeocodingSummary_FeatureType_TypeSand,
        GeocodingSummary_FeatureType_TypeBeach,
        GeocodingSummary_FeatureType_TypeDune,
        GeocodingSummary_FeatureType_TypeRocky,
        GeocodingSummary_FeatureType_TypeIce,
        GeocodingSummary_FeatureType_TypeGlacier,
        GeocodingSummary_FeatureType_TypeBuiltUpArea,
        GeocodingSummary_FeatureType_TypeVegetation,
        GeocodingSummary_FeatureType_TypeShrubbery,
        GeocodingSummary_FeatureType_TypeWoods,
        GeocodingSummary_FeatureType_TypeAgricultural,
        GeocodingSummary_FeatureType_TypeGrassland,
        GeocodingSummary_FeatureType_TypeTundra,
        GeocodingSummary_FeatureType_TypeDesert,
        GeocodingSummary_FeatureType_TypeSaltFlat,
        GeocodingSummary_FeatureType_TypeWater,
        GeocodingSummary_FeatureType_TypeOcean,
        GeocodingSummary_FeatureType_TypeBay,
        GeocodingSummary_FeatureType_TypeBight,
        GeocodingSummary_FeatureType_TypeLagoon,
        GeocodingSummary_FeatureType_TypeSea,
        GeocodingSummary_FeatureType_TypeStrait,
        GeocodingSummary_FeatureType_TypeInlet,
        GeocodingSummary_FeatureType_TypeFjord,
        GeocodingSummary_FeatureType_TypeLake,
        GeocodingSummary_FeatureType_TypeSeasonalLake,
        GeocodingSummary_FeatureType_TypeReservoir,
        GeocodingSummary_FeatureType_TypePond,
        GeocodingSummary_FeatureType_TypeRiver,
        GeocodingSummary_FeatureType_TypeRapids,
        GeocodingSummary_FeatureType_TypeDistributary,
        GeocodingSummary_FeatureType_TypeConfluence,
        GeocodingSummary_FeatureType_TypeWaterfall,
        GeocodingSummary_FeatureType_TypeSpring,
        GeocodingSummary_FeatureType_TypeGeyser,
        GeocodingSummary_FeatureType_TypeHotSpring,
        GeocodingSummary_FeatureType_TypeSeasonalRiver,
        GeocodingSummary_FeatureType_TypeWadi,
        GeocodingSummary_FeatureType_TypeEstuary,
        GeocodingSummary_FeatureType_TypeWetland,
        GeocodingSummary_FeatureType_TypeWaterNavigation,
        GeocodingSummary_FeatureType_TypeFord,
        GeocodingSummary_FeatureType_TypeCanal,
        GeocodingSummary_FeatureType_TypeHarbor,
        GeocodingSummary_FeatureType_TypeChannel,
        GeocodingSummary_FeatureType_TypeReef,
        GeocodingSummary_FeatureType_TypeReefFlat,
        GeocodingSummary_FeatureType_TypeReefGrowth,
        GeocodingSummary_FeatureType_TypeReefExtent,
        GeocodingSummary_FeatureType_TypeReefRockSubmerged,
        GeocodingSummary_FeatureType_TypeIrrigation,
        GeocodingSummary_FeatureType_TypeDam,
        GeocodingSummary_FeatureType_TypeDrinkingWater,
        GeocodingSummary_FeatureType_TypeCurrent,
        GeocodingSummary_FeatureType_TypeWateringHole,
        GeocodingSummary_FeatureType_TypeTectonic,
        GeocodingSummary_FeatureType_TypeWateringHoleDeprecated,
        GeocodingSummary_FeatureType_TypeVolcano,
        GeocodingSummary_FeatureType_TypeLavaField,
        GeocodingSummary_FeatureType_TypeFissure,
        GeocodingSummary_FeatureType_TypeFault,
        GeocodingSummary_FeatureType_TypeLandMass,
        GeocodingSummary_FeatureType_TypeContinent,
        GeocodingSummary_FeatureType_TypeIsland,
        GeocodingSummary_FeatureType_TypeAtoll,
        GeocodingSummary_FeatureType_TypeOceanRockExposed,
        GeocodingSummary_FeatureType_TypeCay,
        GeocodingSummary_FeatureType_TypePeninsula,
        GeocodingSummary_FeatureType_TypeIsthmus,
        GeocodingSummary_FeatureType_TypeElevated,
        GeocodingSummary_FeatureType_TypePeak,
        GeocodingSummary_FeatureType_TypeNunatak,
        GeocodingSummary_FeatureType_TypeSpur,
        GeocodingSummary_FeatureType_TypePass,
        GeocodingSummary_FeatureType_TypePlateau,
        GeocodingSummary_FeatureType_TypeRidge,
        GeocodingSummary_FeatureType_TypeRavine,
        GeocodingSummary_FeatureType_TypeCrater,
        GeocodingSummary_FeatureType_TypeKarst,
        GeocodingSummary_FeatureType_TypeCliff,
        GeocodingSummary_FeatureType_TypeVista,
        GeocodingSummary_FeatureType_TypeDigitalElevationModel,
        GeocodingSummary_FeatureType_TypeUpland,
        GeocodingSummary_FeatureType_TypeTerrace,
        GeocodingSummary_FeatureType_TypeSlope,
        GeocodingSummary_FeatureType_TypeContourLine,
        GeocodingSummary_FeatureType_TypePan,
        GeocodingSummary_FeatureType_TypeUnstableHillside,
        GeocodingSummary_FeatureType_TypeMountainRange,
        GeocodingSummary_FeatureType_TypeUndersea,
        GeocodingSummary_FeatureType_TypeSubmarineSeamount,
        GeocodingSummary_FeatureType_TypeSubmarineRidge,
        GeocodingSummary_FeatureType_TypeSubmarineGap,
        GeocodingSummary_FeatureType_TypeSubmarinePlateau,
        GeocodingSummary_FeatureType_TypeSubmarineDeep,
        GeocodingSummary_FeatureType_TypeSubmarineValley,
        GeocodingSummary_FeatureType_TypeSubmarineBasin,
        GeocodingSummary_FeatureType_TypeSubmarineSlope,
        GeocodingSummary_FeatureType_TypeSubmarineCliff,
        GeocodingSummary_FeatureType_TypeSubmarinePlain,
        GeocodingSummary_FeatureType_TypeSubmarineFractureZone,
        GeocodingSummary_FeatureType_TypeCave,
        GeocodingSummary_FeatureType_TypeRock,
        GeocodingSummary_FeatureType_TypeArchipelago,
        GeocodingSummary_FeatureType_TypePostal,
        GeocodingSummary_FeatureType_TypePostalCode,
        GeocodingSummary_FeatureType_TypePostalCodePrefix,
        GeocodingSummary_FeatureType_TypePremise,
        GeocodingSummary_FeatureType_TypeSubPremise,
        GeocodingSummary_FeatureType_TypeSuite,
        GeocodingSummary_FeatureType_TypePostTown,
        GeocodingSummary_FeatureType_TypePostalRound,
        GeocodingSummary_FeatureType_TypeMetaFeature,
        GeocodingSummary_FeatureType_TypeDataSource,
        GeocodingSummary_FeatureType_TypeLocale,
        GeocodingSummary_FeatureType_TypeTimezone,
        GeocodingSummary_FeatureType_TypeBusinessChain,
        GeocodingSummary_FeatureType_TypePhoneNumberPrefix,
        GeocodingSummary_FeatureType_TypePhoneNumberAreaCode,
        GeocodingSummary_FeatureType_TypeBusinessCorridor,
        GeocodingSummary_FeatureType_TypeAddressTemplate,
        GeocodingSummary_FeatureType_TypeEvent,
        GeocodingSummary_FeatureType_TypeEarthquake,
        GeocodingSummary_FeatureType_TypeHurricane,
        GeocodingSummary_FeatureType_TypeWeatherCondition,
        GeocodingSummary_FeatureType_TypeTransient,
        GeocodingSummary_FeatureType_TypeEntrance,
        GeocodingSummary_FeatureType_TypeCartographic,
        GeocodingSummary_FeatureType_TypeHighTension,
        GeocodingSummary_FeatureType_TypeSkiTrail,
        GeocodingSummary_FeatureType_TypeSkiLift,
        GeocodingSummary_FeatureType_TypeSkiBoundary,
        GeocodingSummary_FeatureType_TypeWatershedBoundary,
        GeocodingSummary_FeatureType_TypeTarmac,
        GeocodingSummary_FeatureType_TypeWall,
        GeocodingSummary_FeatureType_TypePicnicArea,
        GeocodingSummary_FeatureType_TypePlayGround,
        GeocodingSummary_FeatureType_TypeTrailHead,
        GeocodingSummary_FeatureType_TypeGolfTeeingGround,
        GeocodingSummary_FeatureType_TypeGolfPuttingGreen,
        GeocodingSummary_FeatureType_TypeGolfRough,
        GeocodingSummary_FeatureType_TypeGolfSandBunker,
        GeocodingSummary_FeatureType_TypeGolfFairway,
        GeocodingSummary_FeatureType_TypeGolfHole,
        GeocodingSummary_FeatureType_TypeDeprecatedGolfShop,
        GeocodingSummary_FeatureType_TypeCampingSite,
        GeocodingSummary_FeatureType_TypeDesignatedBarbecuePit,
        GeocodingSummary_FeatureType_TypeDesignatedCookingArea,
        GeocodingSummary_FeatureType_TypeCampfirePit,
        GeocodingSummary_FeatureType_TypeWaterFountain,
        GeocodingSummary_FeatureType_TypeLitterReceptacle,
        GeocodingSummary_FeatureType_TypeLockerArea,
        GeocodingSummary_FeatureType_TypeAnimalEnclosure,
        GeocodingSummary_FeatureType_TypeCartographicLine,
        GeocodingSummary_FeatureType_TypeEstablishment,
        GeocodingSummary_FeatureType_TypeEstablishmentGrounds,
        GeocodingSummary_FeatureType_TypeEstablishmentBuilding,
        GeocodingSummary_FeatureType_TypeEstablishmentPoi,
        GeocodingSummary_FeatureType_TypeEstablishmentService,
        GeocodingSummary_FeatureType_TypeCelestial,
        GeocodingSummary_FeatureType_TypeRoadMonitor,
        GeocodingSummary_FeatureType_TypePublicSpacesAndMonuments,
        GeocodingSummary_FeatureType_TypeStatue,
        GeocodingSummary_FeatureType_TypeTownSquare,
        GeocodingSummary_FeatureType_TypeLevel,
        GeocodingSummary_FeatureType_TypeCompound,
        GeocodingSummary_FeatureType_TypeCompoundGrounds,
        GeocodingSummary_FeatureType_TypeCompoundBuilding,
        GeocodingSummary_FeatureType_TypeCompoundSection,
        GeocodingSummary_FeatureType_TypeTerminalPoint,
        GeocodingSummary_FeatureType_TypeRegulatedArea,
        GeocodingSummary_FeatureType_TypeDoNotUseReservedToCatchGeneratedFiles,
        GeocodingSummary_FeatureType_TypeUnknown,
        ..
      ),

    -- * Office_LevelsItem
    Office_LevelsItem
      ( Office_LevelsItem_International,
        Office_LevelsItem_Country,
        Office_LevelsItem_ADMINISTRATIVEAREA1,
        Office_LevelsItem_Regional,
        Office_LevelsItem_ADMINISTRATIVEAREA2,
        Office_LevelsItem_Locality,
        Office_LevelsItem_SUBLOCALITY1,
        Office_LevelsItem_SUBLOCALITY2,
        Office_LevelsItem_Special,
        ..
      ),

    -- * Office_RolesItem
    Office_RolesItem
      ( Office_RolesItem_HeadOfState,
        Office_RolesItem_HeadOfGovernment,
        Office_RolesItem_DeputyHeadOfGovernment,
        Office_RolesItem_GovernmentOfficer,
        Office_RolesItem_ExecutiveCouncil,
        Office_RolesItem_LegislatorUpperBody,
        Office_RolesItem_LegislatorLowerBody,
        Office_RolesItem_HighestCourtJudge,
        Office_RolesItem_Judge,
        Office_RolesItem_SchoolBoard,
        Office_RolesItem_SpecialPurposeOfficer,
        Office_RolesItem_OtherRole,
        ..
      ),

    -- * RepresentativesRepresentativeInfoByAddressLevels
    RepresentativesRepresentativeInfoByAddressLevels
      ( RepresentativesRepresentativeInfoByAddressLevels_International,
        RepresentativesRepresentativeInfoByAddressLevels_Country,
        RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA1,
        RepresentativesRepresentativeInfoByAddressLevels_Regional,
        RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA2,
        RepresentativesRepresentativeInfoByAddressLevels_Locality,
        RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY1,
        RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY2,
        RepresentativesRepresentativeInfoByAddressLevels_Special,
        ..
      ),

    -- * RepresentativesRepresentativeInfoByAddressRoles
    RepresentativesRepresentativeInfoByAddressRoles
      ( RepresentativesRepresentativeInfoByAddressRoles_HeadOfState,
        RepresentativesRepresentativeInfoByAddressRoles_HeadOfGovernment,
        RepresentativesRepresentativeInfoByAddressRoles_DeputyHeadOfGovernment,
        RepresentativesRepresentativeInfoByAddressRoles_GovernmentOfficer,
        RepresentativesRepresentativeInfoByAddressRoles_ExecutiveCouncil,
        RepresentativesRepresentativeInfoByAddressRoles_LegislatorUpperBody,
        RepresentativesRepresentativeInfoByAddressRoles_LegislatorLowerBody,
        RepresentativesRepresentativeInfoByAddressRoles_HighestCourtJudge,
        RepresentativesRepresentativeInfoByAddressRoles_Judge,
        RepresentativesRepresentativeInfoByAddressRoles_SchoolBoard,
        RepresentativesRepresentativeInfoByAddressRoles_SpecialPurposeOfficer,
        RepresentativesRepresentativeInfoByAddressRoles_OtherRole,
        ..
      ),

    -- * RepresentativesRepresentativeInfoByDivisionLevels
    RepresentativesRepresentativeInfoByDivisionLevels
      ( RepresentativesRepresentativeInfoByDivisionLevels_International,
        RepresentativesRepresentativeInfoByDivisionLevels_Country,
        RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA1,
        RepresentativesRepresentativeInfoByDivisionLevels_Regional,
        RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA2,
        RepresentativesRepresentativeInfoByDivisionLevels_Locality,
        RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY1,
        RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY2,
        RepresentativesRepresentativeInfoByDivisionLevels_Special,
        ..
      ),

    -- * RepresentativesRepresentativeInfoByDivisionRoles
    RepresentativesRepresentativeInfoByDivisionRoles
      ( RepresentativesRepresentativeInfoByDivisionRoles_HeadOfState,
        RepresentativesRepresentativeInfoByDivisionRoles_HeadOfGovernment,
        RepresentativesRepresentativeInfoByDivisionRoles_DeputyHeadOfGovernment,
        RepresentativesRepresentativeInfoByDivisionRoles_GovernmentOfficer,
        RepresentativesRepresentativeInfoByDivisionRoles_ExecutiveCouncil,
        RepresentativesRepresentativeInfoByDivisionRoles_LegislatorUpperBody,
        RepresentativesRepresentativeInfoByDivisionRoles_LegislatorLowerBody,
        RepresentativesRepresentativeInfoByDivisionRoles_HighestCourtJudge,
        RepresentativesRepresentativeInfoByDivisionRoles_Judge,
        RepresentativesRepresentativeInfoByDivisionRoles_SchoolBoard,
        RepresentativesRepresentativeInfoByDivisionRoles_SpecialPurposeOfficer,
        RepresentativesRepresentativeInfoByDivisionRoles_OtherRole,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

newtype Contest_LevelItem = Contest_LevelItem {fromContest_LevelItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Contest_LevelItem_International :: Contest_LevelItem
pattern Contest_LevelItem_International = Contest_LevelItem "international"

-- |
pattern Contest_LevelItem_Country :: Contest_LevelItem
pattern Contest_LevelItem_Country = Contest_LevelItem "country"

-- |
pattern Contest_LevelItem_ADMINISTRATIVEAREA1 :: Contest_LevelItem
pattern Contest_LevelItem_ADMINISTRATIVEAREA1 = Contest_LevelItem "administrativeArea1"

-- |
pattern Contest_LevelItem_Regional :: Contest_LevelItem
pattern Contest_LevelItem_Regional = Contest_LevelItem "regional"

-- |
pattern Contest_LevelItem_ADMINISTRATIVEAREA2 :: Contest_LevelItem
pattern Contest_LevelItem_ADMINISTRATIVEAREA2 = Contest_LevelItem "administrativeArea2"

-- |
pattern Contest_LevelItem_Locality :: Contest_LevelItem
pattern Contest_LevelItem_Locality = Contest_LevelItem "locality"

-- |
pattern Contest_LevelItem_SUBLOCALITY1 :: Contest_LevelItem
pattern Contest_LevelItem_SUBLOCALITY1 = Contest_LevelItem "subLocality1"

-- |
pattern Contest_LevelItem_SUBLOCALITY2 :: Contest_LevelItem
pattern Contest_LevelItem_SUBLOCALITY2 = Contest_LevelItem "subLocality2"

-- |
pattern Contest_LevelItem_Special :: Contest_LevelItem
pattern Contest_LevelItem_Special = Contest_LevelItem "special"

{-# COMPLETE
  Contest_LevelItem_International,
  Contest_LevelItem_Country,
  Contest_LevelItem_ADMINISTRATIVEAREA1,
  Contest_LevelItem_Regional,
  Contest_LevelItem_ADMINISTRATIVEAREA2,
  Contest_LevelItem_Locality,
  Contest_LevelItem_SUBLOCALITY1,
  Contest_LevelItem_SUBLOCALITY2,
  Contest_LevelItem_Special,
  Contest_LevelItem
  #-}

newtype Contest_RolesItem = Contest_RolesItem {fromContest_RolesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Contest_RolesItem_HeadOfState :: Contest_RolesItem
pattern Contest_RolesItem_HeadOfState = Contest_RolesItem "headOfState"

-- |
pattern Contest_RolesItem_HeadOfGovernment :: Contest_RolesItem
pattern Contest_RolesItem_HeadOfGovernment = Contest_RolesItem "headOfGovernment"

-- |
pattern Contest_RolesItem_DeputyHeadOfGovernment :: Contest_RolesItem
pattern Contest_RolesItem_DeputyHeadOfGovernment = Contest_RolesItem "deputyHeadOfGovernment"

-- |
pattern Contest_RolesItem_GovernmentOfficer :: Contest_RolesItem
pattern Contest_RolesItem_GovernmentOfficer = Contest_RolesItem "governmentOfficer"

-- |
pattern Contest_RolesItem_ExecutiveCouncil :: Contest_RolesItem
pattern Contest_RolesItem_ExecutiveCouncil = Contest_RolesItem "executiveCouncil"

-- |
pattern Contest_RolesItem_LegislatorUpperBody :: Contest_RolesItem
pattern Contest_RolesItem_LegislatorUpperBody = Contest_RolesItem "legislatorUpperBody"

-- |
pattern Contest_RolesItem_LegislatorLowerBody :: Contest_RolesItem
pattern Contest_RolesItem_LegislatorLowerBody = Contest_RolesItem "legislatorLowerBody"

-- |
pattern Contest_RolesItem_HighestCourtJudge :: Contest_RolesItem
pattern Contest_RolesItem_HighestCourtJudge = Contest_RolesItem "highestCourtJudge"

-- |
pattern Contest_RolesItem_Judge :: Contest_RolesItem
pattern Contest_RolesItem_Judge = Contest_RolesItem "judge"

-- |
pattern Contest_RolesItem_SchoolBoard :: Contest_RolesItem
pattern Contest_RolesItem_SchoolBoard = Contest_RolesItem "schoolBoard"

-- |
pattern Contest_RolesItem_SpecialPurposeOfficer :: Contest_RolesItem
pattern Contest_RolesItem_SpecialPurposeOfficer = Contest_RolesItem "specialPurposeOfficer"

-- |
pattern Contest_RolesItem_OtherRole :: Contest_RolesItem
pattern Contest_RolesItem_OtherRole = Contest_RolesItem "otherRole"

{-# COMPLETE
  Contest_RolesItem_HeadOfState,
  Contest_RolesItem_HeadOfGovernment,
  Contest_RolesItem_DeputyHeadOfGovernment,
  Contest_RolesItem_GovernmentOfficer,
  Contest_RolesItem_ExecutiveCouncil,
  Contest_RolesItem_LegislatorUpperBody,
  Contest_RolesItem_LegislatorLowerBody,
  Contest_RolesItem_HighestCourtJudge,
  Contest_RolesItem_Judge,
  Contest_RolesItem_SchoolBoard,
  Contest_RolesItem_SpecialPurposeOfficer,
  Contest_RolesItem_OtherRole,
  Contest_RolesItem
  #-}

-- | The geographic scope of this district. If unspecified the district\'s geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special
newtype ElectoralDistrict_Scope = ElectoralDistrict_Scope {fromElectoralDistrict_Scope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ElectoralDistrict_Scope_Statewide :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Statewide = ElectoralDistrict_Scope "statewide"

-- |
pattern ElectoralDistrict_Scope_Congressional :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Congressional = ElectoralDistrict_Scope "congressional"

-- |
pattern ElectoralDistrict_Scope_StateUpper :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_StateUpper = ElectoralDistrict_Scope "stateUpper"

-- |
pattern ElectoralDistrict_Scope_StateLower :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_StateLower = ElectoralDistrict_Scope "stateLower"

-- |
pattern ElectoralDistrict_Scope_Countywide :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Countywide = ElectoralDistrict_Scope "countywide"

-- |
pattern ElectoralDistrict_Scope_Judicial :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Judicial = ElectoralDistrict_Scope "judicial"

-- |
pattern ElectoralDistrict_Scope_SchoolBoard :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_SchoolBoard = ElectoralDistrict_Scope "schoolBoard"

-- |
pattern ElectoralDistrict_Scope_Citywide :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Citywide = ElectoralDistrict_Scope "citywide"

-- |
pattern ElectoralDistrict_Scope_Special :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Special = ElectoralDistrict_Scope "special"

-- |
pattern ElectoralDistrict_Scope_CountyCouncil :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_CountyCouncil = ElectoralDistrict_Scope "countyCouncil"

-- |
pattern ElectoralDistrict_Scope_Township :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Township = ElectoralDistrict_Scope "township"

-- |
pattern ElectoralDistrict_Scope_Ward :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Ward = ElectoralDistrict_Scope "ward"

-- |
pattern ElectoralDistrict_Scope_CityCouncil :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_CityCouncil = ElectoralDistrict_Scope "cityCouncil"

-- |
pattern ElectoralDistrict_Scope_National :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_National = ElectoralDistrict_Scope "national"

{-# COMPLETE
  ElectoralDistrict_Scope_Statewide,
  ElectoralDistrict_Scope_Congressional,
  ElectoralDistrict_Scope_StateUpper,
  ElectoralDistrict_Scope_StateLower,
  ElectoralDistrict_Scope_Countywide,
  ElectoralDistrict_Scope_Judicial,
  ElectoralDistrict_Scope_SchoolBoard,
  ElectoralDistrict_Scope_Citywide,
  ElectoralDistrict_Scope_Special,
  ElectoralDistrict_Scope_CountyCouncil,
  ElectoralDistrict_Scope_Township,
  ElectoralDistrict_Scope_Ward,
  ElectoralDistrict_Scope_CityCouncil,
  ElectoralDistrict_Scope_National,
  ElectoralDistrict_Scope
  #-}

-- | The feature type for the FeatureProto returned by the geocoder
newtype GeocodingSummary_FeatureType = GeocodingSummary_FeatureType {fromGeocodingSummary_FeatureType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeAny :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAny = GeocodingSummary_FeatureType "typeAny"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeTransportation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransportation = GeocodingSummary_FeatureType "typeTransportation"

-- | A route is any section of road (or rails, etc.) that has a name. This includes city streets as well as highways. Road segments can belong to multiple routes (e.g. El Camino, CA-82).
pattern GeocodingSummary_FeatureType_TypeRoute :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRoute = GeocodingSummary_FeatureType "typeRoute"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDeprecatedHighwayDoNotUse :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDeprecatedHighwayDoNotUse = GeocodingSummary_FeatureType "typeDeprecatedHighwayDoNotUse"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeHighway :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHighway = GeocodingSummary_FeatureType "typeHighway"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY1 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY1 = GeocodingSummary_FeatureType "typeHighway1"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY2 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY2 = GeocodingSummary_FeatureType "typeHighway2"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY3 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY3 = GeocodingSummary_FeatureType "typeHighway3"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY4 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY4 = GeocodingSummary_FeatureType "typeHighway4"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY5 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY5 = GeocodingSummary_FeatureType "typeHighway5"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY6 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY6 = GeocodingSummary_FeatureType "typeHighway6"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY7 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY7 = GeocodingSummary_FeatureType "typeHighway7"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY8 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY8 = GeocodingSummary_FeatureType "typeHighway8"

-- |
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY9 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEHIGHWAY9 = GeocodingSummary_FeatureType "typeHighway9"

-- | A designated bicycle route, whose segments may consist of any combination of bicycle paths, bicycle lanes, or city streets.
pattern GeocodingSummary_FeatureType_TypeBicycleRoute :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBicycleRoute = GeocodingSummary_FeatureType "typeBicycleRoute"

-- | A designated trail, which may consist of paved walkways, dirt paths, fire road, streets or highways, etc.
pattern GeocodingSummary_FeatureType_TypeTrail :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTrail = GeocodingSummary_FeatureType "typeTrail"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeSegment :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSegment = GeocodingSummary_FeatureType "typeSegment"

-- |
pattern GeocodingSummary_FeatureType_TypeRoad :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRoad = GeocodingSummary_FeatureType "typeRoad"

-- | Railroads use several different incompatible track types.
pattern GeocodingSummary_FeatureType_TypeRailway :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRailway = GeocodingSummary_FeatureType "typeRailway"

-- |
pattern GeocodingSummary_FeatureType_TypeStandardTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeStandardTrack = GeocodingSummary_FeatureType "typeStandardTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeJrTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJrTrack = GeocodingSummary_FeatureType "typeJrTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeNarrowTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNarrowTrack = GeocodingSummary_FeatureType "typeNarrowTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeMonorailTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMonorailTrack = GeocodingSummary_FeatureType "typeMonorailTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeSubwayTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubwayTrack = GeocodingSummary_FeatureType "typeSubwayTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeLightRailTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLightRailTrack = GeocodingSummary_FeatureType "typeLightRailTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeBroadTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBroadTrack = GeocodingSummary_FeatureType "typeBroadTrack"

-- |
pattern GeocodingSummary_FeatureType_TypeHighSpeedRail :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHighSpeedRail = GeocodingSummary_FeatureType "typeHighSpeedRail"

-- | Tracks for streetcars, cable-cars, etc. Ferries are services that are part of the road network but are not roads. They typically involve fares and scheduled departure times.
pattern GeocodingSummary_FeatureType_TypeTrolleyTrack :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTrolleyTrack = GeocodingSummary_FeatureType "typeTrolleyTrack"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeFerry :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFerry = GeocodingSummary_FeatureType "typeFerry"

-- | The vast majority of ferries are ferry boats.
pattern GeocodingSummary_FeatureType_TypeFerryBoat :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFerryBoat = GeocodingSummary_FeatureType "typeFerryBoat"

-- | Also called a \"car transport\", a ferry train is a rail service that carries passengers and their vehicles across undrivable terrain. The Channel Tunnel (\"Chunnel\") is the most famous example, but they are also common in the Alps where they connect neighboring valleys otherwise separated by impassable mountains.
pattern GeocodingSummary_FeatureType_TypeFerryTrain :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFerryTrain = GeocodingSummary_FeatureType "typeFerryTrain"

-- | Any plausible 1-dimensional path through a 2+ dimensional space, for the purposes of making graph-search-based routing possible. Such segments can be used to model paths through parking lots, squares, floors of buildings and other areas.
pattern GeocodingSummary_FeatureType_TypeVirtualSegment :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeVirtualSegment = GeocodingSummary_FeatureType "typeVirtualSegment"

-- | An intersection consists of a collection of segments that terminate at the same location. This is topological definition: it may not match what a typical user would think of as an \"intersection\". See TYPE/INTERSECTION/GROUP, below, for more information. Each segment terminating at an intersection has an \"endpoint type\" that specifies how that segment is terminated: stop sign, yield sign, three-way light, etc.
pattern GeocodingSummary_FeatureType_TypeIntersection :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIntersection = GeocodingSummary_FeatureType "typeIntersection"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeTransit :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransit = GeocodingSummary_FeatureType "typeTransit"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTransitStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitStation = GeocodingSummary_FeatureType "typeTransitStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBusStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBusStation = GeocodingSummary_FeatureType "typeBusStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTramwayStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTramwayStation = GeocodingSummary_FeatureType "typeTramwayStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTrainStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTrainStation = GeocodingSummary_FeatureType "typeTrainStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSubwayStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubwayStation = GeocodingSummary_FeatureType "typeSubwayStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeFerryTerminal :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFerryTerminal = GeocodingSummary_FeatureType "typeFerryTerminal"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeAirport :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAirport = GeocodingSummary_FeatureType "typeAirport"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeAirportCivil :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAirportCivil = GeocodingSummary_FeatureType "typeAirportCivil"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeAirportMilitary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAirportMilitary = GeocodingSummary_FeatureType "typeAirportMilitary"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeAirportMixed :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAirportMixed = GeocodingSummary_FeatureType "typeAirportMixed"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHeliport :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHeliport = GeocodingSummary_FeatureType "typeHeliport"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSeaplaneBase :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSeaplaneBase = GeocodingSummary_FeatureType "typeSeaplaneBase"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeAirstrip :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAirstrip = GeocodingSummary_FeatureType "typeAirstrip"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCableCarStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCableCarStation = GeocodingSummary_FeatureType "typeCableCarStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGondolaLiftStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGondolaLiftStation = GeocodingSummary_FeatureType "typeGondolaLiftStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeFunicularStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFunicularStation = GeocodingSummary_FeatureType "typeFunicularStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSpecialStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSpecialStation = GeocodingSummary_FeatureType "typeSpecialStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHorseCarriageStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHorseCarriageStation = GeocodingSummary_FeatureType "typeHorseCarriageStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeMonorailStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMonorailStation = GeocodingSummary_FeatureType "typeMonorailStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSeaport :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSeaport = GeocodingSummary_FeatureType "typeSeaport"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTransitStop :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitStop = GeocodingSummary_FeatureType "typeTransitStop"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTransitTrip :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitTrip = GeocodingSummary_FeatureType "typeTransitTrip"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTransitDeparture :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitDeparture = GeocodingSummary_FeatureType "typeTransitDeparture"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTransitLeg :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitLeg = GeocodingSummary_FeatureType "typeTransitLeg"

-- | A transit line is a collection of transit legs, associated with some invariant properties of the trips that run over the legs. See also transitline.proto
pattern GeocodingSummary_FeatureType_TypeTransitLine :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitLine = GeocodingSummary_FeatureType "typeTransitLine"

-- | A transit agency operates a number of lines, typically all in the same city, region or country. See also transitagency.proto
pattern GeocodingSummary_FeatureType_TypeTransitAgency :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitAgency = GeocodingSummary_FeatureType "typeTransitAgency"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTransitTransfer :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransitTransfer = GeocodingSummary_FeatureType "typeTransitTransfer"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeSegmentPath :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSegmentPath = GeocodingSummary_FeatureType "typeSegmentPath"

-- | Road sign features have names, point geometry, etc. They also have segment_path data (see below) which lists the segments that refer to the sign. See segment.proto for the reference from the segment to the road sign.
pattern GeocodingSummary_FeatureType_TypeRoadSign :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRoadSign = GeocodingSummary_FeatureType "typeRoadSign"

-- | Our TYPE/INTERSECTION feature, above, models the point where one or more segments terminate. This is topological definition: it may not match what a typical user would think of as an \"intersection\". Consider the intersections where Hayes, Market, Larkin, and 9th Street meet near (37.77765, -122.41638) in San Francisco. Most people would probably consider this a single feature, even though we model it as four separate TYPE/INTERSECTION features. This TYPE/INTERSECTION/GROUP is used to model the user\'s concept of a complex intersection.
pattern GeocodingSummary_FeatureType_TypeIntersectionGroup :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIntersectionGroup = GeocodingSummary_FeatureType "typeIntersectionGroup"

-- | RESERVED
pattern GeocodingSummary_FeatureType_TypePathway :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePathway = GeocodingSummary_FeatureType "typePathway"

-- | A restriction group describes a set of segment restrictions that belong together and have a name or an associated event. See also restriction_group.proto
pattern GeocodingSummary_FeatureType_TypeRestrictionGroup :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRestrictionGroup = GeocodingSummary_FeatureType "typeRestrictionGroup"

-- | A toll cluster is either a single point on a segment (represented as a point at the end of the segment that has ENDPOINT/TOLL/BOOTH set) or a group of points on various road segments in MapFacts that represents one or more lanes passing through a toll fixture that all go to the same routing destination. Each toll cluster should have at most a single price per payment method. E.g. {CASH = $5, PASS = $1}. Note: If a toll fixture has different prices for multiple routing destinations, drivers need to be in the correct lane before passing through the toll fixture and hence such a fixture is represented by multiple toll clusters. A toll cluster does not necessarily represent a real-world entity, e.g. a particular plaza\/structure as perceived by humans. This is because a plaza can be represented by more than one toll cluster. We require toll clusters to have names, but they might be non-unique. For example, a plaza might be represented by multiple toll clusters that may have the same plaza name. For further
-- details, please see go\/toll-cluster-schema.
pattern GeocodingSummary_FeatureType_TypeTollCluster :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTollCluster = GeocodingSummary_FeatureType "typeTollCluster"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypePolitical :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePolitical = GeocodingSummary_FeatureType "typePolitical"

-- |
pattern GeocodingSummary_FeatureType_TypeCountry :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCountry = GeocodingSummary_FeatureType "typeCountry"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeAdministrativeArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAdministrativeArea = GeocodingSummary_FeatureType "typeAdministrativeArea"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA1 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA1 = GeocodingSummary_FeatureType "typeAdministrativeArea1"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeUsState :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUsState = GeocodingSummary_FeatureType "typeUsState"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGbCountry :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGbCountry = GeocodingSummary_FeatureType "typeGbCountry"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpTodoufuken :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpTodoufuken = GeocodingSummary_FeatureType "typeJpTodoufuken"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA2 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA2 = GeocodingSummary_FeatureType "typeAdministrativeArea2"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGbFormerPostalCounty :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGbFormerPostalCounty = GeocodingSummary_FeatureType "typeGbFormerPostalCounty"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGbTraditionalCounty :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGbTraditionalCounty = GeocodingSummary_FeatureType "typeGbTraditionalCounty"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA3 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA3 = GeocodingSummary_FeatureType "typeAdministrativeArea3"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA4 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA4 = GeocodingSummary_FeatureType "typeAdministrativeArea4"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA5 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA5 = GeocodingSummary_FeatureType "typeAdministrativeArea5"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA6 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA6 = GeocodingSummary_FeatureType "typeAdministrativeArea6"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA7 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA7 = GeocodingSummary_FeatureType "typeAdministrativeArea7"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA8 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA8 = GeocodingSummary_FeatureType "typeAdministrativeArea8"

-- |
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA9 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA9 = GeocodingSummary_FeatureType "typeAdministrativeArea9"

-- | e.g. Silicon Valley
pattern GeocodingSummary_FeatureType_TypeColloquialArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeColloquialArea = GeocodingSummary_FeatureType "typeColloquialArea"

-- | A reservation is a region collectively held or governed by indigenous people and officially recognized by the country’s government at the federal or state level. A reservation may be fully contained within an administrative feature or partially contained within two or more. These regions are referred to by different categorical names depending on country and even by state, including but not limited to: “Indian Reservations”, “Indian Reserves”, “Land Claim Settlement Lands”, “Indian Lands”, “Treaty Lands”, “Indigenous Territories”, etc. A reservation is not a historic indigenous territory boundary or a region which has applied for land rights but has not yet received official recognition.
pattern GeocodingSummary_FeatureType_TypeReservation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReservation = GeocodingSummary_FeatureType "typeReservation"

-- |
pattern GeocodingSummary_FeatureType_TypeLocality :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLocality = GeocodingSummary_FeatureType "typeLocality"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGbPostTown :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGbPostTown = GeocodingSummary_FeatureType "typeGbPostTown"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpGun :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpGun = GeocodingSummary_FeatureType "typeJpGun"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpShikuchouson :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpShikuchouson = GeocodingSummary_FeatureType "typeJpShikuchouson"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpSubShikuchouson :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpSubShikuchouson = GeocodingSummary_FeatureType "typeJpSubShikuchouson"

-- | An entity widely considered to be a city, that may itself be made up of smaller political entities, some of which are cities\/towns\/villages themselves. For example, the colloquial view of Sydney, Australia actually comprises many smaller cities, but is regarded as a city itself. This type is not suitable for modeling official metro-\/micropolitan or other statistical areas.
pattern GeocodingSummary_FeatureType_TypeColloquialCity :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeColloquialCity = GeocodingSummary_FeatureType "typeColloquialCity"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeSublocality :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSublocality = GeocodingSummary_FeatureType "typeSublocality"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeUsBorough :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUsBorough = GeocodingSummary_FeatureType "typeUsBorough"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGbDependentLocality :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGbDependentLocality = GeocodingSummary_FeatureType "typeGbDependentLocality"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpOoaza :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpOoaza = GeocodingSummary_FeatureType "typeJpOoaza"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpKoaza :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpKoaza = GeocodingSummary_FeatureType "typeJpKoaza"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpGaiku :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpGaiku = GeocodingSummary_FeatureType "typeJpGaiku"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGbDoubleDependentLocality :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGbDoubleDependentLocality = GeocodingSummary_FeatureType "typeGbDoubleDependentLocality"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpChiban :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpChiban = GeocodingSummary_FeatureType "typeJpChiban"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeJpEdaban :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeJpEdaban = GeocodingSummary_FeatureType "typeJpEdaban"

-- |
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY1 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY1 = GeocodingSummary_FeatureType "typeSublocality1"

-- |
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY2 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY2 = GeocodingSummary_FeatureType "typeSublocality2"

-- |
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY3 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY3 = GeocodingSummary_FeatureType "typeSublocality3"

-- |
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY4 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY4 = GeocodingSummary_FeatureType "typeSublocality4"

-- |
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY5 :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TYPESUBLOCALITY5 = GeocodingSummary_FeatureType "typeSublocality5"

-- |
pattern GeocodingSummary_FeatureType_TypeNeighborhood :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNeighborhood = GeocodingSummary_FeatureType "typeNeighborhood"

-- |
pattern GeocodingSummary_FeatureType_TypeConstituency :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeConstituency = GeocodingSummary_FeatureType "typeConstituency"

-- | Designated Market Areas (or DMAs) are used by marketing and ratings companies (such as the Nielsen Media Research company) to describe geographical regions (such as the greater New York metropolitan area) that are covered by a set of television stations. (See http:\/\/www.schooldata.com\/pdfs\/DMA.pdf) In the United States, DMAs should have a DMA numeric ID name, tagged with the FLAG/DESIGNATED/MARKET/AREA/ID flag.
pattern GeocodingSummary_FeatureType_TypeDesignatedMarketArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDesignatedMarketArea = GeocodingSummary_FeatureType "typeDesignatedMarketArea"

-- |
pattern GeocodingSummary_FeatureType_TypeSchoolDistrict :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSchoolDistrict = GeocodingSummary_FeatureType "typeSchoolDistrict"

-- |
pattern GeocodingSummary_FeatureType_TypeLandParcel :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLandParcel = GeocodingSummary_FeatureType "typeLandParcel"

-- | Eventually we\'ll have more data for disputed areas (e.g., who makes claims on the area, who has de facto control, etc.). For the moment, we just define a type so we can simply mark areas as disputed.
pattern GeocodingSummary_FeatureType_TypeDisputedArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDisputedArea = GeocodingSummary_FeatureType "typeDisputedArea"

-- | Boundaries representing the jurisdiction of a particular police station.
pattern GeocodingSummary_FeatureType_TypePoliceJurisdiction :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePoliceJurisdiction = GeocodingSummary_FeatureType "typePoliceJurisdiction"

-- | An area used for aggregating statistical data, eg, a census region. Note that TYPE/STATISTICAL/AREA has a third nibble so we can add an abstract parent above it later if need be at 0x2E1 (and rename TYPE/STATISTICAL/AREA as TYPE/STATISTICAL/AREA1).
pattern GeocodingSummary_FeatureType_TypeStatisticalArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeStatisticalArea = GeocodingSummary_FeatureType "typeStatisticalArea"

-- | RESERVED
pattern GeocodingSummary_FeatureType_TypeConstituencyFuture :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeConstituencyFuture = GeocodingSummary_FeatureType "typeConstituencyFuture"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePark :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePark = GeocodingSummary_FeatureType "typePark"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGolfCourse :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfCourse = GeocodingSummary_FeatureType "typeGolfCourse"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeLocalPark :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLocalPark = GeocodingSummary_FeatureType "typeLocalPark"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeNationalPark :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNationalPark = GeocodingSummary_FeatureType "typeNationalPark"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeUsNationalPark :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUsNationalPark = GeocodingSummary_FeatureType "typeUsNationalPark"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeUsNationalMonument :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUsNationalMonument = GeocodingSummary_FeatureType "typeUsNationalMonument"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeNationalForest :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNationalForest = GeocodingSummary_FeatureType "typeNationalForest"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeProvincialPark :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeProvincialPark = GeocodingSummary_FeatureType "typeProvincialPark"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeProvincialForest :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeProvincialForest = GeocodingSummary_FeatureType "typeProvincialForest"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCampgrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCampgrounds = GeocodingSummary_FeatureType "typeCampgrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHikingArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHikingArea = GeocodingSummary_FeatureType "typeHikingArea"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBusiness :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBusiness = GeocodingSummary_FeatureType "typeBusiness"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGovernment :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGovernment = GeocodingSummary_FeatureType "typeGovernment"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBorderCrossing :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBorderCrossing = GeocodingSummary_FeatureType "typeBorderCrossing"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCityHall :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCityHall = GeocodingSummary_FeatureType "typeCityHall"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCourthouse :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCourthouse = GeocodingSummary_FeatureType "typeCourthouse"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEmbassy :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEmbassy = GeocodingSummary_FeatureType "typeEmbassy"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeLibrary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLibrary = GeocodingSummary_FeatureType "typeLibrary"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSchool :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSchool = GeocodingSummary_FeatureType "typeSchool"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeUniversity :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUniversity = GeocodingSummary_FeatureType "typeUniversity"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEmergency :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEmergency = GeocodingSummary_FeatureType "typeEmergency"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHospital :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHospital = GeocodingSummary_FeatureType "typeHospital"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePharmacy :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePharmacy = GeocodingSummary_FeatureType "typePharmacy"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePolice :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePolice = GeocodingSummary_FeatureType "typePolice"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeFire :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFire = GeocodingSummary_FeatureType "typeFire"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDoctor :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDoctor = GeocodingSummary_FeatureType "typeDoctor"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDentist :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDentist = GeocodingSummary_FeatureType "typeDentist"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeVeterinarian :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeVeterinarian = GeocodingSummary_FeatureType "typeVeterinarian"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTravelService :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTravelService = GeocodingSummary_FeatureType "typeTravelService"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeLodging :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLodging = GeocodingSummary_FeatureType "typeLodging"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeRestaurant :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRestaurant = GeocodingSummary_FeatureType "typeRestaurant"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGasStation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGasStation = GeocodingSummary_FeatureType "typeGasStation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeParking :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeParking = GeocodingSummary_FeatureType "typeParking"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePostOffice :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePostOffice = GeocodingSummary_FeatureType "typePostOffice"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeRestArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRestArea = GeocodingSummary_FeatureType "typeRestArea"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCashMachine :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCashMachine = GeocodingSummary_FeatureType "typeCashMachine"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCarRental :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCarRental = GeocodingSummary_FeatureType "typeCarRental"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCarRepair :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCarRepair = GeocodingSummary_FeatureType "typeCarRepair"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeShopping :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeShopping = GeocodingSummary_FeatureType "typeShopping"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGrocery :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGrocery = GeocodingSummary_FeatureType "typeGrocery"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTouristDestination :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTouristDestination = GeocodingSummary_FeatureType "typeTouristDestination"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEcoTouristDestination :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEcoTouristDestination = GeocodingSummary_FeatureType "typeEcoTouristDestination"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBirdWatching :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBirdWatching = GeocodingSummary_FeatureType "typeBirdWatching"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeFishing :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFishing = GeocodingSummary_FeatureType "typeFishing"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHunting :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHunting = GeocodingSummary_FeatureType "typeHunting"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeNatureReserve :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNatureReserve = GeocodingSummary_FeatureType "typeNatureReserve"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeTemple :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTemple = GeocodingSummary_FeatureType "typeTemple"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeChurch :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeChurch = GeocodingSummary_FeatureType "typeChurch"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGurudwara :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGurudwara = GeocodingSummary_FeatureType "typeGurudwara"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHinduTemple :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHinduTemple = GeocodingSummary_FeatureType "typeHinduTemple"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeMosque :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMosque = GeocodingSummary_FeatureType "typeMosque"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSynagogue :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSynagogue = GeocodingSummary_FeatureType "typeSynagogue"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeStadium :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeStadium = GeocodingSummary_FeatureType "typeStadium"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBar :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBar = GeocodingSummary_FeatureType "typeBar"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeMovieRental :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMovieRental = GeocodingSummary_FeatureType "typeMovieRental"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCoffee :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCoffee = GeocodingSummary_FeatureType "typeCoffee"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGolf :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolf = GeocodingSummary_FeatureType "typeGolf"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBank :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBank = GeocodingSummary_FeatureType "typeBank"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDoodle :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDoodle = GeocodingSummary_FeatureType "typeDoodle"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGrounds = GeocodingSummary_FeatureType "typeGrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeAirportGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAirportGrounds = GeocodingSummary_FeatureType "typeAirportGrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBuildingGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBuildingGrounds = GeocodingSummary_FeatureType "typeBuildingGrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCemetery :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCemetery = GeocodingSummary_FeatureType "typeCemetery"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHospitalGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHospitalGrounds = GeocodingSummary_FeatureType "typeHospitalGrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeIndustrial :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIndustrial = GeocodingSummary_FeatureType "typeIndustrial"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeMilitary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMilitary = GeocodingSummary_FeatureType "typeMilitary"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeShoppingCenter :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeShoppingCenter = GeocodingSummary_FeatureType "typeShoppingCenter"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSportsComplex :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSportsComplex = GeocodingSummary_FeatureType "typeSportsComplex"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeUniversityGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUniversityGrounds = GeocodingSummary_FeatureType "typeUniversityGrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDeprecatedTarmac :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDeprecatedTarmac = GeocodingSummary_FeatureType "typeDeprecatedTarmac"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEnclosedTrafficArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEnclosedTrafficArea = GeocodingSummary_FeatureType "typeEnclosedTrafficArea"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeParkingLot :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeParkingLot = GeocodingSummary_FeatureType "typeParkingLot"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeParkingGarage :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeParkingGarage = GeocodingSummary_FeatureType "typeParkingGarage"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeOffRoadArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeOffRoadArea = GeocodingSummary_FeatureType "typeOffRoadArea"

-- | A line representing the boundary between two features. See border.proto for details.
pattern GeocodingSummary_FeatureType_TypeBorder :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBorder = GeocodingSummary_FeatureType "typeBorder"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeBuilding :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBuilding = GeocodingSummary_FeatureType "typeBuilding"

-- | An association of a point with an address, with no other information.
pattern GeocodingSummary_FeatureType_TypeGeocodedAddress :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGeocodedAddress = GeocodingSummary_FeatureType "typeGeocodedAddress"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeNaturalFeature :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNaturalFeature = GeocodingSummary_FeatureType "typeNaturalFeature"

-- | Expanses of land that share common surface attributes. These areas would look more or less uniform from a high altitude.
pattern GeocodingSummary_FeatureType_TypeTerrain :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTerrain = GeocodingSummary_FeatureType "typeTerrain"

-- |
pattern GeocodingSummary_FeatureType_TypeSand :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSand = GeocodingSummary_FeatureType "typeSand"

-- |
pattern GeocodingSummary_FeatureType_TypeBeach :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBeach = GeocodingSummary_FeatureType "typeBeach"

-- |
pattern GeocodingSummary_FeatureType_TypeDune :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDune = GeocodingSummary_FeatureType "typeDune"

-- |
pattern GeocodingSummary_FeatureType_TypeRocky :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRocky = GeocodingSummary_FeatureType "typeRocky"

-- |
pattern GeocodingSummary_FeatureType_TypeIce :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIce = GeocodingSummary_FeatureType "typeIce"

-- |
pattern GeocodingSummary_FeatureType_TypeGlacier :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGlacier = GeocodingSummary_FeatureType "typeGlacier"

-- | Terrain that looks populated.
pattern GeocodingSummary_FeatureType_TypeBuiltUpArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBuiltUpArea = GeocodingSummary_FeatureType "typeBuiltUpArea"

-- | Terrain that is covered in vegetation.
pattern GeocodingSummary_FeatureType_TypeVegetation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeVegetation = GeocodingSummary_FeatureType "typeVegetation"

-- |
pattern GeocodingSummary_FeatureType_TypeShrubbery :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeShrubbery = GeocodingSummary_FeatureType "typeShrubbery"

-- |
pattern GeocodingSummary_FeatureType_TypeWoods :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWoods = GeocodingSummary_FeatureType "typeWoods"

-- |
pattern GeocodingSummary_FeatureType_TypeAgricultural :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAgricultural = GeocodingSummary_FeatureType "typeAgricultural"

-- |
pattern GeocodingSummary_FeatureType_TypeGrassland :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGrassland = GeocodingSummary_FeatureType "typeGrassland"

-- |
pattern GeocodingSummary_FeatureType_TypeTundra :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTundra = GeocodingSummary_FeatureType "typeTundra"

-- |
pattern GeocodingSummary_FeatureType_TypeDesert :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDesert = GeocodingSummary_FeatureType "typeDesert"

-- | A flat expanse of salt left by the evaporation of a body of salt water.
pattern GeocodingSummary_FeatureType_TypeSaltFlat :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSaltFlat = GeocodingSummary_FeatureType "typeSaltFlat"

-- | Features can be TYPE/WATER if we don\'t have enough information to properly type the body of water. TYPE/WATER is also used as the type for child features that compose a TYPE_RIVER feature.
pattern GeocodingSummary_FeatureType_TypeWater :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWater = GeocodingSummary_FeatureType "typeWater"

-- | One of the large salt-water bodies that covers most of the globe.
pattern GeocodingSummary_FeatureType_TypeOcean :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeOcean = GeocodingSummary_FeatureType "typeOcean"

-- | An ocean subdivision formed by a coastal indentation. Includes coves and gulfs.
pattern GeocodingSummary_FeatureType_TypeBay :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBay = GeocodingSummary_FeatureType "typeBay"

-- | An open body of water formed by a slight coastal indentation.
pattern GeocodingSummary_FeatureType_TypeBight :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBight = GeocodingSummary_FeatureType "typeBight"

-- |
pattern GeocodingSummary_FeatureType_TypeLagoon :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLagoon = GeocodingSummary_FeatureType "typeLagoon"

-- | An ocean subdivision more or less confined by land and islands.
pattern GeocodingSummary_FeatureType_TypeSea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSea = GeocodingSummary_FeatureType "typeSea"

-- | A long narrow ocean subdivision. Includes sounds.
pattern GeocodingSummary_FeatureType_TypeStrait :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeStrait = GeocodingSummary_FeatureType "typeStrait"

-- |
pattern GeocodingSummary_FeatureType_TypeInlet :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeInlet = GeocodingSummary_FeatureType "typeInlet"

-- |
pattern GeocodingSummary_FeatureType_TypeFjord :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFjord = GeocodingSummary_FeatureType "typeFjord"

-- | An inland body of standing water.
pattern GeocodingSummary_FeatureType_TypeLake :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLake = GeocodingSummary_FeatureType "typeLake"

-- | A lake that dries up part of the year.
pattern GeocodingSummary_FeatureType_TypeSeasonalLake :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSeasonalLake = GeocodingSummary_FeatureType "typeSeasonalLake"

-- | An artificial body of water, possibly created by a dam, often used for irrigation or house use.
pattern GeocodingSummary_FeatureType_TypeReservoir :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReservoir = GeocodingSummary_FeatureType "typeReservoir"

-- |
pattern GeocodingSummary_FeatureType_TypePond :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePond = GeocodingSummary_FeatureType "typePond"

-- | An inland body of moving water, or parts associated with it in which there is little or no current (backwater).
pattern GeocodingSummary_FeatureType_TypeRiver :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRiver = GeocodingSummary_FeatureType "typeRiver"

-- |
pattern GeocodingSummary_FeatureType_TypeRapids :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRapids = GeocodingSummary_FeatureType "typeRapids"

-- | A branch which flows away from the main river. Includes deltas.
pattern GeocodingSummary_FeatureType_TypeDistributary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDistributary = GeocodingSummary_FeatureType "typeDistributary"

-- | A place where two or more rivers join.
pattern GeocodingSummary_FeatureType_TypeConfluence :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeConfluence = GeocodingSummary_FeatureType "typeConfluence"

-- |
pattern GeocodingSummary_FeatureType_TypeWaterfall :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWaterfall = GeocodingSummary_FeatureType "typeWaterfall"

-- | A place where ground water flows naturally out of the ground.
pattern GeocodingSummary_FeatureType_TypeSpring :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSpring = GeocodingSummary_FeatureType "typeSpring"

-- |
pattern GeocodingSummary_FeatureType_TypeGeyser :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGeyser = GeocodingSummary_FeatureType "typeGeyser"

-- |
pattern GeocodingSummary_FeatureType_TypeHotSpring :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHotSpring = GeocodingSummary_FeatureType "typeHotSpring"

-- | A river that dries up part of the year.
pattern GeocodingSummary_FeatureType_TypeSeasonalRiver :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSeasonalRiver = GeocodingSummary_FeatureType "typeSeasonalRiver"

-- | A dry riverbed that occasionally receives flashfloods.
pattern GeocodingSummary_FeatureType_TypeWadi :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWadi = GeocodingSummary_FeatureType "typeWadi"

-- | A place at the end of a river where fresh and salt water mix. Includes tidal creeks and limans.
pattern GeocodingSummary_FeatureType_TypeEstuary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEstuary = GeocodingSummary_FeatureType "typeEstuary"

-- | Land that is usually flooded. Includes bogs, marshes, flats, moors, and swamps.
pattern GeocodingSummary_FeatureType_TypeWetland :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWetland = GeocodingSummary_FeatureType "typeWetland"

-- |
pattern GeocodingSummary_FeatureType_TypeWaterNavigation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWaterNavigation = GeocodingSummary_FeatureType "typeWaterNavigation"

-- | A shallow place where water may be waded through.
pattern GeocodingSummary_FeatureType_TypeFord :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFord = GeocodingSummary_FeatureType "typeFord"

-- | A narrow passage used by boats. Normally artificial.
pattern GeocodingSummary_FeatureType_TypeCanal :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCanal = GeocodingSummary_FeatureType "typeCanal"

-- | A deep place near a shore where ships commonly drop anchor.
pattern GeocodingSummary_FeatureType_TypeHarbor :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHarbor = GeocodingSummary_FeatureType "typeHarbor"

-- | A deep part in a body of water that is suitable for navigation. Includes narrows.
pattern GeocodingSummary_FeatureType_TypeChannel :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeChannel = GeocodingSummary_FeatureType "typeChannel"

-- | Rocks, coral, sandbars, or other features beneath the surface of the water that pose a hazard to passing ships. Includes shoals.
pattern GeocodingSummary_FeatureType_TypeReef :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReef = GeocodingSummary_FeatureType "typeReef"

-- | A relatively shallow zone of the back reef located closest to the shore, that may be exposed at low tide.
pattern GeocodingSummary_FeatureType_TypeReefFlat :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReefFlat = GeocodingSummary_FeatureType "typeReefFlat"

-- | A small section of rocks, coral, sandbars, or other features beneath the surface of the water that forms part of a reef.
pattern GeocodingSummary_FeatureType_TypeReefGrowth :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReefGrowth = GeocodingSummary_FeatureType "typeReefGrowth"

-- | The full extent of the reef complex.
pattern GeocodingSummary_FeatureType_TypeReefExtent :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReefExtent = GeocodingSummary_FeatureType "typeReefExtent"

-- | A submerged rock in the water.
pattern GeocodingSummary_FeatureType_TypeReefRockSubmerged :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeReefRockSubmerged = GeocodingSummary_FeatureType "typeReefRockSubmerged"

-- | Man-made (and sometimes natural) channels used to move water. This type was used for both dam structures and water that is hold back by dams. We should use TYPE/COMPOUND/BUILDING for dam structures and TYPE_RESERVOIR for water.
pattern GeocodingSummary_FeatureType_TypeIrrigation :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIrrigation = GeocodingSummary_FeatureType "typeIrrigation"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDam :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDam = GeocodingSummary_FeatureType "typeDam"

-- |
pattern GeocodingSummary_FeatureType_TypeDrinkingWater :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDrinkingWater = GeocodingSummary_FeatureType "typeDrinkingWater"

-- | Includes overfalls.
pattern GeocodingSummary_FeatureType_TypeCurrent :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCurrent = GeocodingSummary_FeatureType "typeCurrent"

-- | A natural depression filled with water where animals come to drink.
pattern GeocodingSummary_FeatureType_TypeWateringHole :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWateringHole = GeocodingSummary_FeatureType "typeWateringHole"

-- | ABSTRACT This type is incorrectly under TYPE/TECTONIC instead of TYPE/WATER. This was a mistake and is now fixed. See TYPE/WATERING/HOLE for the replacement.
pattern GeocodingSummary_FeatureType_TypeTectonic :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTectonic = GeocodingSummary_FeatureType "typeTectonic"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeWateringHoleDeprecated :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWateringHoleDeprecated = GeocodingSummary_FeatureType "typeWateringHoleDeprecated"

-- |
pattern GeocodingSummary_FeatureType_TypeVolcano :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeVolcano = GeocodingSummary_FeatureType "typeVolcano"

-- |
pattern GeocodingSummary_FeatureType_TypeLavaField :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLavaField = GeocodingSummary_FeatureType "typeLavaField"

-- |
pattern GeocodingSummary_FeatureType_TypeFissure :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFissure = GeocodingSummary_FeatureType "typeFissure"

-- |
pattern GeocodingSummary_FeatureType_TypeFault :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeFault = GeocodingSummary_FeatureType "typeFault"

-- |
pattern GeocodingSummary_FeatureType_TypeLandMass :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLandMass = GeocodingSummary_FeatureType "typeLandMass"

-- |
pattern GeocodingSummary_FeatureType_TypeContinent :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeContinent = GeocodingSummary_FeatureType "typeContinent"

-- |
pattern GeocodingSummary_FeatureType_TypeIsland :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIsland = GeocodingSummary_FeatureType "typeIsland"

-- |
pattern GeocodingSummary_FeatureType_TypeAtoll :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAtoll = GeocodingSummary_FeatureType "typeAtoll"

-- | An exposed rock in the water.
pattern GeocodingSummary_FeatureType_TypeOceanRockExposed :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeOceanRockExposed = GeocodingSummary_FeatureType "typeOceanRockExposed"

-- | A small, low-elevation, sandy island formed on the surface of coral reefs
pattern GeocodingSummary_FeatureType_TypeCay :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCay = GeocodingSummary_FeatureType "typeCay"

-- | A stretch of land projecting into water. Includes capes and spits.
pattern GeocodingSummary_FeatureType_TypePeninsula :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePeninsula = GeocodingSummary_FeatureType "typePeninsula"

-- | A strip of land connecting two larger land masses, such as continents.
pattern GeocodingSummary_FeatureType_TypeIsthmus :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeIsthmus = GeocodingSummary_FeatureType "typeIsthmus"

-- | Features that are notable for being high (or low), or for having sudden changes in elevation. These features might have an \"elevation\" extension to specify the actual elevation. See ElevationProto for more information.
pattern GeocodingSummary_FeatureType_TypeElevated :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeElevated = GeocodingSummary_FeatureType "typeElevated"

-- | Elevations that have a distinctive peak.
pattern GeocodingSummary_FeatureType_TypePeak :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePeak = GeocodingSummary_FeatureType "typePeak"

-- | A peak or ridge of a mountain that extends through a glacier.
pattern GeocodingSummary_FeatureType_TypeNunatak :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeNunatak = GeocodingSummary_FeatureType "typeNunatak"

-- | A subsidiary peak of a mountain.
pattern GeocodingSummary_FeatureType_TypeSpur :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSpur = GeocodingSummary_FeatureType "typeSpur"

-- | A route over an otherwise difficult to traverse feature. Includes saddle.
pattern GeocodingSummary_FeatureType_TypePass :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePass = GeocodingSummary_FeatureType "typePass"

-- | Elevations that are flat on top. Includes mesas and buttes.
pattern GeocodingSummary_FeatureType_TypePlateau :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePlateau = GeocodingSummary_FeatureType "typePlateau"

-- | A ridge is a geographical feature consisting of a chain of mountains or hills that form a continuous elevated crest with a single ridgeline for some distance.
pattern GeocodingSummary_FeatureType_TypeRidge :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRidge = GeocodingSummary_FeatureType "typeRidge"

-- | Steep declines usually carved by erosion. Includes valleys, canyons, ditches, and gorges.
pattern GeocodingSummary_FeatureType_TypeRavine :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRavine = GeocodingSummary_FeatureType "typeRavine"

-- | Depressions causes by impact, explosion, and sometimes sink-holes.
pattern GeocodingSummary_FeatureType_TypeCrater :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCrater = GeocodingSummary_FeatureType "typeCrater"

-- | Topography formed on limestone and gypsum by dissolution with sinkholes, caves, etc.
pattern GeocodingSummary_FeatureType_TypeKarst :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeKarst = GeocodingSummary_FeatureType "typeKarst"

-- | A vertical or nearly vertical slope. Includes escarpments.
pattern GeocodingSummary_FeatureType_TypeCliff :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCliff = GeocodingSummary_FeatureType "typeCliff"

-- | An elevated place that is notable for having a good view. Raster digital elevation data. This is not a type to be used by providers or consumed by clients.
pattern GeocodingSummary_FeatureType_TypeVista :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeVista = GeocodingSummary_FeatureType "typeVista"

-- | RESERVED
pattern GeocodingSummary_FeatureType_TypeDigitalElevationModel :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDigitalElevationModel = GeocodingSummary_FeatureType "typeDigitalElevationModel"

-- | Land along streams higher than the alluvial plain or stream terrace.
pattern GeocodingSummary_FeatureType_TypeUpland :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUpland = GeocodingSummary_FeatureType "typeUpland"

-- |
pattern GeocodingSummary_FeatureType_TypeTerrace :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTerrace = GeocodingSummary_FeatureType "typeTerrace"

-- | Land not so steep as a cliff, but changing elevation. Includes slides.
pattern GeocodingSummary_FeatureType_TypeSlope :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSlope = GeocodingSummary_FeatureType "typeSlope"

-- | All the points on the polygon are at the same elevation.
pattern GeocodingSummary_FeatureType_TypeContourLine :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeContourLine = GeocodingSummary_FeatureType "typeContourLine"

-- | A near-level shallow, natural depression or basin, usually containing an intermittent lake, pond, or pool.
pattern GeocodingSummary_FeatureType_TypePan :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePan = GeocodingSummary_FeatureType "typePan"

-- |
pattern GeocodingSummary_FeatureType_TypeUnstableHillside :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUnstableHillside = GeocodingSummary_FeatureType "typeUnstableHillside"

-- | A series of mountains or hills ranged in a line and connected by high ground. Mountain ranges usually consist of many smaller ridges. For example, the Himalayas, the Andes. the Alps, etc.
pattern GeocodingSummary_FeatureType_TypeMountainRange :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMountainRange = GeocodingSummary_FeatureType "typeMountainRange"

-- | Features that are notable for being high (or low), or for having sudden changes in elevation. These features might have an \"elevation\" extension to specify the actual elevation. See ElevationProto for more information.
pattern GeocodingSummary_FeatureType_TypeUndersea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUndersea = GeocodingSummary_FeatureType "typeUndersea"

-- | includes peaks, ranges, and spurs
pattern GeocodingSummary_FeatureType_TypeSubmarineSeamount :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineSeamount = GeocodingSummary_FeatureType "typeSubmarineSeamount"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarineRidge :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineRidge = GeocodingSummary_FeatureType "typeSubmarineRidge"

-- | includes saddles
pattern GeocodingSummary_FeatureType_TypeSubmarineGap :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineGap = GeocodingSummary_FeatureType "typeSubmarineGap"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarinePlateau :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarinePlateau = GeocodingSummary_FeatureType "typeSubmarinePlateau"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarineDeep :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineDeep = GeocodingSummary_FeatureType "typeSubmarineDeep"

-- | includes trenches and troughs
pattern GeocodingSummary_FeatureType_TypeSubmarineValley :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineValley = GeocodingSummary_FeatureType "typeSubmarineValley"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarineBasin :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineBasin = GeocodingSummary_FeatureType "typeSubmarineBasin"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarineSlope :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineSlope = GeocodingSummary_FeatureType "typeSubmarineSlope"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarineCliff :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineCliff = GeocodingSummary_FeatureType "typeSubmarineCliff"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarinePlain :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarinePlain = GeocodingSummary_FeatureType "typeSubmarinePlain"

-- |
pattern GeocodingSummary_FeatureType_TypeSubmarineFractureZone :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubmarineFractureZone = GeocodingSummary_FeatureType "typeSubmarineFractureZone"

-- | Don\'t use 0xA7. Use 8 bits for additional types under TYPE/NATURAL/FEATURE, so we don\'t run out of space. The following are miscellaneous natural features that don\'t fit any of the categories above.
pattern GeocodingSummary_FeatureType_TypeCave :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCave = GeocodingSummary_FeatureType "typeCave"

-- |
pattern GeocodingSummary_FeatureType_TypeRock :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRock = GeocodingSummary_FeatureType "typeRock"

-- | A feature representing a group or chain of islands.
pattern GeocodingSummary_FeatureType_TypeArchipelago :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeArchipelago = GeocodingSummary_FeatureType "typeArchipelago"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypePostal :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePostal = GeocodingSummary_FeatureType "typePostal"

-- | This is the type for postal codes which are complete and independent enough that there should be a feature for them (e.g. US 5-digit ZIP codes). For even more detailed suffixes that further subdivide a postal code (such as the +4 component in US ZIP codes), store the information in a TYPE/POSTAL/CODE_SUFFIX address component. When a range or set of postal codes share the same geographical area, e.g. because a precise subdivision does not exist or this subdivision is unknown, this type is used for each individual postal code.
pattern GeocodingSummary_FeatureType_TypePostalCode :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePostalCode = GeocodingSummary_FeatureType "typePostalCode"

-- | A prefix portion of a postal code which does not meet the requirements for TYPE/POSTAL/CODE, but which is useful to search for, for example UK outcodes.
pattern GeocodingSummary_FeatureType_TypePostalCodePrefix :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePostalCodePrefix = GeocodingSummary_FeatureType "typePostalCodePrefix"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePremise :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePremise = GeocodingSummary_FeatureType "typePremise"

-- | DEPRECATED This is deprecated and we want to use TYPE/COMPOUND/SECTION instead.
pattern GeocodingSummary_FeatureType_TypeSubPremise :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSubPremise = GeocodingSummary_FeatureType "typeSubPremise"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeSuite :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSuite = GeocodingSummary_FeatureType "typeSuite"

-- | The term \"post town\" is used for a locality-like-entity that is only used for postal addresses.
pattern GeocodingSummary_FeatureType_TypePostTown :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePostTown = GeocodingSummary_FeatureType "typePostTown"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePostalRound :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePostalRound = GeocodingSummary_FeatureType "typePostalRound"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeMetaFeature :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeMetaFeature = GeocodingSummary_FeatureType "typeMetaFeature"

-- | Every data source used in constructing a data repository has a corresponding feature that provides more information about that data source. The extra information is stored in the optional data_source field below.
pattern GeocodingSummary_FeatureType_TypeDataSource :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDataSource = GeocodingSummary_FeatureType "typeDataSource"

-- | A locale feature provides region specific conventions such as preferred language and formatting details for time, date, and currency values. Locales aren\'t necessary defined by physical geographic features, so they are classified as meta-features.
pattern GeocodingSummary_FeatureType_TypeLocale :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLocale = GeocodingSummary_FeatureType "typeLocale"

-- | A timezone feature is used to specify the region covering an international timezone. When a point is covered by multiple timezone features, the most specific one can be used to compute the local time at this point. Most specific implies a much smaller region or the one that is closer to the center. A feature\'s timezone can be specified in the repeated related_timezone field.
pattern GeocodingSummary_FeatureType_TypeTimezone :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTimezone = GeocodingSummary_FeatureType "typeTimezone"

-- | A business chain feature is used to represent a chain, e.g. Starbucks, McDonald\'s, etc. Other features representing specific stores\/franchises of this chain may refer to one such feature via RELATION/MEMBER/OF_CHAIN. This is not strictly reserved to commercial chains but can also be used to model organizations such as the Red Cross or the United Nations.
pattern GeocodingSummary_FeatureType_TypeBusinessChain :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBusinessChain = GeocodingSummary_FeatureType "typeBusinessChain"

-- | A phone number prefix feature is used to specify the region where phone numbers (typically fixed-line numbers) must begin with a certain prefix. Any phone number prefix down to any level of granularity could be represented by this type.
pattern GeocodingSummary_FeatureType_TypePhoneNumberPrefix :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePhoneNumberPrefix = GeocodingSummary_FeatureType "typePhoneNumberPrefix"

-- | A phone number area code is a prefix which also coincides with the area code, or national destination code, of a particular region.
pattern GeocodingSummary_FeatureType_TypePhoneNumberAreaCode :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePhoneNumberAreaCode = GeocodingSummary_FeatureType "typePhoneNumberAreaCode"

-- | A Business Corridor is a dense cluster of semantically similar establishments. TYPE/BUSINESS/CORRIDOR features are distinguished from TYPE/COLLOQUIAL/AREA features because the corridors are not under the political hierarchy, are allowed to be nameless, and may not correspond to well-known real world locations. For more details, see go\/geo-corridors-schema.
pattern GeocodingSummary_FeatureType_TypeBusinessCorridor :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeBusinessCorridor = GeocodingSummary_FeatureType "typeBusinessCorridor"

-- | An address template feature provides region-specific conventions for structuring addresses. These features aren\'t necessarily defined by physical geographic features, so they are classified as meta-features.
pattern GeocodingSummary_FeatureType_TypeAddressTemplate :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAddressTemplate = GeocodingSummary_FeatureType "typeAddressTemplate"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEvent :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEvent = GeocodingSummary_FeatureType "typeEvent"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEarthquake :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEarthquake = GeocodingSummary_FeatureType "typeEarthquake"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHurricane :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHurricane = GeocodingSummary_FeatureType "typeHurricane"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeWeatherCondition :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWeatherCondition = GeocodingSummary_FeatureType "typeWeatherCondition"

-- | RESERVED
pattern GeocodingSummary_FeatureType_TypeTransient :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTransient = GeocodingSummary_FeatureType "typeTransient"

-- | A portal of entry or exit to another feature. Examples: - Subway station entrance. - Parking lot entrance.
pattern GeocodingSummary_FeatureType_TypeEntrance :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEntrance = GeocodingSummary_FeatureType "typeEntrance"

-- | Cartographic features are used to capture real-world objects for which there is no current desire to model any specific attributes. These are only useful to make the map tiles look pretty.
pattern GeocodingSummary_FeatureType_TypeCartographic :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCartographic = GeocodingSummary_FeatureType "typeCartographic"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeHighTension :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeHighTension = GeocodingSummary_FeatureType "typeHighTension"

-- | Also see skitrail.proto
pattern GeocodingSummary_FeatureType_TypeSkiTrail :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSkiTrail = GeocodingSummary_FeatureType "typeSkiTrail"

-- | Also see skilift.proto
pattern GeocodingSummary_FeatureType_TypeSkiLift :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSkiLift = GeocodingSummary_FeatureType "typeSkiLift"

-- | Also see skiboundary.proto
pattern GeocodingSummary_FeatureType_TypeSkiBoundary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeSkiBoundary = GeocodingSummary_FeatureType "typeSkiBoundary"

-- |
pattern GeocodingSummary_FeatureType_TypeWatershedBoundary :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWatershedBoundary = GeocodingSummary_FeatureType "typeWatershedBoundary"

-- | Starting with TYPE/TARMAC, we use longer IDs, so that we can expand the number of feature types under TYPE/CARTOGRAPHIC.
pattern GeocodingSummary_FeatureType_TypeTarmac :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTarmac = GeocodingSummary_FeatureType "typeTarmac"

-- | Use TYPE/COMPOUND/GROUND and appropriate gcids for the next two.
pattern GeocodingSummary_FeatureType_TypeWall :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWall = GeocodingSummary_FeatureType "typeWall"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePicnicArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePicnicArea = GeocodingSummary_FeatureType "typePicnicArea"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypePlayGround :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePlayGround = GeocodingSummary_FeatureType "typePlayGround"

-- |
pattern GeocodingSummary_FeatureType_TypeTrailHead :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTrailHead = GeocodingSummary_FeatureType "typeTrailHead"

-- | Sub-types within a golf course.
pattern GeocodingSummary_FeatureType_TypeGolfTeeingGround :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfTeeingGround = GeocodingSummary_FeatureType "typeGolfTeeingGround"

-- |
pattern GeocodingSummary_FeatureType_TypeGolfPuttingGreen :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfPuttingGreen = GeocodingSummary_FeatureType "typeGolfPuttingGreen"

-- |
pattern GeocodingSummary_FeatureType_TypeGolfRough :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfRough = GeocodingSummary_FeatureType "typeGolfRough"

-- |
pattern GeocodingSummary_FeatureType_TypeGolfSandBunker :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfSandBunker = GeocodingSummary_FeatureType "typeGolfSandBunker"

-- |
pattern GeocodingSummary_FeatureType_TypeGolfFairway :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfFairway = GeocodingSummary_FeatureType "typeGolfFairway"

-- | Use TYPE/ESTABLISHMENT/POI and gcid:golf_shop for golf shops instead.
pattern GeocodingSummary_FeatureType_TypeGolfHole :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeGolfHole = GeocodingSummary_FeatureType "typeGolfHole"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDeprecatedGolfShop :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDeprecatedGolfShop = GeocodingSummary_FeatureType "typeDeprecatedGolfShop"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeCampingSite :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCampingSite = GeocodingSummary_FeatureType "typeCampingSite"

-- |
pattern GeocodingSummary_FeatureType_TypeDesignatedBarbecuePit :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDesignatedBarbecuePit = GeocodingSummary_FeatureType "typeDesignatedBarbecuePit"

-- |
pattern GeocodingSummary_FeatureType_TypeDesignatedCookingArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDesignatedCookingArea = GeocodingSummary_FeatureType "typeDesignatedCookingArea"

-- |
pattern GeocodingSummary_FeatureType_TypeCampfirePit :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCampfirePit = GeocodingSummary_FeatureType "typeCampfirePit"

-- |
pattern GeocodingSummary_FeatureType_TypeWaterFountain :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeWaterFountain = GeocodingSummary_FeatureType "typeWaterFountain"

-- |
pattern GeocodingSummary_FeatureType_TypeLitterReceptacle :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLitterReceptacle = GeocodingSummary_FeatureType "typeLitterReceptacle"

-- |
pattern GeocodingSummary_FeatureType_TypeLockerArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLockerArea = GeocodingSummary_FeatureType "typeLockerArea"

-- | Subtype within a zoo - a cage or fenced-off or otherwise delineated area containing animals.
pattern GeocodingSummary_FeatureType_TypeAnimalEnclosure :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeAnimalEnclosure = GeocodingSummary_FeatureType "typeAnimalEnclosure"

-- | A line for a cartographic detail. For example the international date line. Such features should have polyline geometry.
pattern GeocodingSummary_FeatureType_TypeCartographicLine :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCartographicLine = GeocodingSummary_FeatureType "typeCartographicLine"

-- | ABSTRACT This type is being replaced by TYPE/COMPOUND/GROUNDS. For further details, see go\/compounds-v2
pattern GeocodingSummary_FeatureType_TypeEstablishment :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEstablishment = GeocodingSummary_FeatureType "typeEstablishment"

-- | DEPRECATED This type has been replaced by TYPE/COMPOUND/BUILDING. For further details, see go\/oyster-compounds
pattern GeocodingSummary_FeatureType_TypeEstablishmentGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEstablishmentGrounds = GeocodingSummary_FeatureType "typeEstablishmentGrounds"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeEstablishmentBuilding :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEstablishmentBuilding = GeocodingSummary_FeatureType "typeEstablishmentBuilding"

-- | Establishment POIs can be referenced by TYPE/COMPOUND features using the RELATION/PRIMARILY/OCCUPIED/BY. This is the reciprocal relation of the RELATION_OCCUPIES.
pattern GeocodingSummary_FeatureType_TypeEstablishmentPoi :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEstablishmentPoi = GeocodingSummary_FeatureType "typeEstablishmentPoi"

-- | Represents service-only establishments (those without a storefront location). NOTE(tcain): Using value 0xD441, since we could find ourselves with a need to differentiate service areas from online-only at this level in the future, but still benefit from being able to group those under a common parent, disjoint from TYPE/ESTABLISHMENT/POI.
pattern GeocodingSummary_FeatureType_TypeEstablishmentService :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeEstablishmentService = GeocodingSummary_FeatureType "typeEstablishmentService"

-- | The root of types of features that are in the sky, rather than on the earth. There will eventually be a hierarchy of types here.
pattern GeocodingSummary_FeatureType_TypeCelestial :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCelestial = GeocodingSummary_FeatureType "typeCelestial"

-- | Features responsible for monitoring traffic on roads (usually for speed). Includes cameras at particular points as well as monitors that cover larger spans. Features of this type should have a corresponding gcid that specifies the correct subtype (e.g. gcid:road/camera or gcid:speed/camera/zone). This type was originally named as TYPE/ROAD_CAMERA.
pattern GeocodingSummary_FeatureType_TypeRoadMonitor :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRoadMonitor = GeocodingSummary_FeatureType "typeRoadMonitor"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypePublicSpacesAndMonuments :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypePublicSpacesAndMonuments = GeocodingSummary_FeatureType "typePublicSpacesAndMonuments"

-- | Note that this type does not distinguish the nature of the statue (religious, historical, memorial, tourist, ...).
pattern GeocodingSummary_FeatureType_TypeStatue :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeStatue = GeocodingSummary_FeatureType "typeStatue"

-- | Open space used for events, gathering, or as market-place.
pattern GeocodingSummary_FeatureType_TypeTownSquare :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTownSquare = GeocodingSummary_FeatureType "typeTownSquare"

-- | A feature used to represent a logical level, e.g. floor.
pattern GeocodingSummary_FeatureType_TypeLevel :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeLevel = GeocodingSummary_FeatureType "typeLevel"

-- | ABSTRACT
pattern GeocodingSummary_FeatureType_TypeCompound :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCompound = GeocodingSummary_FeatureType "typeCompound"

-- | e.g. campus, compound, parcel.
pattern GeocodingSummary_FeatureType_TypeCompoundGrounds :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCompoundGrounds = GeocodingSummary_FeatureType "typeCompoundGrounds"

-- | e.g. single family dwelling, office building.
pattern GeocodingSummary_FeatureType_TypeCompoundBuilding :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCompoundBuilding = GeocodingSummary_FeatureType "typeCompoundBuilding"

-- | e.g. suite, room, hallway, cubicle.
pattern GeocodingSummary_FeatureType_TypeCompoundSection :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeCompoundSection = GeocodingSummary_FeatureType "typeCompoundSection"

-- | A terminal point represents a good location for a user to meet a taxi, ridesharing vehicle, or general driver.
pattern GeocodingSummary_FeatureType_TypeTerminalPoint :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeTerminalPoint = GeocodingSummary_FeatureType "typeTerminalPoint"

-- | An area controlled in some way by an authoritative source, such as a government-designated COVID containment zone. Features of this type should have one or more gcids corresponding to their specific regulation.
pattern GeocodingSummary_FeatureType_TypeRegulatedArea :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeRegulatedArea = GeocodingSummary_FeatureType "typeRegulatedArea"

-- | DEPRECATED
pattern GeocodingSummary_FeatureType_TypeDoNotUseReservedToCatchGeneratedFiles :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeDoNotUseReservedToCatchGeneratedFiles = GeocodingSummary_FeatureType "typeDoNotUseReservedToCatchGeneratedFiles"

-- | A feature of completely unknown type. This should only be used when absolutely necessary. One example in which this type is useful is in the Chinese importer, which must heuristically segment addresses into components - it often does not know what types to make those components. Please note that the Oyster address formatter does not currently support address components of TYPE_UNKNOWN well.
pattern GeocodingSummary_FeatureType_TypeUnknown :: GeocodingSummary_FeatureType
pattern GeocodingSummary_FeatureType_TypeUnknown = GeocodingSummary_FeatureType "typeUnknown"

{-# COMPLETE
  GeocodingSummary_FeatureType_TypeAny,
  GeocodingSummary_FeatureType_TypeTransportation,
  GeocodingSummary_FeatureType_TypeRoute,
  GeocodingSummary_FeatureType_TypeDeprecatedHighwayDoNotUse,
  GeocodingSummary_FeatureType_TypeHighway,
  GeocodingSummary_FeatureType_TYPEHIGHWAY1,
  GeocodingSummary_FeatureType_TYPEHIGHWAY2,
  GeocodingSummary_FeatureType_TYPEHIGHWAY3,
  GeocodingSummary_FeatureType_TYPEHIGHWAY4,
  GeocodingSummary_FeatureType_TYPEHIGHWAY5,
  GeocodingSummary_FeatureType_TYPEHIGHWAY6,
  GeocodingSummary_FeatureType_TYPEHIGHWAY7,
  GeocodingSummary_FeatureType_TYPEHIGHWAY8,
  GeocodingSummary_FeatureType_TYPEHIGHWAY9,
  GeocodingSummary_FeatureType_TypeBicycleRoute,
  GeocodingSummary_FeatureType_TypeTrail,
  GeocodingSummary_FeatureType_TypeSegment,
  GeocodingSummary_FeatureType_TypeRoad,
  GeocodingSummary_FeatureType_TypeRailway,
  GeocodingSummary_FeatureType_TypeStandardTrack,
  GeocodingSummary_FeatureType_TypeJrTrack,
  GeocodingSummary_FeatureType_TypeNarrowTrack,
  GeocodingSummary_FeatureType_TypeMonorailTrack,
  GeocodingSummary_FeatureType_TypeSubwayTrack,
  GeocodingSummary_FeatureType_TypeLightRailTrack,
  GeocodingSummary_FeatureType_TypeBroadTrack,
  GeocodingSummary_FeatureType_TypeHighSpeedRail,
  GeocodingSummary_FeatureType_TypeTrolleyTrack,
  GeocodingSummary_FeatureType_TypeFerry,
  GeocodingSummary_FeatureType_TypeFerryBoat,
  GeocodingSummary_FeatureType_TypeFerryTrain,
  GeocodingSummary_FeatureType_TypeVirtualSegment,
  GeocodingSummary_FeatureType_TypeIntersection,
  GeocodingSummary_FeatureType_TypeTransit,
  GeocodingSummary_FeatureType_TypeTransitStation,
  GeocodingSummary_FeatureType_TypeBusStation,
  GeocodingSummary_FeatureType_TypeTramwayStation,
  GeocodingSummary_FeatureType_TypeTrainStation,
  GeocodingSummary_FeatureType_TypeSubwayStation,
  GeocodingSummary_FeatureType_TypeFerryTerminal,
  GeocodingSummary_FeatureType_TypeAirport,
  GeocodingSummary_FeatureType_TypeAirportCivil,
  GeocodingSummary_FeatureType_TypeAirportMilitary,
  GeocodingSummary_FeatureType_TypeAirportMixed,
  GeocodingSummary_FeatureType_TypeHeliport,
  GeocodingSummary_FeatureType_TypeSeaplaneBase,
  GeocodingSummary_FeatureType_TypeAirstrip,
  GeocodingSummary_FeatureType_TypeCableCarStation,
  GeocodingSummary_FeatureType_TypeGondolaLiftStation,
  GeocodingSummary_FeatureType_TypeFunicularStation,
  GeocodingSummary_FeatureType_TypeSpecialStation,
  GeocodingSummary_FeatureType_TypeHorseCarriageStation,
  GeocodingSummary_FeatureType_TypeMonorailStation,
  GeocodingSummary_FeatureType_TypeSeaport,
  GeocodingSummary_FeatureType_TypeTransitStop,
  GeocodingSummary_FeatureType_TypeTransitTrip,
  GeocodingSummary_FeatureType_TypeTransitDeparture,
  GeocodingSummary_FeatureType_TypeTransitLeg,
  GeocodingSummary_FeatureType_TypeTransitLine,
  GeocodingSummary_FeatureType_TypeTransitAgency,
  GeocodingSummary_FeatureType_TypeTransitTransfer,
  GeocodingSummary_FeatureType_TypeSegmentPath,
  GeocodingSummary_FeatureType_TypeRoadSign,
  GeocodingSummary_FeatureType_TypeIntersectionGroup,
  GeocodingSummary_FeatureType_TypePathway,
  GeocodingSummary_FeatureType_TypeRestrictionGroup,
  GeocodingSummary_FeatureType_TypeTollCluster,
  GeocodingSummary_FeatureType_TypePolitical,
  GeocodingSummary_FeatureType_TypeCountry,
  GeocodingSummary_FeatureType_TypeAdministrativeArea,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA1,
  GeocodingSummary_FeatureType_TypeUsState,
  GeocodingSummary_FeatureType_TypeGbCountry,
  GeocodingSummary_FeatureType_TypeJpTodoufuken,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA2,
  GeocodingSummary_FeatureType_TypeGbFormerPostalCounty,
  GeocodingSummary_FeatureType_TypeGbTraditionalCounty,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA3,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA4,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA5,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA6,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA7,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA8,
  GeocodingSummary_FeatureType_TYPEADMINISTRATIVEAREA9,
  GeocodingSummary_FeatureType_TypeColloquialArea,
  GeocodingSummary_FeatureType_TypeReservation,
  GeocodingSummary_FeatureType_TypeLocality,
  GeocodingSummary_FeatureType_TypeGbPostTown,
  GeocodingSummary_FeatureType_TypeJpGun,
  GeocodingSummary_FeatureType_TypeJpShikuchouson,
  GeocodingSummary_FeatureType_TypeJpSubShikuchouson,
  GeocodingSummary_FeatureType_TypeColloquialCity,
  GeocodingSummary_FeatureType_TypeSublocality,
  GeocodingSummary_FeatureType_TypeUsBorough,
  GeocodingSummary_FeatureType_TypeGbDependentLocality,
  GeocodingSummary_FeatureType_TypeJpOoaza,
  GeocodingSummary_FeatureType_TypeJpKoaza,
  GeocodingSummary_FeatureType_TypeJpGaiku,
  GeocodingSummary_FeatureType_TypeGbDoubleDependentLocality,
  GeocodingSummary_FeatureType_TypeJpChiban,
  GeocodingSummary_FeatureType_TypeJpEdaban,
  GeocodingSummary_FeatureType_TYPESUBLOCALITY1,
  GeocodingSummary_FeatureType_TYPESUBLOCALITY2,
  GeocodingSummary_FeatureType_TYPESUBLOCALITY3,
  GeocodingSummary_FeatureType_TYPESUBLOCALITY4,
  GeocodingSummary_FeatureType_TYPESUBLOCALITY5,
  GeocodingSummary_FeatureType_TypeNeighborhood,
  GeocodingSummary_FeatureType_TypeConstituency,
  GeocodingSummary_FeatureType_TypeDesignatedMarketArea,
  GeocodingSummary_FeatureType_TypeSchoolDistrict,
  GeocodingSummary_FeatureType_TypeLandParcel,
  GeocodingSummary_FeatureType_TypeDisputedArea,
  GeocodingSummary_FeatureType_TypePoliceJurisdiction,
  GeocodingSummary_FeatureType_TypeStatisticalArea,
  GeocodingSummary_FeatureType_TypeConstituencyFuture,
  GeocodingSummary_FeatureType_TypePark,
  GeocodingSummary_FeatureType_TypeGolfCourse,
  GeocodingSummary_FeatureType_TypeLocalPark,
  GeocodingSummary_FeatureType_TypeNationalPark,
  GeocodingSummary_FeatureType_TypeUsNationalPark,
  GeocodingSummary_FeatureType_TypeUsNationalMonument,
  GeocodingSummary_FeatureType_TypeNationalForest,
  GeocodingSummary_FeatureType_TypeProvincialPark,
  GeocodingSummary_FeatureType_TypeProvincialForest,
  GeocodingSummary_FeatureType_TypeCampgrounds,
  GeocodingSummary_FeatureType_TypeHikingArea,
  GeocodingSummary_FeatureType_TypeBusiness,
  GeocodingSummary_FeatureType_TypeGovernment,
  GeocodingSummary_FeatureType_TypeBorderCrossing,
  GeocodingSummary_FeatureType_TypeCityHall,
  GeocodingSummary_FeatureType_TypeCourthouse,
  GeocodingSummary_FeatureType_TypeEmbassy,
  GeocodingSummary_FeatureType_TypeLibrary,
  GeocodingSummary_FeatureType_TypeSchool,
  GeocodingSummary_FeatureType_TypeUniversity,
  GeocodingSummary_FeatureType_TypeEmergency,
  GeocodingSummary_FeatureType_TypeHospital,
  GeocodingSummary_FeatureType_TypePharmacy,
  GeocodingSummary_FeatureType_TypePolice,
  GeocodingSummary_FeatureType_TypeFire,
  GeocodingSummary_FeatureType_TypeDoctor,
  GeocodingSummary_FeatureType_TypeDentist,
  GeocodingSummary_FeatureType_TypeVeterinarian,
  GeocodingSummary_FeatureType_TypeTravelService,
  GeocodingSummary_FeatureType_TypeLodging,
  GeocodingSummary_FeatureType_TypeRestaurant,
  GeocodingSummary_FeatureType_TypeGasStation,
  GeocodingSummary_FeatureType_TypeParking,
  GeocodingSummary_FeatureType_TypePostOffice,
  GeocodingSummary_FeatureType_TypeRestArea,
  GeocodingSummary_FeatureType_TypeCashMachine,
  GeocodingSummary_FeatureType_TypeCarRental,
  GeocodingSummary_FeatureType_TypeCarRepair,
  GeocodingSummary_FeatureType_TypeShopping,
  GeocodingSummary_FeatureType_TypeGrocery,
  GeocodingSummary_FeatureType_TypeTouristDestination,
  GeocodingSummary_FeatureType_TypeEcoTouristDestination,
  GeocodingSummary_FeatureType_TypeBirdWatching,
  GeocodingSummary_FeatureType_TypeFishing,
  GeocodingSummary_FeatureType_TypeHunting,
  GeocodingSummary_FeatureType_TypeNatureReserve,
  GeocodingSummary_FeatureType_TypeTemple,
  GeocodingSummary_FeatureType_TypeChurch,
  GeocodingSummary_FeatureType_TypeGurudwara,
  GeocodingSummary_FeatureType_TypeHinduTemple,
  GeocodingSummary_FeatureType_TypeMosque,
  GeocodingSummary_FeatureType_TypeSynagogue,
  GeocodingSummary_FeatureType_TypeStadium,
  GeocodingSummary_FeatureType_TypeBar,
  GeocodingSummary_FeatureType_TypeMovieRental,
  GeocodingSummary_FeatureType_TypeCoffee,
  GeocodingSummary_FeatureType_TypeGolf,
  GeocodingSummary_FeatureType_TypeBank,
  GeocodingSummary_FeatureType_TypeDoodle,
  GeocodingSummary_FeatureType_TypeGrounds,
  GeocodingSummary_FeatureType_TypeAirportGrounds,
  GeocodingSummary_FeatureType_TypeBuildingGrounds,
  GeocodingSummary_FeatureType_TypeCemetery,
  GeocodingSummary_FeatureType_TypeHospitalGrounds,
  GeocodingSummary_FeatureType_TypeIndustrial,
  GeocodingSummary_FeatureType_TypeMilitary,
  GeocodingSummary_FeatureType_TypeShoppingCenter,
  GeocodingSummary_FeatureType_TypeSportsComplex,
  GeocodingSummary_FeatureType_TypeUniversityGrounds,
  GeocodingSummary_FeatureType_TypeDeprecatedTarmac,
  GeocodingSummary_FeatureType_TypeEnclosedTrafficArea,
  GeocodingSummary_FeatureType_TypeParkingLot,
  GeocodingSummary_FeatureType_TypeParkingGarage,
  GeocodingSummary_FeatureType_TypeOffRoadArea,
  GeocodingSummary_FeatureType_TypeBorder,
  GeocodingSummary_FeatureType_TypeBuilding,
  GeocodingSummary_FeatureType_TypeGeocodedAddress,
  GeocodingSummary_FeatureType_TypeNaturalFeature,
  GeocodingSummary_FeatureType_TypeTerrain,
  GeocodingSummary_FeatureType_TypeSand,
  GeocodingSummary_FeatureType_TypeBeach,
  GeocodingSummary_FeatureType_TypeDune,
  GeocodingSummary_FeatureType_TypeRocky,
  GeocodingSummary_FeatureType_TypeIce,
  GeocodingSummary_FeatureType_TypeGlacier,
  GeocodingSummary_FeatureType_TypeBuiltUpArea,
  GeocodingSummary_FeatureType_TypeVegetation,
  GeocodingSummary_FeatureType_TypeShrubbery,
  GeocodingSummary_FeatureType_TypeWoods,
  GeocodingSummary_FeatureType_TypeAgricultural,
  GeocodingSummary_FeatureType_TypeGrassland,
  GeocodingSummary_FeatureType_TypeTundra,
  GeocodingSummary_FeatureType_TypeDesert,
  GeocodingSummary_FeatureType_TypeSaltFlat,
  GeocodingSummary_FeatureType_TypeWater,
  GeocodingSummary_FeatureType_TypeOcean,
  GeocodingSummary_FeatureType_TypeBay,
  GeocodingSummary_FeatureType_TypeBight,
  GeocodingSummary_FeatureType_TypeLagoon,
  GeocodingSummary_FeatureType_TypeSea,
  GeocodingSummary_FeatureType_TypeStrait,
  GeocodingSummary_FeatureType_TypeInlet,
  GeocodingSummary_FeatureType_TypeFjord,
  GeocodingSummary_FeatureType_TypeLake,
  GeocodingSummary_FeatureType_TypeSeasonalLake,
  GeocodingSummary_FeatureType_TypeReservoir,
  GeocodingSummary_FeatureType_TypePond,
  GeocodingSummary_FeatureType_TypeRiver,
  GeocodingSummary_FeatureType_TypeRapids,
  GeocodingSummary_FeatureType_TypeDistributary,
  GeocodingSummary_FeatureType_TypeConfluence,
  GeocodingSummary_FeatureType_TypeWaterfall,
  GeocodingSummary_FeatureType_TypeSpring,
  GeocodingSummary_FeatureType_TypeGeyser,
  GeocodingSummary_FeatureType_TypeHotSpring,
  GeocodingSummary_FeatureType_TypeSeasonalRiver,
  GeocodingSummary_FeatureType_TypeWadi,
  GeocodingSummary_FeatureType_TypeEstuary,
  GeocodingSummary_FeatureType_TypeWetland,
  GeocodingSummary_FeatureType_TypeWaterNavigation,
  GeocodingSummary_FeatureType_TypeFord,
  GeocodingSummary_FeatureType_TypeCanal,
  GeocodingSummary_FeatureType_TypeHarbor,
  GeocodingSummary_FeatureType_TypeChannel,
  GeocodingSummary_FeatureType_TypeReef,
  GeocodingSummary_FeatureType_TypeReefFlat,
  GeocodingSummary_FeatureType_TypeReefGrowth,
  GeocodingSummary_FeatureType_TypeReefExtent,
  GeocodingSummary_FeatureType_TypeReefRockSubmerged,
  GeocodingSummary_FeatureType_TypeIrrigation,
  GeocodingSummary_FeatureType_TypeDam,
  GeocodingSummary_FeatureType_TypeDrinkingWater,
  GeocodingSummary_FeatureType_TypeCurrent,
  GeocodingSummary_FeatureType_TypeWateringHole,
  GeocodingSummary_FeatureType_TypeTectonic,
  GeocodingSummary_FeatureType_TypeWateringHoleDeprecated,
  GeocodingSummary_FeatureType_TypeVolcano,
  GeocodingSummary_FeatureType_TypeLavaField,
  GeocodingSummary_FeatureType_TypeFissure,
  GeocodingSummary_FeatureType_TypeFault,
  GeocodingSummary_FeatureType_TypeLandMass,
  GeocodingSummary_FeatureType_TypeContinent,
  GeocodingSummary_FeatureType_TypeIsland,
  GeocodingSummary_FeatureType_TypeAtoll,
  GeocodingSummary_FeatureType_TypeOceanRockExposed,
  GeocodingSummary_FeatureType_TypeCay,
  GeocodingSummary_FeatureType_TypePeninsula,
  GeocodingSummary_FeatureType_TypeIsthmus,
  GeocodingSummary_FeatureType_TypeElevated,
  GeocodingSummary_FeatureType_TypePeak,
  GeocodingSummary_FeatureType_TypeNunatak,
  GeocodingSummary_FeatureType_TypeSpur,
  GeocodingSummary_FeatureType_TypePass,
  GeocodingSummary_FeatureType_TypePlateau,
  GeocodingSummary_FeatureType_TypeRidge,
  GeocodingSummary_FeatureType_TypeRavine,
  GeocodingSummary_FeatureType_TypeCrater,
  GeocodingSummary_FeatureType_TypeKarst,
  GeocodingSummary_FeatureType_TypeCliff,
  GeocodingSummary_FeatureType_TypeVista,
  GeocodingSummary_FeatureType_TypeDigitalElevationModel,
  GeocodingSummary_FeatureType_TypeUpland,
  GeocodingSummary_FeatureType_TypeTerrace,
  GeocodingSummary_FeatureType_TypeSlope,
  GeocodingSummary_FeatureType_TypeContourLine,
  GeocodingSummary_FeatureType_TypePan,
  GeocodingSummary_FeatureType_TypeUnstableHillside,
  GeocodingSummary_FeatureType_TypeMountainRange,
  GeocodingSummary_FeatureType_TypeUndersea,
  GeocodingSummary_FeatureType_TypeSubmarineSeamount,
  GeocodingSummary_FeatureType_TypeSubmarineRidge,
  GeocodingSummary_FeatureType_TypeSubmarineGap,
  GeocodingSummary_FeatureType_TypeSubmarinePlateau,
  GeocodingSummary_FeatureType_TypeSubmarineDeep,
  GeocodingSummary_FeatureType_TypeSubmarineValley,
  GeocodingSummary_FeatureType_TypeSubmarineBasin,
  GeocodingSummary_FeatureType_TypeSubmarineSlope,
  GeocodingSummary_FeatureType_TypeSubmarineCliff,
  GeocodingSummary_FeatureType_TypeSubmarinePlain,
  GeocodingSummary_FeatureType_TypeSubmarineFractureZone,
  GeocodingSummary_FeatureType_TypeCave,
  GeocodingSummary_FeatureType_TypeRock,
  GeocodingSummary_FeatureType_TypeArchipelago,
  GeocodingSummary_FeatureType_TypePostal,
  GeocodingSummary_FeatureType_TypePostalCode,
  GeocodingSummary_FeatureType_TypePostalCodePrefix,
  GeocodingSummary_FeatureType_TypePremise,
  GeocodingSummary_FeatureType_TypeSubPremise,
  GeocodingSummary_FeatureType_TypeSuite,
  GeocodingSummary_FeatureType_TypePostTown,
  GeocodingSummary_FeatureType_TypePostalRound,
  GeocodingSummary_FeatureType_TypeMetaFeature,
  GeocodingSummary_FeatureType_TypeDataSource,
  GeocodingSummary_FeatureType_TypeLocale,
  GeocodingSummary_FeatureType_TypeTimezone,
  GeocodingSummary_FeatureType_TypeBusinessChain,
  GeocodingSummary_FeatureType_TypePhoneNumberPrefix,
  GeocodingSummary_FeatureType_TypePhoneNumberAreaCode,
  GeocodingSummary_FeatureType_TypeBusinessCorridor,
  GeocodingSummary_FeatureType_TypeAddressTemplate,
  GeocodingSummary_FeatureType_TypeEvent,
  GeocodingSummary_FeatureType_TypeEarthquake,
  GeocodingSummary_FeatureType_TypeHurricane,
  GeocodingSummary_FeatureType_TypeWeatherCondition,
  GeocodingSummary_FeatureType_TypeTransient,
  GeocodingSummary_FeatureType_TypeEntrance,
  GeocodingSummary_FeatureType_TypeCartographic,
  GeocodingSummary_FeatureType_TypeHighTension,
  GeocodingSummary_FeatureType_TypeSkiTrail,
  GeocodingSummary_FeatureType_TypeSkiLift,
  GeocodingSummary_FeatureType_TypeSkiBoundary,
  GeocodingSummary_FeatureType_TypeWatershedBoundary,
  GeocodingSummary_FeatureType_TypeTarmac,
  GeocodingSummary_FeatureType_TypeWall,
  GeocodingSummary_FeatureType_TypePicnicArea,
  GeocodingSummary_FeatureType_TypePlayGround,
  GeocodingSummary_FeatureType_TypeTrailHead,
  GeocodingSummary_FeatureType_TypeGolfTeeingGround,
  GeocodingSummary_FeatureType_TypeGolfPuttingGreen,
  GeocodingSummary_FeatureType_TypeGolfRough,
  GeocodingSummary_FeatureType_TypeGolfSandBunker,
  GeocodingSummary_FeatureType_TypeGolfFairway,
  GeocodingSummary_FeatureType_TypeGolfHole,
  GeocodingSummary_FeatureType_TypeDeprecatedGolfShop,
  GeocodingSummary_FeatureType_TypeCampingSite,
  GeocodingSummary_FeatureType_TypeDesignatedBarbecuePit,
  GeocodingSummary_FeatureType_TypeDesignatedCookingArea,
  GeocodingSummary_FeatureType_TypeCampfirePit,
  GeocodingSummary_FeatureType_TypeWaterFountain,
  GeocodingSummary_FeatureType_TypeLitterReceptacle,
  GeocodingSummary_FeatureType_TypeLockerArea,
  GeocodingSummary_FeatureType_TypeAnimalEnclosure,
  GeocodingSummary_FeatureType_TypeCartographicLine,
  GeocodingSummary_FeatureType_TypeEstablishment,
  GeocodingSummary_FeatureType_TypeEstablishmentGrounds,
  GeocodingSummary_FeatureType_TypeEstablishmentBuilding,
  GeocodingSummary_FeatureType_TypeEstablishmentPoi,
  GeocodingSummary_FeatureType_TypeEstablishmentService,
  GeocodingSummary_FeatureType_TypeCelestial,
  GeocodingSummary_FeatureType_TypeRoadMonitor,
  GeocodingSummary_FeatureType_TypePublicSpacesAndMonuments,
  GeocodingSummary_FeatureType_TypeStatue,
  GeocodingSummary_FeatureType_TypeTownSquare,
  GeocodingSummary_FeatureType_TypeLevel,
  GeocodingSummary_FeatureType_TypeCompound,
  GeocodingSummary_FeatureType_TypeCompoundGrounds,
  GeocodingSummary_FeatureType_TypeCompoundBuilding,
  GeocodingSummary_FeatureType_TypeCompoundSection,
  GeocodingSummary_FeatureType_TypeTerminalPoint,
  GeocodingSummary_FeatureType_TypeRegulatedArea,
  GeocodingSummary_FeatureType_TypeDoNotUseReservedToCatchGeneratedFiles,
  GeocodingSummary_FeatureType_TypeUnknown,
  GeocodingSummary_FeatureType
  #-}

newtype Office_LevelsItem = Office_LevelsItem {fromOffice_LevelsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Office_LevelsItem_International :: Office_LevelsItem
pattern Office_LevelsItem_International = Office_LevelsItem "international"

-- |
pattern Office_LevelsItem_Country :: Office_LevelsItem
pattern Office_LevelsItem_Country = Office_LevelsItem "country"

-- |
pattern Office_LevelsItem_ADMINISTRATIVEAREA1 :: Office_LevelsItem
pattern Office_LevelsItem_ADMINISTRATIVEAREA1 = Office_LevelsItem "administrativeArea1"

-- |
pattern Office_LevelsItem_Regional :: Office_LevelsItem
pattern Office_LevelsItem_Regional = Office_LevelsItem "regional"

-- |
pattern Office_LevelsItem_ADMINISTRATIVEAREA2 :: Office_LevelsItem
pattern Office_LevelsItem_ADMINISTRATIVEAREA2 = Office_LevelsItem "administrativeArea2"

-- |
pattern Office_LevelsItem_Locality :: Office_LevelsItem
pattern Office_LevelsItem_Locality = Office_LevelsItem "locality"

-- |
pattern Office_LevelsItem_SUBLOCALITY1 :: Office_LevelsItem
pattern Office_LevelsItem_SUBLOCALITY1 = Office_LevelsItem "subLocality1"

-- |
pattern Office_LevelsItem_SUBLOCALITY2 :: Office_LevelsItem
pattern Office_LevelsItem_SUBLOCALITY2 = Office_LevelsItem "subLocality2"

-- |
pattern Office_LevelsItem_Special :: Office_LevelsItem
pattern Office_LevelsItem_Special = Office_LevelsItem "special"

{-# COMPLETE
  Office_LevelsItem_International,
  Office_LevelsItem_Country,
  Office_LevelsItem_ADMINISTRATIVEAREA1,
  Office_LevelsItem_Regional,
  Office_LevelsItem_ADMINISTRATIVEAREA2,
  Office_LevelsItem_Locality,
  Office_LevelsItem_SUBLOCALITY1,
  Office_LevelsItem_SUBLOCALITY2,
  Office_LevelsItem_Special,
  Office_LevelsItem
  #-}

newtype Office_RolesItem = Office_RolesItem {fromOffice_RolesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Office_RolesItem_HeadOfState :: Office_RolesItem
pattern Office_RolesItem_HeadOfState = Office_RolesItem "headOfState"

-- |
pattern Office_RolesItem_HeadOfGovernment :: Office_RolesItem
pattern Office_RolesItem_HeadOfGovernment = Office_RolesItem "headOfGovernment"

-- |
pattern Office_RolesItem_DeputyHeadOfGovernment :: Office_RolesItem
pattern Office_RolesItem_DeputyHeadOfGovernment = Office_RolesItem "deputyHeadOfGovernment"

-- |
pattern Office_RolesItem_GovernmentOfficer :: Office_RolesItem
pattern Office_RolesItem_GovernmentOfficer = Office_RolesItem "governmentOfficer"

-- |
pattern Office_RolesItem_ExecutiveCouncil :: Office_RolesItem
pattern Office_RolesItem_ExecutiveCouncil = Office_RolesItem "executiveCouncil"

-- |
pattern Office_RolesItem_LegislatorUpperBody :: Office_RolesItem
pattern Office_RolesItem_LegislatorUpperBody = Office_RolesItem "legislatorUpperBody"

-- |
pattern Office_RolesItem_LegislatorLowerBody :: Office_RolesItem
pattern Office_RolesItem_LegislatorLowerBody = Office_RolesItem "legislatorLowerBody"

-- |
pattern Office_RolesItem_HighestCourtJudge :: Office_RolesItem
pattern Office_RolesItem_HighestCourtJudge = Office_RolesItem "highestCourtJudge"

-- |
pattern Office_RolesItem_Judge :: Office_RolesItem
pattern Office_RolesItem_Judge = Office_RolesItem "judge"

-- |
pattern Office_RolesItem_SchoolBoard :: Office_RolesItem
pattern Office_RolesItem_SchoolBoard = Office_RolesItem "schoolBoard"

-- |
pattern Office_RolesItem_SpecialPurposeOfficer :: Office_RolesItem
pattern Office_RolesItem_SpecialPurposeOfficer = Office_RolesItem "specialPurposeOfficer"

-- |
pattern Office_RolesItem_OtherRole :: Office_RolesItem
pattern Office_RolesItem_OtherRole = Office_RolesItem "otherRole"

{-# COMPLETE
  Office_RolesItem_HeadOfState,
  Office_RolesItem_HeadOfGovernment,
  Office_RolesItem_DeputyHeadOfGovernment,
  Office_RolesItem_GovernmentOfficer,
  Office_RolesItem_ExecutiveCouncil,
  Office_RolesItem_LegislatorUpperBody,
  Office_RolesItem_LegislatorLowerBody,
  Office_RolesItem_HighestCourtJudge,
  Office_RolesItem_Judge,
  Office_RolesItem_SchoolBoard,
  Office_RolesItem_SpecialPurposeOfficer,
  Office_RolesItem_OtherRole,
  Office_RolesItem
  #-}

-- | A list of office levels to filter by. Only offices that serve at least one of these levels will be returned. Divisions that don\'t contain a matching office will not be returned.
newtype RepresentativesRepresentativeInfoByAddressLevels = RepresentativesRepresentativeInfoByAddressLevels {fromRepresentativesRepresentativeInfoByAddressLevels :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_International :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_International = RepresentativesRepresentativeInfoByAddressLevels "international"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_Country :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Country = RepresentativesRepresentativeInfoByAddressLevels "country"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA1 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA1 = RepresentativesRepresentativeInfoByAddressLevels "administrativeArea1"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_Regional :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Regional = RepresentativesRepresentativeInfoByAddressLevels "regional"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA2 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA2 = RepresentativesRepresentativeInfoByAddressLevels "administrativeArea2"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_Locality :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Locality = RepresentativesRepresentativeInfoByAddressLevels "locality"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY1 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY1 = RepresentativesRepresentativeInfoByAddressLevels "subLocality1"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY2 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY2 = RepresentativesRepresentativeInfoByAddressLevels "subLocality2"

-- |
pattern RepresentativesRepresentativeInfoByAddressLevels_Special :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Special = RepresentativesRepresentativeInfoByAddressLevels "special"

{-# COMPLETE
  RepresentativesRepresentativeInfoByAddressLevels_International,
  RepresentativesRepresentativeInfoByAddressLevels_Country,
  RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA1,
  RepresentativesRepresentativeInfoByAddressLevels_Regional,
  RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA2,
  RepresentativesRepresentativeInfoByAddressLevels_Locality,
  RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY1,
  RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY2,
  RepresentativesRepresentativeInfoByAddressLevels_Special,
  RepresentativesRepresentativeInfoByAddressLevels
  #-}

-- | A list of office roles to filter by. Only offices fulfilling one of these roles will be returned. Divisions that don\'t contain a matching office will not be returned.
newtype RepresentativesRepresentativeInfoByAddressRoles = RepresentativesRepresentativeInfoByAddressRoles {fromRepresentativesRepresentativeInfoByAddressRoles :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfState :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfState = RepresentativesRepresentativeInfoByAddressRoles "headOfState"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfGovernment :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfGovernment = RepresentativesRepresentativeInfoByAddressRoles "headOfGovernment"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_DeputyHeadOfGovernment :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_DeputyHeadOfGovernment = RepresentativesRepresentativeInfoByAddressRoles "deputyHeadOfGovernment"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_GovernmentOfficer :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_GovernmentOfficer = RepresentativesRepresentativeInfoByAddressRoles "governmentOfficer"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_ExecutiveCouncil :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_ExecutiveCouncil = RepresentativesRepresentativeInfoByAddressRoles "executiveCouncil"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorUpperBody :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorUpperBody = RepresentativesRepresentativeInfoByAddressRoles "legislatorUpperBody"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorLowerBody :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorLowerBody = RepresentativesRepresentativeInfoByAddressRoles "legislatorLowerBody"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_HighestCourtJudge :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_HighestCourtJudge = RepresentativesRepresentativeInfoByAddressRoles "highestCourtJudge"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_Judge :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_Judge = RepresentativesRepresentativeInfoByAddressRoles "judge"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_SchoolBoard :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_SchoolBoard = RepresentativesRepresentativeInfoByAddressRoles "schoolBoard"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_SpecialPurposeOfficer :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_SpecialPurposeOfficer = RepresentativesRepresentativeInfoByAddressRoles "specialPurposeOfficer"

-- |
pattern RepresentativesRepresentativeInfoByAddressRoles_OtherRole :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_OtherRole = RepresentativesRepresentativeInfoByAddressRoles "otherRole"

{-# COMPLETE
  RepresentativesRepresentativeInfoByAddressRoles_HeadOfState,
  RepresentativesRepresentativeInfoByAddressRoles_HeadOfGovernment,
  RepresentativesRepresentativeInfoByAddressRoles_DeputyHeadOfGovernment,
  RepresentativesRepresentativeInfoByAddressRoles_GovernmentOfficer,
  RepresentativesRepresentativeInfoByAddressRoles_ExecutiveCouncil,
  RepresentativesRepresentativeInfoByAddressRoles_LegislatorUpperBody,
  RepresentativesRepresentativeInfoByAddressRoles_LegislatorLowerBody,
  RepresentativesRepresentativeInfoByAddressRoles_HighestCourtJudge,
  RepresentativesRepresentativeInfoByAddressRoles_Judge,
  RepresentativesRepresentativeInfoByAddressRoles_SchoolBoard,
  RepresentativesRepresentativeInfoByAddressRoles_SpecialPurposeOfficer,
  RepresentativesRepresentativeInfoByAddressRoles_OtherRole,
  RepresentativesRepresentativeInfoByAddressRoles
  #-}

-- | A list of office levels to filter by. Only offices that serve at least one of these levels will be returned. Divisions that don\'t contain a matching office will not be returned.
newtype RepresentativesRepresentativeInfoByDivisionLevels = RepresentativesRepresentativeInfoByDivisionLevels {fromRepresentativesRepresentativeInfoByDivisionLevels :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_International :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_International = RepresentativesRepresentativeInfoByDivisionLevels "international"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_Country :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Country = RepresentativesRepresentativeInfoByDivisionLevels "country"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA1 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA1 = RepresentativesRepresentativeInfoByDivisionLevels "administrativeArea1"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_Regional :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Regional = RepresentativesRepresentativeInfoByDivisionLevels "regional"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA2 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA2 = RepresentativesRepresentativeInfoByDivisionLevels "administrativeArea2"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_Locality :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Locality = RepresentativesRepresentativeInfoByDivisionLevels "locality"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY1 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY1 = RepresentativesRepresentativeInfoByDivisionLevels "subLocality1"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY2 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY2 = RepresentativesRepresentativeInfoByDivisionLevels "subLocality2"

-- |
pattern RepresentativesRepresentativeInfoByDivisionLevels_Special :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Special = RepresentativesRepresentativeInfoByDivisionLevels "special"

{-# COMPLETE
  RepresentativesRepresentativeInfoByDivisionLevels_International,
  RepresentativesRepresentativeInfoByDivisionLevels_Country,
  RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA1,
  RepresentativesRepresentativeInfoByDivisionLevels_Regional,
  RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA2,
  RepresentativesRepresentativeInfoByDivisionLevels_Locality,
  RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY1,
  RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY2,
  RepresentativesRepresentativeInfoByDivisionLevels_Special,
  RepresentativesRepresentativeInfoByDivisionLevels
  #-}

-- | A list of office roles to filter by. Only offices fulfilling one of these roles will be returned. Divisions that don\'t contain a matching office will not be returned.
newtype RepresentativesRepresentativeInfoByDivisionRoles = RepresentativesRepresentativeInfoByDivisionRoles {fromRepresentativesRepresentativeInfoByDivisionRoles :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfState :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfState = RepresentativesRepresentativeInfoByDivisionRoles "headOfState"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfGovernment :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfGovernment = RepresentativesRepresentativeInfoByDivisionRoles "headOfGovernment"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_DeputyHeadOfGovernment :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_DeputyHeadOfGovernment = RepresentativesRepresentativeInfoByDivisionRoles "deputyHeadOfGovernment"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_GovernmentOfficer :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_GovernmentOfficer = RepresentativesRepresentativeInfoByDivisionRoles "governmentOfficer"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_ExecutiveCouncil :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_ExecutiveCouncil = RepresentativesRepresentativeInfoByDivisionRoles "executiveCouncil"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorUpperBody :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorUpperBody = RepresentativesRepresentativeInfoByDivisionRoles "legislatorUpperBody"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorLowerBody :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorLowerBody = RepresentativesRepresentativeInfoByDivisionRoles "legislatorLowerBody"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_HighestCourtJudge :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_HighestCourtJudge = RepresentativesRepresentativeInfoByDivisionRoles "highestCourtJudge"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_Judge :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_Judge = RepresentativesRepresentativeInfoByDivisionRoles "judge"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_SchoolBoard :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_SchoolBoard = RepresentativesRepresentativeInfoByDivisionRoles "schoolBoard"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_SpecialPurposeOfficer :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_SpecialPurposeOfficer = RepresentativesRepresentativeInfoByDivisionRoles "specialPurposeOfficer"

-- |
pattern RepresentativesRepresentativeInfoByDivisionRoles_OtherRole :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_OtherRole = RepresentativesRepresentativeInfoByDivisionRoles "otherRole"

{-# COMPLETE
  RepresentativesRepresentativeInfoByDivisionRoles_HeadOfState,
  RepresentativesRepresentativeInfoByDivisionRoles_HeadOfGovernment,
  RepresentativesRepresentativeInfoByDivisionRoles_DeputyHeadOfGovernment,
  RepresentativesRepresentativeInfoByDivisionRoles_GovernmentOfficer,
  RepresentativesRepresentativeInfoByDivisionRoles_ExecutiveCouncil,
  RepresentativesRepresentativeInfoByDivisionRoles_LegislatorUpperBody,
  RepresentativesRepresentativeInfoByDivisionRoles_LegislatorLowerBody,
  RepresentativesRepresentativeInfoByDivisionRoles_HighestCourtJudge,
  RepresentativesRepresentativeInfoByDivisionRoles_Judge,
  RepresentativesRepresentativeInfoByDivisionRoles_SchoolBoard,
  RepresentativesRepresentativeInfoByDivisionRoles_SpecialPurposeOfficer,
  RepresentativesRepresentativeInfoByDivisionRoles_OtherRole,
  RepresentativesRepresentativeInfoByDivisionRoles
  #-}
