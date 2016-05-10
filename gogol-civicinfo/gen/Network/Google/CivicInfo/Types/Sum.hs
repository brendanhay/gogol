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

import           Network.Google.Prelude

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data RepresentativesRepresentativeInfoByDivisionLevels
    = ADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | ADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | Country
      -- ^ @country@
    | International
      -- ^ @international@
    | Locality
      -- ^ @locality@
    | Regional
      -- ^ @regional@
    | Special
      -- ^ @special@
    | SUBLOCALITY1
      -- ^ @subLocality1@
    | SUBLOCALITY2
      -- ^ @subLocality2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RepresentativesRepresentativeInfoByDivisionLevels

instance FromHttpApiData RepresentativesRepresentativeInfoByDivisionLevels where
    parseQueryParam = \case
        "administrativeArea1" -> Right ADMINISTRATIVEAREA1
        "administrativeArea2" -> Right ADMINISTRATIVEAREA2
        "country" -> Right Country
        "international" -> Right International
        "locality" -> Right Locality
        "regional" -> Right Regional
        "special" -> Right Special
        "subLocality1" -> Right SUBLOCALITY1
        "subLocality2" -> Right SUBLOCALITY2
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByDivisionLevels from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByDivisionLevels where
    toQueryParam = \case
        ADMINISTRATIVEAREA1 -> "administrativeArea1"
        ADMINISTRATIVEAREA2 -> "administrativeArea2"
        Country -> "country"
        International -> "international"
        Locality -> "locality"
        Regional -> "regional"
        Special -> "special"
        SUBLOCALITY1 -> "subLocality1"
        SUBLOCALITY2 -> "subLocality2"

instance FromJSON RepresentativesRepresentativeInfoByDivisionLevels where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByDivisionLevels"

instance ToJSON RepresentativesRepresentativeInfoByDivisionLevels where
    toJSON = toJSONText

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data RepresentativesRepresentativeInfoByAddressLevels
    = RRIBALADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | RRIBALADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | RRIBALCountry
      -- ^ @country@
    | RRIBALInternational
      -- ^ @international@
    | RRIBALLocality
      -- ^ @locality@
    | RRIBALRegional
      -- ^ @regional@
    | RRIBALSpecial
      -- ^ @special@
    | RRIBALSUBLOCALITY1
      -- ^ @subLocality1@
    | RRIBALSUBLOCALITY2
      -- ^ @subLocality2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RepresentativesRepresentativeInfoByAddressLevels

instance FromHttpApiData RepresentativesRepresentativeInfoByAddressLevels where
    parseQueryParam = \case
        "administrativeArea1" -> Right RRIBALADMINISTRATIVEAREA1
        "administrativeArea2" -> Right RRIBALADMINISTRATIVEAREA2
        "country" -> Right RRIBALCountry
        "international" -> Right RRIBALInternational
        "locality" -> Right RRIBALLocality
        "regional" -> Right RRIBALRegional
        "special" -> Right RRIBALSpecial
        "subLocality1" -> Right RRIBALSUBLOCALITY1
        "subLocality2" -> Right RRIBALSUBLOCALITY2
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByAddressLevels from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByAddressLevels where
    toQueryParam = \case
        RRIBALADMINISTRATIVEAREA1 -> "administrativeArea1"
        RRIBALADMINISTRATIVEAREA2 -> "administrativeArea2"
        RRIBALCountry -> "country"
        RRIBALInternational -> "international"
        RRIBALLocality -> "locality"
        RRIBALRegional -> "regional"
        RRIBALSpecial -> "special"
        RRIBALSUBLOCALITY1 -> "subLocality1"
        RRIBALSUBLOCALITY2 -> "subLocality2"

instance FromJSON RepresentativesRepresentativeInfoByAddressLevels where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByAddressLevels"

instance ToJSON RepresentativesRepresentativeInfoByAddressLevels where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data RepresentativesRepresentativeInfoByDivisionRoles
    = DeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | ExecutiveCouncil
      -- ^ @executiveCouncil@
    | GovernmentOfficer
      -- ^ @governmentOfficer@
    | HeadOfGovernment
      -- ^ @headOfGovernment@
    | HeadOfState
      -- ^ @headOfState@
    | HighestCourtJudge
      -- ^ @highestCourtJudge@
    | Judge
      -- ^ @judge@
    | LegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | LegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | SchoolBoard
      -- ^ @schoolBoard@
    | SpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RepresentativesRepresentativeInfoByDivisionRoles

instance FromHttpApiData RepresentativesRepresentativeInfoByDivisionRoles where
    parseQueryParam = \case
        "deputyHeadOfGovernment" -> Right DeputyHeadOfGovernment
        "executiveCouncil" -> Right ExecutiveCouncil
        "governmentOfficer" -> Right GovernmentOfficer
        "headOfGovernment" -> Right HeadOfGovernment
        "headOfState" -> Right HeadOfState
        "highestCourtJudge" -> Right HighestCourtJudge
        "judge" -> Right Judge
        "legislatorLowerBody" -> Right LegislatorLowerBody
        "legislatorUpperBody" -> Right LegislatorUpperBody
        "schoolBoard" -> Right SchoolBoard
        "specialPurposeOfficer" -> Right SpecialPurposeOfficer
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByDivisionRoles from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByDivisionRoles where
    toQueryParam = \case
        DeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        ExecutiveCouncil -> "executiveCouncil"
        GovernmentOfficer -> "governmentOfficer"
        HeadOfGovernment -> "headOfGovernment"
        HeadOfState -> "headOfState"
        HighestCourtJudge -> "highestCourtJudge"
        Judge -> "judge"
        LegislatorLowerBody -> "legislatorLowerBody"
        LegislatorUpperBody -> "legislatorUpperBody"
        SchoolBoard -> "schoolBoard"
        SpecialPurposeOfficer -> "specialPurposeOfficer"

instance FromJSON RepresentativesRepresentativeInfoByDivisionRoles where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByDivisionRoles"

instance ToJSON RepresentativesRepresentativeInfoByDivisionRoles where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data RepresentativesRepresentativeInfoByAddressRoles
    = RRIBARDeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | RRIBARExecutiveCouncil
      -- ^ @executiveCouncil@
    | RRIBARGovernmentOfficer
      -- ^ @governmentOfficer@
    | RRIBARHeadOfGovernment
      -- ^ @headOfGovernment@
    | RRIBARHeadOfState
      -- ^ @headOfState@
    | RRIBARHighestCourtJudge
      -- ^ @highestCourtJudge@
    | RRIBARJudge
      -- ^ @judge@
    | RRIBARLegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | RRIBARLegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | RRIBARSchoolBoard
      -- ^ @schoolBoard@
    | RRIBARSpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RepresentativesRepresentativeInfoByAddressRoles

instance FromHttpApiData RepresentativesRepresentativeInfoByAddressRoles where
    parseQueryParam = \case
        "deputyHeadOfGovernment" -> Right RRIBARDeputyHeadOfGovernment
        "executiveCouncil" -> Right RRIBARExecutiveCouncil
        "governmentOfficer" -> Right RRIBARGovernmentOfficer
        "headOfGovernment" -> Right RRIBARHeadOfGovernment
        "headOfState" -> Right RRIBARHeadOfState
        "highestCourtJudge" -> Right RRIBARHighestCourtJudge
        "judge" -> Right RRIBARJudge
        "legislatorLowerBody" -> Right RRIBARLegislatorLowerBody
        "legislatorUpperBody" -> Right RRIBARLegislatorUpperBody
        "schoolBoard" -> Right RRIBARSchoolBoard
        "specialPurposeOfficer" -> Right RRIBARSpecialPurposeOfficer
        x -> Left ("Unable to parse RepresentativesRepresentativeInfoByAddressRoles from: " <> x)

instance ToHttpApiData RepresentativesRepresentativeInfoByAddressRoles where
    toQueryParam = \case
        RRIBARDeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        RRIBARExecutiveCouncil -> "executiveCouncil"
        RRIBARGovernmentOfficer -> "governmentOfficer"
        RRIBARHeadOfGovernment -> "headOfGovernment"
        RRIBARHeadOfState -> "headOfState"
        RRIBARHighestCourtJudge -> "highestCourtJudge"
        RRIBARJudge -> "judge"
        RRIBARLegislatorLowerBody -> "legislatorLowerBody"
        RRIBARLegislatorUpperBody -> "legislatorUpperBody"
        RRIBARSchoolBoard -> "schoolBoard"
        RRIBARSpecialPurposeOfficer -> "specialPurposeOfficer"

instance FromJSON RepresentativesRepresentativeInfoByAddressRoles where
    parseJSON = parseJSONText "RepresentativesRepresentativeInfoByAddressRoles"

instance ToJSON RepresentativesRepresentativeInfoByAddressRoles where
    toJSON = toJSONText
