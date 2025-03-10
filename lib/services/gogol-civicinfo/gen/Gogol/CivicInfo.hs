{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CivicInfo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides polling places, early vote locations, contest data, election officials, and government representatives for U.S. residential addresses.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference>
module Gogol.CivicInfo
  ( -- * Configuration
    civicInfoService,

    -- * Resources

    -- ** civicinfo.divisions.queryDivisionByAddress
    CivicInfoDivisionsQueryDivisionByAddressResource,
    CivicInfoDivisionsQueryDivisionByAddress (..),
    newCivicInfoDivisionsQueryDivisionByAddress,

    -- ** civicinfo.divisions.search
    CivicInfoDivisionsSearchResource,
    CivicInfoDivisionsSearch (..),
    newCivicInfoDivisionsSearch,

    -- ** civicinfo.elections.electionQuery
    CivicInfoElectionsElectionQueryResource,
    CivicInfoElectionsElectionQuery (..),
    newCivicInfoElectionsElectionQuery,

    -- ** civicinfo.elections.voterInfoQuery
    CivicInfoElectionsVoterInfoQueryResource,
    CivicInfoElectionsVoterInfoQuery (..),
    newCivicInfoElectionsVoterInfoQuery,

    -- ** civicinfo.representatives.representativeInfoByAddress
    CivicInfoRepresentativesRepresentativeInfoByAddressResource,
    CivicInfoRepresentativesRepresentativeInfoByAddress (..),
    newCivicInfoRepresentativesRepresentativeInfoByAddress,

    -- ** civicinfo.representatives.representativeInfoByDivision
    CivicInfoRepresentativesRepresentativeInfoByDivisionResource,
    CivicInfoRepresentativesRepresentativeInfoByDivision (..),
    newCivicInfoRepresentativesRepresentativeInfoByDivision,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdministrationRegion
    AdministrationRegion (..),
    newAdministrationRegion,

    -- ** AdministrativeBody
    AdministrativeBody (..),
    newAdministrativeBody,

    -- ** Candidate
    Candidate (..),
    newCandidate,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Contest
    Contest (..),
    newContest,

    -- ** Contest_LevelItem
    Contest_LevelItem (..),

    -- ** Contest_RolesItem
    Contest_RolesItem (..),

    -- ** DivisionByAddressResponse
    DivisionByAddressResponse (..),
    newDivisionByAddressResponse,

    -- ** DivisionByAddressResponse_Divisions
    DivisionByAddressResponse_Divisions (..),
    newDivisionByAddressResponse_Divisions,

    -- ** DivisionSearchResponse
    DivisionSearchResponse (..),
    newDivisionSearchResponse,

    -- ** DivisionSearchResult
    DivisionSearchResult (..),
    newDivisionSearchResult,

    -- ** Election
    Election (..),
    newElection,

    -- ** Election_ShapeLookupBehavior
    Election_ShapeLookupBehavior (..),

    -- ** ElectionOfficial
    ElectionOfficial (..),
    newElectionOfficial,

    -- ** ElectionsQueryResponse
    ElectionsQueryResponse (..),
    newElectionsQueryResponse,

    -- ** ElectoralDistrict
    ElectoralDistrict (..),
    newElectoralDistrict,

    -- ** ElectoralDistrict_Scope
    ElectoralDistrict_Scope (..),

    -- ** GeographicDivision
    GeographicDivision (..),
    newGeographicDivision,

    -- ** Office
    Office (..),
    newOffice,

    -- ** Office_LevelsItem
    Office_LevelsItem (..),

    -- ** Office_RolesItem
    Office_RolesItem (..),

    -- ** Official
    Official (..),
    newOfficial,

    -- ** PollingLocation
    PollingLocation (..),
    newPollingLocation,

    -- ** Precinct
    Precinct (..),
    newPrecinct,

    -- ** RepresentativeInfoData
    RepresentativeInfoData (..),
    newRepresentativeInfoData,

    -- ** RepresentativeInfoData_Divisions
    RepresentativeInfoData_Divisions (..),
    newRepresentativeInfoData_Divisions,

    -- ** RepresentativeInfoResponse
    RepresentativeInfoResponse (..),
    newRepresentativeInfoResponse,

    -- ** RepresentativeInfoResponse_Divisions
    RepresentativeInfoResponse_Divisions (..),
    newRepresentativeInfoResponse_Divisions,

    -- ** SimpleAddressType
    SimpleAddressType (..),
    newSimpleAddressType,

    -- ** Source
    Source (..),
    newSource,

    -- ** VoterInfoResponse
    VoterInfoResponse (..),
    newVoterInfoResponse,

    -- ** RepresentativesRepresentativeInfoByAddressLevels
    RepresentativesRepresentativeInfoByAddressLevels (..),

    -- ** RepresentativesRepresentativeInfoByAddressRoles
    RepresentativesRepresentativeInfoByAddressRoles (..),

    -- ** RepresentativesRepresentativeInfoByDivisionLevels
    RepresentativesRepresentativeInfoByDivisionLevels (..),

    -- ** RepresentativesRepresentativeInfoByDivisionRoles
    RepresentativesRepresentativeInfoByDivisionRoles (..),
  )
where

import Gogol.CivicInfo.Divisions.QueryDivisionByAddress
import Gogol.CivicInfo.Divisions.Search
import Gogol.CivicInfo.Elections.ElectionQuery
import Gogol.CivicInfo.Elections.VoterInfoQuery
import Gogol.CivicInfo.Representatives.RepresentativeInfoByAddress
import Gogol.CivicInfo.Representatives.RepresentativeInfoByDivision
import Gogol.CivicInfo.Types
