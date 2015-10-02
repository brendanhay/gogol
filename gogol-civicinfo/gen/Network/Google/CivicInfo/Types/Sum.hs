{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CivicInfo.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
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
data CivicInfoRepresentativesRepresentativeInfoByDivisionLevels
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

instance Hashable CivicInfoRepresentativesRepresentativeInfoByDivisionLevels

instance FromText CivicInfoRepresentativesRepresentativeInfoByDivisionLevels where
    fromText = \case
        "administrativeArea1" -> Just ADMINISTRATIVEAREA1
        "administrativeArea2" -> Just ADMINISTRATIVEAREA2
        "country" -> Just Country
        "international" -> Just International
        "locality" -> Just Locality
        "regional" -> Just Regional
        "special" -> Just Special
        "subLocality1" -> Just SUBLOCALITY1
        "subLocality2" -> Just SUBLOCALITY2
        _ -> Nothing

instance ToText CivicInfoRepresentativesRepresentativeInfoByDivisionLevels where
    toText = \case
        ADMINISTRATIVEAREA1 -> "administrativeArea1"
        ADMINISTRATIVEAREA2 -> "administrativeArea2"
        Country -> "country"
        International -> "international"
        Locality -> "locality"
        Regional -> "regional"
        Special -> "special"
        SUBLOCALITY1 -> "subLocality1"
        SUBLOCALITY2 -> "subLocality2"

instance FromJSON CivicInfoRepresentativesRepresentativeInfoByDivisionLevels where
    parseJSON = parseJSONText "CivicInfoRepresentativesRepresentativeInfoByDivisionLevels"

instance ToJSON CivicInfoRepresentativesRepresentativeInfoByDivisionLevels where
    toJSON = toJSONText

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data CivicInfoRepresentativesRepresentativeInfoByAddressLevels
    = CIRRIBALADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | CIRRIBALADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | CIRRIBALCountry
      -- ^ @country@
    | CIRRIBALInternational
      -- ^ @international@
    | CIRRIBALLocality
      -- ^ @locality@
    | CIRRIBALRegional
      -- ^ @regional@
    | CIRRIBALSpecial
      -- ^ @special@
    | CIRRIBALSUBLOCALITY1
      -- ^ @subLocality1@
    | CIRRIBALSUBLOCALITY2
      -- ^ @subLocality2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CivicInfoRepresentativesRepresentativeInfoByAddressLevels

instance FromText CivicInfoRepresentativesRepresentativeInfoByAddressLevels where
    fromText = \case
        "administrativeArea1" -> Just CIRRIBALADMINISTRATIVEAREA1
        "administrativeArea2" -> Just CIRRIBALADMINISTRATIVEAREA2
        "country" -> Just CIRRIBALCountry
        "international" -> Just CIRRIBALInternational
        "locality" -> Just CIRRIBALLocality
        "regional" -> Just CIRRIBALRegional
        "special" -> Just CIRRIBALSpecial
        "subLocality1" -> Just CIRRIBALSUBLOCALITY1
        "subLocality2" -> Just CIRRIBALSUBLOCALITY2
        _ -> Nothing

instance ToText CivicInfoRepresentativesRepresentativeInfoByAddressLevels where
    toText = \case
        CIRRIBALADMINISTRATIVEAREA1 -> "administrativeArea1"
        CIRRIBALADMINISTRATIVEAREA2 -> "administrativeArea2"
        CIRRIBALCountry -> "country"
        CIRRIBALInternational -> "international"
        CIRRIBALLocality -> "locality"
        CIRRIBALRegional -> "regional"
        CIRRIBALSpecial -> "special"
        CIRRIBALSUBLOCALITY1 -> "subLocality1"
        CIRRIBALSUBLOCALITY2 -> "subLocality2"

instance FromJSON CivicInfoRepresentativesRepresentativeInfoByAddressLevels where
    parseJSON = parseJSONText "CivicInfoRepresentativesRepresentativeInfoByAddressLevels"

instance ToJSON CivicInfoRepresentativesRepresentativeInfoByAddressLevels where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data CivicInfoRepresentativesRepresentativeInfoByDivisionRoles
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

instance Hashable CivicInfoRepresentativesRepresentativeInfoByDivisionRoles

instance FromText CivicInfoRepresentativesRepresentativeInfoByDivisionRoles where
    fromText = \case
        "deputyHeadOfGovernment" -> Just DeputyHeadOfGovernment
        "executiveCouncil" -> Just ExecutiveCouncil
        "governmentOfficer" -> Just GovernmentOfficer
        "headOfGovernment" -> Just HeadOfGovernment
        "headOfState" -> Just HeadOfState
        "highestCourtJudge" -> Just HighestCourtJudge
        "judge" -> Just Judge
        "legislatorLowerBody" -> Just LegislatorLowerBody
        "legislatorUpperBody" -> Just LegislatorUpperBody
        "schoolBoard" -> Just SchoolBoard
        "specialPurposeOfficer" -> Just SpecialPurposeOfficer
        _ -> Nothing

instance ToText CivicInfoRepresentativesRepresentativeInfoByDivisionRoles where
    toText = \case
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

instance FromJSON CivicInfoRepresentativesRepresentativeInfoByDivisionRoles where
    parseJSON = parseJSONText "CivicInfoRepresentativesRepresentativeInfoByDivisionRoles"

instance ToJSON CivicInfoRepresentativesRepresentativeInfoByDivisionRoles where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data CivicInfoRepresentativesRepresentativeInfoByAddressRoles
    = CIRRIBARDeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | CIRRIBARExecutiveCouncil
      -- ^ @executiveCouncil@
    | CIRRIBARGovernmentOfficer
      -- ^ @governmentOfficer@
    | CIRRIBARHeadOfGovernment
      -- ^ @headOfGovernment@
    | CIRRIBARHeadOfState
      -- ^ @headOfState@
    | CIRRIBARHighestCourtJudge
      -- ^ @highestCourtJudge@
    | CIRRIBARJudge
      -- ^ @judge@
    | CIRRIBARLegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | CIRRIBARLegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | CIRRIBARSchoolBoard
      -- ^ @schoolBoard@
    | CIRRIBARSpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CivicInfoRepresentativesRepresentativeInfoByAddressRoles

instance FromText CivicInfoRepresentativesRepresentativeInfoByAddressRoles where
    fromText = \case
        "deputyHeadOfGovernment" -> Just CIRRIBARDeputyHeadOfGovernment
        "executiveCouncil" -> Just CIRRIBARExecutiveCouncil
        "governmentOfficer" -> Just CIRRIBARGovernmentOfficer
        "headOfGovernment" -> Just CIRRIBARHeadOfGovernment
        "headOfState" -> Just CIRRIBARHeadOfState
        "highestCourtJudge" -> Just CIRRIBARHighestCourtJudge
        "judge" -> Just CIRRIBARJudge
        "legislatorLowerBody" -> Just CIRRIBARLegislatorLowerBody
        "legislatorUpperBody" -> Just CIRRIBARLegislatorUpperBody
        "schoolBoard" -> Just CIRRIBARSchoolBoard
        "specialPurposeOfficer" -> Just CIRRIBARSpecialPurposeOfficer
        _ -> Nothing

instance ToText CivicInfoRepresentativesRepresentativeInfoByAddressRoles where
    toText = \case
        CIRRIBARDeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        CIRRIBARExecutiveCouncil -> "executiveCouncil"
        CIRRIBARGovernmentOfficer -> "governmentOfficer"
        CIRRIBARHeadOfGovernment -> "headOfGovernment"
        CIRRIBARHeadOfState -> "headOfState"
        CIRRIBARHighestCourtJudge -> "highestCourtJudge"
        CIRRIBARJudge -> "judge"
        CIRRIBARLegislatorLowerBody -> "legislatorLowerBody"
        CIRRIBARLegislatorUpperBody -> "legislatorUpperBody"
        CIRRIBARSchoolBoard -> "schoolBoard"
        CIRRIBARSpecialPurposeOfficer -> "specialPurposeOfficer"

instance FromJSON CivicInfoRepresentativesRepresentativeInfoByAddressRoles where
    parseJSON = parseJSONText "CivicInfoRepresentativesRepresentativeInfoByAddressRoles"

instance ToJSON CivicInfoRepresentativesRepresentativeInfoByAddressRoles where
    toJSON = toJSONText
