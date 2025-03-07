{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CivicInfo.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CivicInfo.Internal.Sum
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

    -- * Election_ShapeLookupBehavior
    Election_ShapeLookupBehavior
      ( Election_ShapeLookupBehavior_ShapeLookupDefault,
        Election_ShapeLookupBehavior_ShapeLookupDisabled,
        Election_ShapeLookupBehavior_ShapeLookupEnabled,
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

import Gogol.Prelude qualified as Core

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

pattern Contest_LevelItem_International :: Contest_LevelItem
pattern Contest_LevelItem_International = Contest_LevelItem "international"

pattern Contest_LevelItem_Country :: Contest_LevelItem
pattern Contest_LevelItem_Country = Contest_LevelItem "country"

pattern Contest_LevelItem_ADMINISTRATIVEAREA1 :: Contest_LevelItem
pattern Contest_LevelItem_ADMINISTRATIVEAREA1 = Contest_LevelItem "administrativeArea1"

pattern Contest_LevelItem_Regional :: Contest_LevelItem
pattern Contest_LevelItem_Regional = Contest_LevelItem "regional"

pattern Contest_LevelItem_ADMINISTRATIVEAREA2 :: Contest_LevelItem
pattern Contest_LevelItem_ADMINISTRATIVEAREA2 = Contest_LevelItem "administrativeArea2"

pattern Contest_LevelItem_Locality :: Contest_LevelItem
pattern Contest_LevelItem_Locality = Contest_LevelItem "locality"

pattern Contest_LevelItem_SUBLOCALITY1 :: Contest_LevelItem
pattern Contest_LevelItem_SUBLOCALITY1 = Contest_LevelItem "subLocality1"

pattern Contest_LevelItem_SUBLOCALITY2 :: Contest_LevelItem
pattern Contest_LevelItem_SUBLOCALITY2 = Contest_LevelItem "subLocality2"

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

pattern Contest_RolesItem_HeadOfState :: Contest_RolesItem
pattern Contest_RolesItem_HeadOfState = Contest_RolesItem "headOfState"

pattern Contest_RolesItem_HeadOfGovernment :: Contest_RolesItem
pattern Contest_RolesItem_HeadOfGovernment = Contest_RolesItem "headOfGovernment"

pattern Contest_RolesItem_DeputyHeadOfGovernment :: Contest_RolesItem
pattern Contest_RolesItem_DeputyHeadOfGovernment = Contest_RolesItem "deputyHeadOfGovernment"

pattern Contest_RolesItem_GovernmentOfficer :: Contest_RolesItem
pattern Contest_RolesItem_GovernmentOfficer = Contest_RolesItem "governmentOfficer"

pattern Contest_RolesItem_ExecutiveCouncil :: Contest_RolesItem
pattern Contest_RolesItem_ExecutiveCouncil = Contest_RolesItem "executiveCouncil"

pattern Contest_RolesItem_LegislatorUpperBody :: Contest_RolesItem
pattern Contest_RolesItem_LegislatorUpperBody = Contest_RolesItem "legislatorUpperBody"

pattern Contest_RolesItem_LegislatorLowerBody :: Contest_RolesItem
pattern Contest_RolesItem_LegislatorLowerBody = Contest_RolesItem "legislatorLowerBody"

pattern Contest_RolesItem_HighestCourtJudge :: Contest_RolesItem
pattern Contest_RolesItem_HighestCourtJudge = Contest_RolesItem "highestCourtJudge"

pattern Contest_RolesItem_Judge :: Contest_RolesItem
pattern Contest_RolesItem_Judge = Contest_RolesItem "judge"

pattern Contest_RolesItem_SchoolBoard :: Contest_RolesItem
pattern Contest_RolesItem_SchoolBoard = Contest_RolesItem "schoolBoard"

pattern Contest_RolesItem_SpecialPurposeOfficer :: Contest_RolesItem
pattern Contest_RolesItem_SpecialPurposeOfficer = Contest_RolesItem "specialPurposeOfficer"

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

newtype Election_ShapeLookupBehavior = Election_ShapeLookupBehavior {fromElection_ShapeLookupBehavior :: Core.Text}
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

pattern Election_ShapeLookupBehavior_ShapeLookupDefault :: Election_ShapeLookupBehavior
pattern Election_ShapeLookupBehavior_ShapeLookupDefault = Election_ShapeLookupBehavior "shapeLookupDefault"

pattern Election_ShapeLookupBehavior_ShapeLookupDisabled :: Election_ShapeLookupBehavior
pattern Election_ShapeLookupBehavior_ShapeLookupDisabled = Election_ShapeLookupBehavior "shapeLookupDisabled"

pattern Election_ShapeLookupBehavior_ShapeLookupEnabled :: Election_ShapeLookupBehavior
pattern Election_ShapeLookupBehavior_ShapeLookupEnabled = Election_ShapeLookupBehavior "shapeLookupEnabled"

{-# COMPLETE
  Election_ShapeLookupBehavior_ShapeLookupDefault,
  Election_ShapeLookupBehavior_ShapeLookupDisabled,
  Election_ShapeLookupBehavior_ShapeLookupEnabled,
  Election_ShapeLookupBehavior
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

pattern ElectoralDistrict_Scope_Statewide :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Statewide = ElectoralDistrict_Scope "statewide"

pattern ElectoralDistrict_Scope_Congressional :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Congressional = ElectoralDistrict_Scope "congressional"

pattern ElectoralDistrict_Scope_StateUpper :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_StateUpper = ElectoralDistrict_Scope "stateUpper"

pattern ElectoralDistrict_Scope_StateLower :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_StateLower = ElectoralDistrict_Scope "stateLower"

pattern ElectoralDistrict_Scope_Countywide :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Countywide = ElectoralDistrict_Scope "countywide"

pattern ElectoralDistrict_Scope_Judicial :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Judicial = ElectoralDistrict_Scope "judicial"

pattern ElectoralDistrict_Scope_SchoolBoard :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_SchoolBoard = ElectoralDistrict_Scope "schoolBoard"

pattern ElectoralDistrict_Scope_Citywide :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Citywide = ElectoralDistrict_Scope "citywide"

pattern ElectoralDistrict_Scope_Special :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Special = ElectoralDistrict_Scope "special"

pattern ElectoralDistrict_Scope_CountyCouncil :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_CountyCouncil = ElectoralDistrict_Scope "countyCouncil"

pattern ElectoralDistrict_Scope_Township :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Township = ElectoralDistrict_Scope "township"

pattern ElectoralDistrict_Scope_Ward :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_Ward = ElectoralDistrict_Scope "ward"

pattern ElectoralDistrict_Scope_CityCouncil :: ElectoralDistrict_Scope
pattern ElectoralDistrict_Scope_CityCouncil = ElectoralDistrict_Scope "cityCouncil"

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

pattern Office_LevelsItem_International :: Office_LevelsItem
pattern Office_LevelsItem_International = Office_LevelsItem "international"

pattern Office_LevelsItem_Country :: Office_LevelsItem
pattern Office_LevelsItem_Country = Office_LevelsItem "country"

pattern Office_LevelsItem_ADMINISTRATIVEAREA1 :: Office_LevelsItem
pattern Office_LevelsItem_ADMINISTRATIVEAREA1 = Office_LevelsItem "administrativeArea1"

pattern Office_LevelsItem_Regional :: Office_LevelsItem
pattern Office_LevelsItem_Regional = Office_LevelsItem "regional"

pattern Office_LevelsItem_ADMINISTRATIVEAREA2 :: Office_LevelsItem
pattern Office_LevelsItem_ADMINISTRATIVEAREA2 = Office_LevelsItem "administrativeArea2"

pattern Office_LevelsItem_Locality :: Office_LevelsItem
pattern Office_LevelsItem_Locality = Office_LevelsItem "locality"

pattern Office_LevelsItem_SUBLOCALITY1 :: Office_LevelsItem
pattern Office_LevelsItem_SUBLOCALITY1 = Office_LevelsItem "subLocality1"

pattern Office_LevelsItem_SUBLOCALITY2 :: Office_LevelsItem
pattern Office_LevelsItem_SUBLOCALITY2 = Office_LevelsItem "subLocality2"

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

pattern Office_RolesItem_HeadOfState :: Office_RolesItem
pattern Office_RolesItem_HeadOfState = Office_RolesItem "headOfState"

pattern Office_RolesItem_HeadOfGovernment :: Office_RolesItem
pattern Office_RolesItem_HeadOfGovernment = Office_RolesItem "headOfGovernment"

pattern Office_RolesItem_DeputyHeadOfGovernment :: Office_RolesItem
pattern Office_RolesItem_DeputyHeadOfGovernment = Office_RolesItem "deputyHeadOfGovernment"

pattern Office_RolesItem_GovernmentOfficer :: Office_RolesItem
pattern Office_RolesItem_GovernmentOfficer = Office_RolesItem "governmentOfficer"

pattern Office_RolesItem_ExecutiveCouncil :: Office_RolesItem
pattern Office_RolesItem_ExecutiveCouncil = Office_RolesItem "executiveCouncil"

pattern Office_RolesItem_LegislatorUpperBody :: Office_RolesItem
pattern Office_RolesItem_LegislatorUpperBody = Office_RolesItem "legislatorUpperBody"

pattern Office_RolesItem_LegislatorLowerBody :: Office_RolesItem
pattern Office_RolesItem_LegislatorLowerBody = Office_RolesItem "legislatorLowerBody"

pattern Office_RolesItem_HighestCourtJudge :: Office_RolesItem
pattern Office_RolesItem_HighestCourtJudge = Office_RolesItem "highestCourtJudge"

pattern Office_RolesItem_Judge :: Office_RolesItem
pattern Office_RolesItem_Judge = Office_RolesItem "judge"

pattern Office_RolesItem_SchoolBoard :: Office_RolesItem
pattern Office_RolesItem_SchoolBoard = Office_RolesItem "schoolBoard"

pattern Office_RolesItem_SpecialPurposeOfficer :: Office_RolesItem
pattern Office_RolesItem_SpecialPurposeOfficer = Office_RolesItem "specialPurposeOfficer"

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

pattern RepresentativesRepresentativeInfoByAddressLevels_International :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_International = RepresentativesRepresentativeInfoByAddressLevels "international"

pattern RepresentativesRepresentativeInfoByAddressLevels_Country :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Country = RepresentativesRepresentativeInfoByAddressLevels "country"

pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA1 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA1 = RepresentativesRepresentativeInfoByAddressLevels "administrativeArea1"

pattern RepresentativesRepresentativeInfoByAddressLevels_Regional :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Regional = RepresentativesRepresentativeInfoByAddressLevels "regional"

pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA2 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_ADMINISTRATIVEAREA2 = RepresentativesRepresentativeInfoByAddressLevels "administrativeArea2"

pattern RepresentativesRepresentativeInfoByAddressLevels_Locality :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_Locality = RepresentativesRepresentativeInfoByAddressLevels "locality"

pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY1 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY1 = RepresentativesRepresentativeInfoByAddressLevels "subLocality1"

pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY2 :: RepresentativesRepresentativeInfoByAddressLevels
pattern RepresentativesRepresentativeInfoByAddressLevels_SUBLOCALITY2 = RepresentativesRepresentativeInfoByAddressLevels "subLocality2"

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

pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfState :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfState = RepresentativesRepresentativeInfoByAddressRoles "headOfState"

pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfGovernment :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_HeadOfGovernment = RepresentativesRepresentativeInfoByAddressRoles "headOfGovernment"

pattern RepresentativesRepresentativeInfoByAddressRoles_DeputyHeadOfGovernment :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_DeputyHeadOfGovernment = RepresentativesRepresentativeInfoByAddressRoles "deputyHeadOfGovernment"

pattern RepresentativesRepresentativeInfoByAddressRoles_GovernmentOfficer :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_GovernmentOfficer = RepresentativesRepresentativeInfoByAddressRoles "governmentOfficer"

pattern RepresentativesRepresentativeInfoByAddressRoles_ExecutiveCouncil :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_ExecutiveCouncil = RepresentativesRepresentativeInfoByAddressRoles "executiveCouncil"

pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorUpperBody :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorUpperBody = RepresentativesRepresentativeInfoByAddressRoles "legislatorUpperBody"

pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorLowerBody :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_LegislatorLowerBody = RepresentativesRepresentativeInfoByAddressRoles "legislatorLowerBody"

pattern RepresentativesRepresentativeInfoByAddressRoles_HighestCourtJudge :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_HighestCourtJudge = RepresentativesRepresentativeInfoByAddressRoles "highestCourtJudge"

pattern RepresentativesRepresentativeInfoByAddressRoles_Judge :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_Judge = RepresentativesRepresentativeInfoByAddressRoles "judge"

pattern RepresentativesRepresentativeInfoByAddressRoles_SchoolBoard :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_SchoolBoard = RepresentativesRepresentativeInfoByAddressRoles "schoolBoard"

pattern RepresentativesRepresentativeInfoByAddressRoles_SpecialPurposeOfficer :: RepresentativesRepresentativeInfoByAddressRoles
pattern RepresentativesRepresentativeInfoByAddressRoles_SpecialPurposeOfficer = RepresentativesRepresentativeInfoByAddressRoles "specialPurposeOfficer"

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

pattern RepresentativesRepresentativeInfoByDivisionLevels_International :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_International = RepresentativesRepresentativeInfoByDivisionLevels "international"

pattern RepresentativesRepresentativeInfoByDivisionLevels_Country :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Country = RepresentativesRepresentativeInfoByDivisionLevels "country"

pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA1 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA1 = RepresentativesRepresentativeInfoByDivisionLevels "administrativeArea1"

pattern RepresentativesRepresentativeInfoByDivisionLevels_Regional :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Regional = RepresentativesRepresentativeInfoByDivisionLevels "regional"

pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA2 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_ADMINISTRATIVEAREA2 = RepresentativesRepresentativeInfoByDivisionLevels "administrativeArea2"

pattern RepresentativesRepresentativeInfoByDivisionLevels_Locality :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_Locality = RepresentativesRepresentativeInfoByDivisionLevels "locality"

pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY1 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY1 = RepresentativesRepresentativeInfoByDivisionLevels "subLocality1"

pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY2 :: RepresentativesRepresentativeInfoByDivisionLevels
pattern RepresentativesRepresentativeInfoByDivisionLevels_SUBLOCALITY2 = RepresentativesRepresentativeInfoByDivisionLevels "subLocality2"

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

pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfState :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfState = RepresentativesRepresentativeInfoByDivisionRoles "headOfState"

pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfGovernment :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_HeadOfGovernment = RepresentativesRepresentativeInfoByDivisionRoles "headOfGovernment"

pattern RepresentativesRepresentativeInfoByDivisionRoles_DeputyHeadOfGovernment :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_DeputyHeadOfGovernment = RepresentativesRepresentativeInfoByDivisionRoles "deputyHeadOfGovernment"

pattern RepresentativesRepresentativeInfoByDivisionRoles_GovernmentOfficer :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_GovernmentOfficer = RepresentativesRepresentativeInfoByDivisionRoles "governmentOfficer"

pattern RepresentativesRepresentativeInfoByDivisionRoles_ExecutiveCouncil :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_ExecutiveCouncil = RepresentativesRepresentativeInfoByDivisionRoles "executiveCouncil"

pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorUpperBody :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorUpperBody = RepresentativesRepresentativeInfoByDivisionRoles "legislatorUpperBody"

pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorLowerBody :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_LegislatorLowerBody = RepresentativesRepresentativeInfoByDivisionRoles "legislatorLowerBody"

pattern RepresentativesRepresentativeInfoByDivisionRoles_HighestCourtJudge :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_HighestCourtJudge = RepresentativesRepresentativeInfoByDivisionRoles "highestCourtJudge"

pattern RepresentativesRepresentativeInfoByDivisionRoles_Judge :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_Judge = RepresentativesRepresentativeInfoByDivisionRoles "judge"

pattern RepresentativesRepresentativeInfoByDivisionRoles_SchoolBoard :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_SchoolBoard = RepresentativesRepresentativeInfoByDivisionRoles "schoolBoard"

pattern RepresentativesRepresentativeInfoByDivisionRoles_SpecialPurposeOfficer :: RepresentativesRepresentativeInfoByDivisionRoles
pattern RepresentativesRepresentativeInfoByDivisionRoles_SpecialPurposeOfficer = RepresentativesRepresentativeInfoByDivisionRoles "specialPurposeOfficer"

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
