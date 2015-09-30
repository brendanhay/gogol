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
data CivicinfoRepresentativesRepresentativeInfoByDivisionLevels
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

instance Hashable CivicinfoRepresentativesRepresentativeInfoByDivisionLevels

instance FromText CivicinfoRepresentativesRepresentativeInfoByDivisionLevels where
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

instance ToText CivicinfoRepresentativesRepresentativeInfoByDivisionLevels where
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

instance FromJSON CivicinfoRepresentativesRepresentativeInfoByDivisionLevels where
    parseJSON = parseJSONText "CivicinfoRepresentativesRepresentativeInfoByDivisionLevels"

instance ToJSON CivicinfoRepresentativesRepresentativeInfoByDivisionLevels where
    toJSON = toJSONText

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data CivicinfoRepresentativesRepresentativeInfoByAddressLevels
    = CRRIBALADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | CRRIBALADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | CRRIBALCountry
      -- ^ @country@
    | CRRIBALInternational
      -- ^ @international@
    | CRRIBALLocality
      -- ^ @locality@
    | CRRIBALRegional
      -- ^ @regional@
    | CRRIBALSpecial
      -- ^ @special@
    | CRRIBALSUBLOCALITY1
      -- ^ @subLocality1@
    | CRRIBALSUBLOCALITY2
      -- ^ @subLocality2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CivicinfoRepresentativesRepresentativeInfoByAddressLevels

instance FromText CivicinfoRepresentativesRepresentativeInfoByAddressLevels where
    fromText = \case
        "administrativeArea1" -> Just CRRIBALADMINISTRATIVEAREA1
        "administrativeArea2" -> Just CRRIBALADMINISTRATIVEAREA2
        "country" -> Just CRRIBALCountry
        "international" -> Just CRRIBALInternational
        "locality" -> Just CRRIBALLocality
        "regional" -> Just CRRIBALRegional
        "special" -> Just CRRIBALSpecial
        "subLocality1" -> Just CRRIBALSUBLOCALITY1
        "subLocality2" -> Just CRRIBALSUBLOCALITY2
        _ -> Nothing

instance ToText CivicinfoRepresentativesRepresentativeInfoByAddressLevels where
    toText = \case
        CRRIBALADMINISTRATIVEAREA1 -> "administrativeArea1"
        CRRIBALADMINISTRATIVEAREA2 -> "administrativeArea2"
        CRRIBALCountry -> "country"
        CRRIBALInternational -> "international"
        CRRIBALLocality -> "locality"
        CRRIBALRegional -> "regional"
        CRRIBALSpecial -> "special"
        CRRIBALSUBLOCALITY1 -> "subLocality1"
        CRRIBALSUBLOCALITY2 -> "subLocality2"

instance FromJSON CivicinfoRepresentativesRepresentativeInfoByAddressLevels where
    parseJSON = parseJSONText "CivicinfoRepresentativesRepresentativeInfoByAddressLevels"

instance ToJSON CivicinfoRepresentativesRepresentativeInfoByAddressLevels where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data CivicinfoRepresentativesRepresentativeInfoByDivisionRoles
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

instance Hashable CivicinfoRepresentativesRepresentativeInfoByDivisionRoles

instance FromText CivicinfoRepresentativesRepresentativeInfoByDivisionRoles where
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

instance ToText CivicinfoRepresentativesRepresentativeInfoByDivisionRoles where
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

instance FromJSON CivicinfoRepresentativesRepresentativeInfoByDivisionRoles where
    parseJSON = parseJSONText "CivicinfoRepresentativesRepresentativeInfoByDivisionRoles"

instance ToJSON CivicinfoRepresentativesRepresentativeInfoByDivisionRoles where
    toJSON = toJSONText

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data CivicinfoRepresentativesRepresentativeInfoByAddressRoles
    = CRRIBARDeputyHeadOfGovernment
      -- ^ @deputyHeadOfGovernment@
    | CRRIBARExecutiveCouncil
      -- ^ @executiveCouncil@
    | CRRIBARGovernmentOfficer
      -- ^ @governmentOfficer@
    | CRRIBARHeadOfGovernment
      -- ^ @headOfGovernment@
    | CRRIBARHeadOfState
      -- ^ @headOfState@
    | CRRIBARHighestCourtJudge
      -- ^ @highestCourtJudge@
    | CRRIBARJudge
      -- ^ @judge@
    | CRRIBARLegislatorLowerBody
      -- ^ @legislatorLowerBody@
    | CRRIBARLegislatorUpperBody
      -- ^ @legislatorUpperBody@
    | CRRIBARSchoolBoard
      -- ^ @schoolBoard@
    | CRRIBARSpecialPurposeOfficer
      -- ^ @specialPurposeOfficer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CivicinfoRepresentativesRepresentativeInfoByAddressRoles

instance FromText CivicinfoRepresentativesRepresentativeInfoByAddressRoles where
    fromText = \case
        "deputyHeadOfGovernment" -> Just CRRIBARDeputyHeadOfGovernment
        "executiveCouncil" -> Just CRRIBARExecutiveCouncil
        "governmentOfficer" -> Just CRRIBARGovernmentOfficer
        "headOfGovernment" -> Just CRRIBARHeadOfGovernment
        "headOfState" -> Just CRRIBARHeadOfState
        "highestCourtJudge" -> Just CRRIBARHighestCourtJudge
        "judge" -> Just CRRIBARJudge
        "legislatorLowerBody" -> Just CRRIBARLegislatorLowerBody
        "legislatorUpperBody" -> Just CRRIBARLegislatorUpperBody
        "schoolBoard" -> Just CRRIBARSchoolBoard
        "specialPurposeOfficer" -> Just CRRIBARSpecialPurposeOfficer
        _ -> Nothing

instance ToText CivicinfoRepresentativesRepresentativeInfoByAddressRoles where
    toText = \case
        CRRIBARDeputyHeadOfGovernment -> "deputyHeadOfGovernment"
        CRRIBARExecutiveCouncil -> "executiveCouncil"
        CRRIBARGovernmentOfficer -> "governmentOfficer"
        CRRIBARHeadOfGovernment -> "headOfGovernment"
        CRRIBARHeadOfState -> "headOfState"
        CRRIBARHighestCourtJudge -> "highestCourtJudge"
        CRRIBARJudge -> "judge"
        CRRIBARLegislatorLowerBody -> "legislatorLowerBody"
        CRRIBARLegislatorUpperBody -> "legislatorUpperBody"
        CRRIBARSchoolBoard -> "schoolBoard"
        CRRIBARSpecialPurposeOfficer -> "specialPurposeOfficer"

instance FromJSON CivicinfoRepresentativesRepresentativeInfoByAddressRoles where
    parseJSON = parseJSONText "CivicinfoRepresentativesRepresentativeInfoByAddressRoles"

instance ToJSON CivicinfoRepresentativesRepresentativeInfoByAddressRoles where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
