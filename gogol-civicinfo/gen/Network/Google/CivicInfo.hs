{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CivicInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | An API for accessing civic information.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference>
module Network.Google.CivicInfo
    (
    -- * REST Resources

    -- ** Google Civic Information API
      CivicInfo
    , civicInfo
    , civicInfoURL

    -- ** civicinfo.divisions.search
    , module Network.Google.API.CivicInfo.Divisions.Search

    -- ** civicinfo.elections.electionQuery
    , module Network.Google.API.CivicInfo.Elections.ElectionQuery

    -- ** civicinfo.elections.voterInfoQuery
    , module Network.Google.API.CivicInfo.Elections.VoterInfoQuery

    -- ** civicinfo.representatives.representativeInfoByAddress
    , module Network.Google.API.CivicInfo.Representatives.RepresentativeInfoByAddress

    -- ** civicinfo.representatives.representativeInfoByDivision
    , module Network.Google.API.CivicInfo.Representatives.RepresentativeInfoByDivision

    -- * Types

    -- ** RepresentativesRepresentativeInfoByDivision'Roles
    , RepresentativesRepresentativeInfoByDivision'Roles (..)

    -- ** Contest
    , Contest
    , contest
    , cReferendumPassageThreshold
    , cRoles
    , cReferendumUrl
    , cReferendumEffectOfAbstain
    , cReferendumSubtitle
    , cNumberVotingFor
    , cOffice
    , cReferendumConStatement
    , cSources
    , cReferendumProStatement
    , cReferendumBallotResponses
    , cNumberElected
    , cSpecial
    , cReferendumText
    , cPrimaryParty
    , cId
    , cType
    , cElectorateSpecifications
    , cReferendumBrief
    , cDistrict
    , cLevel
    , cCandidates
    , cReferendumTitle
    , cBallotPlacement

    -- ** DivisionSearchResponse
    , DivisionSearchResponse
    , divisionSearchResponse
    , dsrResults
    , dsrKind

    -- ** AdministrativeBody
    , AdministrativeBody
    , administrativeBody
    , abCorrespondenceAddress
    , abAbsenteeVotingInfoUrl
    , abHoursOfOperation
    , abBallotInfoUrl
    , abPhysicalAddress
    , abElectionRegistrationConfirmationUrl
    , abElectionInfoUrl
    , abVotingLocationFinderUrl
    , abElectionOfficials
    , abName
    , abElectionRulesUrl
    , abVoterServices
    , abElectionRegistrationUrl

    -- ** RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions

    -- ** GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- ** PollingLocation
    , PollingLocation
    , pollingLocation
    , plVoterServices
    , plEndDate
    , plSources
    , plAddress
    , plStartDate
    , plPollingHours
    , plName
    , plId
    , plNotes

    -- ** Alt
    , Alt (..)

    -- ** RepresentativeInfoData
    , RepresentativeInfoData
    , representativeInfoData
    , ridOfficials
    , ridDivisions
    , ridOffices

    -- ** ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edName
    , edScope
    , edId

    -- ** Source
    , Source
    , source
    , sName
    , sOfficial

    -- ** SimpleAddressType
    , SimpleAddressType
    , simpleAddressType
    , satLine2
    , satState
    , satLine3
    , satZip
    , satCity
    , satLine1
    , satLocationName

    -- ** DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- ** RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- ** RepresentativesRepresentativeInfoByDivision'Levels
    , RepresentativesRepresentativeInfoByDivision'Levels (..)

    -- ** Official
    , Official
    , official
    , oPhotoUrl
    , oUrls
    , oChannels
    , oAddress
    , oPhones
    , oName
    , oEmails
    , oParty

    -- ** ElectionsQueryResponse
    , ElectionsQueryResponse
    , electionsQueryResponse
    , eqrKind
    , eqrElections

    -- ** RepresentativesRepresentativeInfoByAddress'Levels
    , RepresentativesRepresentativeInfoByAddress'Levels (..)

    -- ** RepresentativeInfoDataDivisions
    , RepresentativeInfoDataDivisions
    , representativeInfoDataDivisions

    -- ** VoterInfoResponse
    , VoterInfoResponse
    , voterInfoResponse
    , virOtherElections
    , virContests
    , virState
    , virKind
    , virDropOffLocations
    , virElection
    , virNormalizedInput
    , virMailOnly
    , virEarlyVoteSites
    , virPollingLocations
    , virPrecinctId

    -- ** ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- ** Candidate
    , Candidate
    , candidate
    , cEmail
    , cPhone
    , cPhotoUrl
    , cChannels
    , cCandidateUrl
    , cOrderOnBallot
    , cName
    , cParty

    -- ** Office
    , Office
    , office
    , offDivisionId
    , offRoles
    , offOfficialIndices
    , offSources
    , offName
    , offLevels

    -- ** Channel
    , Channel
    , channel
    , chaId
    , chaType

    -- ** RepresentativesRepresentativeInfoByAddress'Roles
    , RepresentativesRepresentativeInfoByAddress'Roles (..)

    -- ** Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- ** AdministrationRegion
    , AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId
    ) where

import           Network.Google.API.CivicInfo.Divisions.Search
import           Network.Google.API.CivicInfo.Elections.ElectionQuery
import           Network.Google.API.CivicInfo.Elections.VoterInfoQuery
import           Network.Google.API.CivicInfo.Representatives.RepresentativeInfoByAddress
import           Network.Google.API.CivicInfo.Representatives.RepresentativeInfoByDivision
import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type CivicInfo =
     RepresentativesRepresentativeInfoByDivisionAPI :<|>
       ElectionsElectionQueryAPI
       :<|> ElectionsVoterInfoQueryAPI
       :<|> DivisionsSearchAPI
       :<|> RepresentativesRepresentativeInfoByAddressAPI

civicInfo :: Proxy CivicInfo
civicInfo = Proxy
