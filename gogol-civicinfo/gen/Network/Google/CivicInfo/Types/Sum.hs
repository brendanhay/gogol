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

-- | A list of office roles to filter by. Only offices fulfilling one of
-- these roles will be returned. Divisions that don\'t contain a matching
-- office will not be returned.
data Roles
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

instance Hashable Roles

instance FromText Roles where
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

instance ToText Roles where
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

instance FromJSON Roles where
    parseJSON = parseJSONText "Roles"

instance ToJSON Roles where
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

-- | A list of office levels to filter by. Only offices that serve at least
-- one of these levels will be returned. Divisions that don\'t contain a
-- matching office will not be returned.
data Levels
    = LADMINISTRATIVEAREA1
      -- ^ @administrativeArea1@
    | LADMINISTRATIVEAREA2
      -- ^ @administrativeArea2@
    | LCountry
      -- ^ @country@
    | LInternational
      -- ^ @international@
    | LLocality
      -- ^ @locality@
    | LRegional
      -- ^ @regional@
    | LSpecial
      -- ^ @special@
    | LSUBLOCALITY1
      -- ^ @subLocality1@
    | LSUBLOCALITY2
      -- ^ @subLocality2@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Levels

instance FromText Levels where
    fromText = \case
        "administrativeArea1" -> Just LADMINISTRATIVEAREA1
        "administrativeArea2" -> Just LADMINISTRATIVEAREA2
        "country" -> Just LCountry
        "international" -> Just LInternational
        "locality" -> Just LLocality
        "regional" -> Just LRegional
        "special" -> Just LSpecial
        "subLocality1" -> Just LSUBLOCALITY1
        "subLocality2" -> Just LSUBLOCALITY2
        _ -> Nothing

instance ToText Levels where
    toText = \case
        LADMINISTRATIVEAREA1 -> "administrativeArea1"
        LADMINISTRATIVEAREA2 -> "administrativeArea2"
        LCountry -> "country"
        LInternational -> "international"
        LLocality -> "locality"
        LRegional -> "regional"
        LSpecial -> "special"
        LSUBLOCALITY1 -> "subLocality1"
        LSUBLOCALITY2 -> "subLocality2"

instance FromJSON Levels where
    parseJSON = parseJSONText "Levels"

instance ToJSON Levels where
    toJSON = toJSONText
