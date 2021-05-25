{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CivicInfo.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CivicInfo.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

data ContestLevelItem
    = International
      -- ^ @international@
    | Country
      -- ^ @country@
    | ADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | Regional
      -- ^ @regional@
    | ADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | Locality
      -- ^ @locality@
    | SUBLOCALITY1
      -- ^ @subLocality1@
    | SUBLOCALITY2
      -- ^ @subLocality2@
    | Special
      -- ^ @special@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContestLevelItem

instance FromHttpApiData ContestLevelItem where
    parseQueryParam = \case
        "international" -> Right International
        "country" -> Right Country
        "administrativeArea1" -> Right ADMINISTRATIVEAREA1
        "regional" -> Right Regional
        "administrativeArea2" -> Right ADMINISTRATIVEAREA2
        "locality" -> Right Locality
        "subLocality1" -> Right SUBLOCALITY1
        "subLocality2" -> Right SUBLOCALITY2
        "special" -> Right Special
        x -> Left ("Unable to parse ContestLevelItem from: " <> x)

instance ToHttpApiData ContestLevelItem where
    toQueryParam = \case
        International -> "international"
        Country -> "country"
        ADMINISTRATIVEAREA1 -> "administrativeArea1"
        Regional -> "regional"
        ADMINISTRATIVEAREA2 -> "administrativeArea2"
        Locality -> "locality"
        SUBLOCALITY1 -> "subLocality1"
        SUBLOCALITY2 -> "subLocality2"
        Special -> "special"

instance FromJSON ContestLevelItem where
    parseJSON = parseJSONText "ContestLevelItem"

instance ToJSON ContestLevelItem where
    toJSON = toJSONText

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data RepresentativesRepresentativeInfoByDivisionLevels
    = RRIBDLInternational
      -- ^ @international@
    | RRIBDLCountry
      -- ^ @country@
    | RRIBDLADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | RRIBDLRegional
      -- ^ @regional@
    | RRIBDLADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | RRIBDLLocality
      -- ^ @locality@
    | RRIBDLSUBLOCALITY1
      -- ^ @subLocality1@
    | RRIBDLSUBLOCALITY2
      -- ^ @subLocality2@
    | RRIBDLSpecial
      -- ^ @special@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepresentativesRepresentativeInfoByDivisionLevels

instance FromHttpApiData RepresentativesRepresentativeInfoByDivisionLevels where
    parseQueryParam = \case
        "international" -> Right RRIBDLInternational
        "country" -> Right RRIBDLCountry
        "administrativeArea1" -> Right RRIBDLADMINISTRATIVEAREA1
        "regional" -> Right RRIBDLRegional
        "administrativeArea2" -> Right RRIBDLADMINISTRATIVEAREA2
        "locality" -> Right RRIBDLLocality
        "subLocality1" -> Right RRIBDLSUBLOCALITY1
        "subLocality2" -> Right RRIBDLSUBLOCALITY2
        "special" -> Right RRIBDLSpecial
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByDivisionLevels from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByDivisionLevels where
    toQueryParam = \case
        RRIBDLInternational -> "international"
        RRIBDLCountry -> "country"
        RRIBDLADMINISTRATIVEAREA1 -> "administrativeArea1"
        RRIBDLRegional -> "regional"
        RRIBDLADMINISTRATIVEAREA2 -> "administrativeArea2"
        RRIBDLLocality -> "locality"
        RRIBDLSUBLOCALITY1 -> "subLocality1"
        RRIBDLSUBLOCALITY2 -> "subLocality2"
        RRIBDLSpecial -> "special"

instance FromJSON RepresentativesRepresentativeInfoByDivisionLevels where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByDivisionLevels"

instance ToJSON RepresentativesRepresentativeInfoByDivisionLevels where
    toJSON = toJSONText

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data RepresentativesRepresentativeInfoByAddressLevels
    = RRIBALInternational
      -- ^ @international@
    | RRIBALCountry
      -- ^ @country@
    | RRIBALADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | RRIBALRegional
      -- ^ @regional@
    | RRIBALADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | RRIBALLocality
      -- ^ @locality@
    | RRIBALSUBLOCALITY1
      -- ^ @subLocality1@
    | RRIBALSUBLOCALITY2
      -- ^ @subLocality2@
    | RRIBALSpecial
      -- ^ @special@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepresentativesRepresentativeInfoByAddressLevels

instance FromHttpApiData RepresentativesRepresentativeInfoByAddressLevels where
    parseQueryParam = \case
        "international" -> Right RRIBALInternational
        "country" -> Right RRIBALCountry
        "administrativeArea1" -> Right RRIBALADMINISTRATIVEAREA1
        "regional" -> Right RRIBALRegional
        "administrativeArea2" -> Right RRIBALADMINISTRATIVEAREA2
        "locality" -> Right RRIBALLocality
        "subLocality1" -> Right RRIBALSUBLOCALITY1
        "subLocality2" -> Right RRIBALSUBLOCALITY2
        "special" -> Right RRIBALSpecial
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByAddressLevels from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByAddressLevels where
    toQueryParam = \case
        RRIBALInternational -> "international"
        RRIBALCountry -> "country"
        RRIBALADMINISTRATIVEAREA1 -> "administrativeArea1"
        RRIBALRegional -> "regional"
        RRIBALADMINISTRATIVEAREA2 -> "administrativeArea2"
        RRIBALLocality -> "locality"
        RRIBALSUBLOCALITY1 -> "subLocality1"
        RRIBALSUBLOCALITY2 -> "subLocality2"
        RRIBALSpecial -> "special"

instance FromJSON RepresentativesRepresentativeInfoByAddressLevels where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByAddressLevels"

instance ToJSON RepresentativesRepresentativeInfoByAddressLevels where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data RepresentativesRepresentativeInfoByDivisionRoles
    = HeadOfState
      -- ^ @headOfState@
    | HeadOfGovernment
      -- ^ @headOfGovernment@
    | DeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | GovernmentOfficer
      -- ^ @governmentOfficer@
    | ExecutiveCouncil
      -- ^ @executiveCouncil@
    | LegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | LegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | HighestCourtJudge
      -- ^ @highestCourtJudge@
    | Judge
      -- ^ @judge@
    | SchoolBoard
      -- ^ @schoolBoard@
    | SpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
    | OtherRole
      -- ^ @otherRole@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepresentativesRepresentativeInfoByDivisionRoles

instance FromHttpApiData RepresentativesRepresentativeInfoByDivisionRoles where
    parseQueryParam = \case
        "headOfState" -> Right HeadOfState
        "headOfGovernment" -> Right HeadOfGovernment
        "deputyHeadOfGovernment" -> Right DeputyHeadOfGovernment
        "governmentOfficer" -> Right GovernmentOfficer
        "executiveCouncil" -> Right ExecutiveCouncil
        "legislatorUpperBody" -> Right LegislatorUpperBody
        "legislatorLowerBody" -> Right LegislatorLowerBody
        "highestCourtJudge" -> Right HighestCourtJudge
        "judge" -> Right Judge
        "schoolBoard" -> Right SchoolBoard
        "specialPurposeOfficer" -> Right SpecialPurposeOfficer
        "otherRole" -> Right OtherRole
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByDivisionRoles from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByDivisionRoles where
    toQueryParam = \case
        HeadOfState -> "headOfState"
        HeadOfGovernment -> "headOfGovernment"
        DeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        GovernmentOfficer -> "governmentOfficer"
        ExecutiveCouncil -> "executiveCouncil"
        LegislatorUpperBody -> "legislatorUpperBody"
        LegislatorLowerBody -> "legislatorLowerBody"
        HighestCourtJudge -> "highestCourtJudge"
        Judge -> "judge"
        SchoolBoard -> "schoolBoard"
        SpecialPurposeOfficer -> "specialPurposeOfficer"
        OtherRole -> "otherRole"

instance FromJSON RepresentativesRepresentativeInfoByDivisionRoles where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByDivisionRoles"

instance ToJSON RepresentativesRepresentativeInfoByDivisionRoles where
    toJSON = toJSONText

data OfficeLevelsItem
    = OLIInternational
      -- ^ @international@
    | OLICountry
      -- ^ @country@
    | OLIADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | OLIRegional
      -- ^ @regional@
    | OLIADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | OLILocality
      -- ^ @locality@
    | OLISUBLOCALITY1
      -- ^ @subLocality1@
    | OLISUBLOCALITY2
      -- ^ @subLocality2@
    | OLISpecial
      -- ^ @special@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OfficeLevelsItem

instance FromHttpApiData OfficeLevelsItem where
    parseQueryParam = \case
        "international" -> Right OLIInternational
        "country" -> Right OLICountry
        "administrativeArea1" -> Right OLIADMINISTRATIVEAREA1
        "regional" -> Right OLIRegional
        "administrativeArea2" -> Right OLIADMINISTRATIVEAREA2
        "locality" -> Right OLILocality
        "subLocality1" -> Right OLISUBLOCALITY1
        "subLocality2" -> Right OLISUBLOCALITY2
        "special" -> Right OLISpecial
        x -> Left ("Unable to parse OfficeLevelsItem from: " <> x)

instance ToHttpApiData OfficeLevelsItem where
    toQueryParam = \case
        OLIInternational -> "international"
        OLICountry -> "country"
        OLIADMINISTRATIVEAREA1 -> "administrativeArea1"
        OLIRegional -> "regional"
        OLIADMINISTRATIVEAREA2 -> "administrativeArea2"
        OLILocality -> "locality"
        OLISUBLOCALITY1 -> "subLocality1"
        OLISUBLOCALITY2 -> "subLocality2"
        OLISpecial -> "special"

instance FromJSON OfficeLevelsItem where
    parseJSON = parseJSONText "OfficeLevelsItem"

instance ToJSON OfficeLevelsItem where
    toJSON = toJSONText

-- | The geographic scope of this district. If unspecified the district\'s
-- geography is not known. One of: national, statewide, congressional,
-- stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide,
-- township, countyCouncil, cityCouncil, ward, special
data ElectoralDistrictScope
    = EDSStatewide
      -- ^ @statewide@
    | EDSCongressional
      -- ^ @congressional@
    | EDSStateUpper
      -- ^ @stateUpper@
    | EDSStateLower
      -- ^ @stateLower@
    | EDSCountywide
      -- ^ @countywide@
    | EDSJudicial
      -- ^ @judicial@
    | EDSSchoolBoard
      -- ^ @schoolBoard@
    | EDSCitywide
      -- ^ @citywide@
    | EDSSpecial
      -- ^ @special@
    | EDSCountyCouncil
      -- ^ @countyCouncil@
    | EDSTownship
      -- ^ @township@
    | EDSWard
      -- ^ @ward@
    | EDSCityCouncil
      -- ^ @cityCouncil@
    | EDSNATional
      -- ^ @national@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ElectoralDistrictScope

instance FromHttpApiData ElectoralDistrictScope where
    parseQueryParam = \case
        "statewide" -> Right EDSStatewide
        "congressional" -> Right EDSCongressional
        "stateUpper" -> Right EDSStateUpper
        "stateLower" -> Right EDSStateLower
        "countywide" -> Right EDSCountywide
        "judicial" -> Right EDSJudicial
        "schoolBoard" -> Right EDSSchoolBoard
        "citywide" -> Right EDSCitywide
        "special" -> Right EDSSpecial
        "countyCouncil" -> Right EDSCountyCouncil
        "township" -> Right EDSTownship
        "ward" -> Right EDSWard
        "cityCouncil" -> Right EDSCityCouncil
        "national" -> Right EDSNATional
        x -> Left ("Unable to parse ElectoralDistrictScope from: " <> x)

instance ToHttpApiData ElectoralDistrictScope where
    toQueryParam = \case
        EDSStatewide -> "statewide"
        EDSCongressional -> "congressional"
        EDSStateUpper -> "stateUpper"
        EDSStateLower -> "stateLower"
        EDSCountywide -> "countywide"
        EDSJudicial -> "judicial"
        EDSSchoolBoard -> "schoolBoard"
        EDSCitywide -> "citywide"
        EDSSpecial -> "special"
        EDSCountyCouncil -> "countyCouncil"
        EDSTownship -> "township"
        EDSWard -> "ward"
        EDSCityCouncil -> "cityCouncil"
        EDSNATional -> "national"

instance FromJSON ElectoralDistrictScope where
    parseJSON = parseJSONText "ElectoralDistrictScope"

instance ToJSON ElectoralDistrictScope where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data RepresentativesRepresentativeInfoByAddressRoles
    = RRIBARHeadOfState
      -- ^ @headOfState@
    | RRIBARHeadOfGovernment
      -- ^ @headOfGovernment@
    | RRIBARDeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | RRIBARGovernmentOfficer
      -- ^ @governmentOfficer@
    | RRIBARExecutiveCouncil
      -- ^ @executiveCouncil@
    | RRIBARLegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | RRIBARLegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | RRIBARHighestCourtJudge
      -- ^ @highestCourtJudge@
    | RRIBARJudge
      -- ^ @judge@
    | RRIBARSchoolBoard
      -- ^ @schoolBoard@
    | RRIBARSpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
    | RRIBAROtherRole
      -- ^ @otherRole@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepresentativesRepresentativeInfoByAddressRoles

instance FromHttpApiData RepresentativesRepresentativeInfoByAddressRoles where
    parseQueryParam = \case
        "headOfState" -> Right RRIBARHeadOfState
        "headOfGovernment" -> Right RRIBARHeadOfGovernment
        "deputyHeadOfGovernment" -> Right RRIBARDeputyHeadOfGovernment
        "governmentOfficer" -> Right RRIBARGovernmentOfficer
        "executiveCouncil" -> Right RRIBARExecutiveCouncil
        "legislatorUpperBody" -> Right RRIBARLegislatorUpperBody
        "legislatorLowerBody" -> Right RRIBARLegislatorLowerBody
        "highestCourtJudge" -> Right RRIBARHighestCourtJudge
        "judge" -> Right RRIBARJudge
        "schoolBoard" -> Right RRIBARSchoolBoard
        "specialPurposeOfficer" -> Right RRIBARSpecialPurposeOfficer
        "otherRole" -> Right RRIBAROtherRole
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByAddressRoles from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByAddressRoles where
    toQueryParam = \case
        RRIBARHeadOfState -> "headOfState"
        RRIBARHeadOfGovernment -> "headOfGovernment"
        RRIBARDeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        RRIBARGovernmentOfficer -> "governmentOfficer"
        RRIBARExecutiveCouncil -> "executiveCouncil"
        RRIBARLegislatorUpperBody -> "legislatorUpperBody"
        RRIBARLegislatorLowerBody -> "legislatorLowerBody"
        RRIBARHighestCourtJudge -> "highestCourtJudge"
        RRIBARJudge -> "judge"
        RRIBARSchoolBoard -> "schoolBoard"
        RRIBARSpecialPurposeOfficer -> "specialPurposeOfficer"
        RRIBAROtherRole -> "otherRole"

instance FromJSON RepresentativesRepresentativeInfoByAddressRoles where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByAddressRoles"

instance ToJSON RepresentativesRepresentativeInfoByAddressRoles where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

data OfficeRolesItem
    = ORIHeadOfState
      -- ^ @headOfState@
    | ORIHeadOfGovernment
      -- ^ @headOfGovernment@
    | ORIDeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | ORIGovernmentOfficer
      -- ^ @governmentOfficer@
    | ORIExecutiveCouncil
      -- ^ @executiveCouncil@
    | ORILegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | ORILegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | ORIHighestCourtJudge
      -- ^ @highestCourtJudge@
    | ORIJudge
      -- ^ @judge@
    | ORISchoolBoard
      -- ^ @schoolBoard@
    | ORISpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
    | ORIOtherRole
      -- ^ @otherRole@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OfficeRolesItem

instance FromHttpApiData OfficeRolesItem where
    parseQueryParam = \case
        "headOfState" -> Right ORIHeadOfState
        "headOfGovernment" -> Right ORIHeadOfGovernment
        "deputyHeadOfGovernment" -> Right ORIDeputyHeadOfGovernment
        "governmentOfficer" -> Right ORIGovernmentOfficer
        "executiveCouncil" -> Right ORIExecutiveCouncil
        "legislatorUpperBody" -> Right ORILegislatorUpperBody
        "legislatorLowerBody" -> Right ORILegislatorLowerBody
        "highestCourtJudge" -> Right ORIHighestCourtJudge
        "judge" -> Right ORIJudge
        "schoolBoard" -> Right ORISchoolBoard
        "specialPurposeOfficer" -> Right ORISpecialPurposeOfficer
        "otherRole" -> Right ORIOtherRole
        x -> Left ("Unable to parse OfficeRolesItem from: " <> x)

instance ToHttpApiData OfficeRolesItem where
    toQueryParam = \case
        ORIHeadOfState -> "headOfState"
        ORIHeadOfGovernment -> "headOfGovernment"
        ORIDeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        ORIGovernmentOfficer -> "governmentOfficer"
        ORIExecutiveCouncil -> "executiveCouncil"
        ORILegislatorUpperBody -> "legislatorUpperBody"
        ORILegislatorLowerBody -> "legislatorLowerBody"
        ORIHighestCourtJudge -> "highestCourtJudge"
        ORIJudge -> "judge"
        ORISchoolBoard -> "schoolBoard"
        ORISpecialPurposeOfficer -> "specialPurposeOfficer"
        ORIOtherRole -> "otherRole"

instance FromJSON OfficeRolesItem where
    parseJSON = parseJSONText "OfficeRolesItem"

instance ToJSON OfficeRolesItem where
    toJSON = toJSONText

data ContestRolesItem
    = CRIHeadOfState
      -- ^ @headOfState@
    | CRIHeadOfGovernment
      -- ^ @headOfGovernment@
    | CRIDeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | CRIGovernmentOfficer
      -- ^ @governmentOfficer@
    | CRIExecutiveCouncil
      -- ^ @executiveCouncil@
    | CRILegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | CRILegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | CRIHighestCourtJudge
      -- ^ @highestCourtJudge@
    | CRIJudge
      -- ^ @judge@
    | CRISchoolBoard
      -- ^ @schoolBoard@
    | CRISpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
    | CRIOtherRole
      -- ^ @otherRole@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ContestRolesItem

instance FromHttpApiData ContestRolesItem where
    parseQueryParam = \case
        "headOfState" -> Right CRIHeadOfState
        "headOfGovernment" -> Right CRIHeadOfGovernment
        "deputyHeadOfGovernment" -> Right CRIDeputyHeadOfGovernment
        "governmentOfficer" -> Right CRIGovernmentOfficer
        "executiveCouncil" -> Right CRIExecutiveCouncil
        "legislatorUpperBody" -> Right CRILegislatorUpperBody
        "legislatorLowerBody" -> Right CRILegislatorLowerBody
        "highestCourtJudge" -> Right CRIHighestCourtJudge
        "judge" -> Right CRIJudge
        "schoolBoard" -> Right CRISchoolBoard
        "specialPurposeOfficer" -> Right CRISpecialPurposeOfficer
        "otherRole" -> Right CRIOtherRole
        x -> Left ("Unable to parse ContestRolesItem from: " <> x)

instance ToHttpApiData ContestRolesItem where
    toQueryParam = \case
        CRIHeadOfState -> "headOfState"
        CRIHeadOfGovernment -> "headOfGovernment"
        CRIDeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        CRIGovernmentOfficer -> "governmentOfficer"
        CRIExecutiveCouncil -> "executiveCouncil"
        CRILegislatorUpperBody -> "legislatorUpperBody"
        CRILegislatorLowerBody -> "legislatorLowerBody"
        CRIHighestCourtJudge -> "highestCourtJudge"
        CRIJudge -> "judge"
        CRISchoolBoard -> "schoolBoard"
        CRISpecialPurposeOfficer -> "specialPurposeOfficer"
        CRIOtherRole -> "otherRole"

instance FromJSON ContestRolesItem where
    parseJSON = parseJSONText "ContestRolesItem"

instance ToJSON ContestRolesItem where
    toJSON = toJSONText
