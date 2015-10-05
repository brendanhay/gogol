{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

instance FromText RepresentativesRepresentativeInfoByDivisionLevels where
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

instance ToText RepresentativesRepresentativeInfoByDivisionLevels where
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

instance FromText RepresentativesRepresentativeInfoByAddressLevels where
    fromText = \case
        "administrativeArea1" -> Just RRIBALADMINISTRATIVEAREA1
        "administrativeArea2" -> Just RRIBALADMINISTRATIVEAREA2
        "country" -> Just RRIBALCountry
        "international" -> Just RRIBALInternational
        "locality" -> Just RRIBALLocality
        "regional" -> Just RRIBALRegional
        "special" -> Just RRIBALSpecial
        "subLocality1" -> Just RRIBALSUBLOCALITY1
        "subLocality2" -> Just RRIBALSUBLOCALITY2
        _ -> Nothing

instance ToText RepresentativesRepresentativeInfoByAddressLevels where
    toText = \case
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

instance FromText RepresentativesRepresentativeInfoByDivisionRoles where
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

instance ToText RepresentativesRepresentativeInfoByDivisionRoles where
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

instance FromText RepresentativesRepresentativeInfoByAddressRoles where
    fromText = \case
        "deputyHeadOfGovernment" -> Just RRIBARDeputyHeadOfGovernment
        "executiveCouncil" -> Just RRIBARExecutiveCouncil
        "governmentOfficer" -> Just RRIBARGovernmentOfficer
        "headOfGovernment" -> Just RRIBARHeadOfGovernment
        "headOfState" -> Just RRIBARHeadOfState
        "highestCourtJudge" -> Just RRIBARHighestCourtJudge
        "judge" -> Just RRIBARJudge
        "legislatorLowerBody" -> Just RRIBARLegislatorLowerBody
        "legislatorUpperBody" -> Just RRIBARLegislatorUpperBody
        "schoolBoard" -> Just RRIBARSchoolBoard
        "specialPurposeOfficer" -> Just RRIBARSpecialPurposeOfficer
        _ -> Nothing

instance ToText RepresentativesRepresentativeInfoByAddressRoles where
    toText = \case
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
