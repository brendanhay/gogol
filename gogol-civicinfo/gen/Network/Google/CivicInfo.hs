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
-- | An API for accessing civic information.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference>
module Network.Google.CivicInfo
    (
    -- * API
      CivicInfoAPI
    , civicInfoAPI
    , civicInfoURL

    -- * Service Methods

    -- * REST Resources

    -- ** CivicInfoDivisionsSearch
    , module Network.Google.Resource.CivicInfo.Divisions.Search

    -- ** CivicInfoElectionsElectionQuery
    , module Network.Google.Resource.CivicInfo.Elections.ElectionQuery

    -- ** CivicInfoElectionsVoterInfoQuery
    , module Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery

    -- ** CivicInfoRepresentativesRepresentativeInfoByAddress
    , module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress

    -- ** CivicInfoRepresentativesRepresentativeInfoByDivision
    , module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision

    -- * Types

    -- ** Roles
    , Roles (..)

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

    -- ** GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- ** CivicInfoRepresentativesRepresentativeInfoByAddressLevels
    , CivicInfoRepresentativesRepresentativeInfoByAddressLevels (..)

    -- ** Candidate
    , Candidate
    , candidate
    , cEmail
    , cPhone
    , cPhotoURL
    , cChannels
    , cCandidateURL
    , cOrderOnBallot
    , cName
    , cParty

    -- ** Office
    , Office
    , office
    , oDivisionId
    , oRoles
    , oOfficialIndices
    , oSources
    , oName
    , oLevels

    -- ** Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- ** Channel
    , Channel
    , channel
    , cId
    , cType

    -- ** RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- ** DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- ** AdministrativeBody
    , AdministrativeBody
    , administrativeBody
    , abCorrespondenceAddress
    , abAbsenteeVotingInfoURL
    , abHoursOfOperation
    , abBallotInfoURL
    , abPhysicalAddress
    , abElectionRegistrationConfirmationURL
    , abElectionInfoURL
    , abVotingLocationFinderURL
    , abElectionOfficials
    , abName
    , abElectionRulesURL
    , abVoterServices
    , abElectionRegistrationURL

    -- ** Contest
    , Contest
    , contest
    , conReferendumPassageThreshold
    , conRoles
    , conReferendumURL
    , conReferendumEffectOfAbstain
    , conReferendumSubtitle
    , conNumberVotingFor
    , conOffice
    , conReferendumConStatement
    , conSources
    , conReferendumProStatement
    , conReferendumBallotResponses
    , conNumberElected
    , conSpecial
    , conReferendumText
    , conPrimaryParty
    , conId
    , conType
    , conElectorateSpecifications
    , conReferendumBrief
    , conDistrict
    , conLevel
    , conCandidates
    , conReferendumTitle
    , conBallotPlacement

    -- ** DivisionSearchResponse
    , DivisionSearchResponse
    , divisionSearchResponse
    , dsrResults
    , dsrKind

    -- ** RepresentativeInfoDataDivisions
    , RepresentativeInfoDataDivisions
    , representativeInfoDataDivisions

    -- ** CivicInfoRepresentativesRepresentativeInfoByAddressRoles
    , CivicInfoRepresentativesRepresentativeInfoByAddressRoles (..)

    -- ** Divisions
    , Divisions
    , divisions

    -- ** ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- ** RepresentativeInfoData
    , RepresentativeInfoData
    , representativeInfoData
    , ridOfficials
    , ridDivisions
    , ridOffices

    -- ** Source
    , Source
    , source
    , sName
    , sOfficial

    -- ** Levels
    , Levels (..)

    -- ** ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edName
    , edScope
    , edId

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

    -- ** AdministrationRegion
    , AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId

    -- ** ElectionsQueryResponse
    , ElectionsQueryResponse
    , electionsQueryResponse
    , eqrKind
    , eqrElections

    -- ** Official
    , Official
    , official
    , offPhotoURL
    , offURLs
    , offChannels
    , offAddress
    , offPhones
    , offName
    , offEmails
    , offParty
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CivicInfo.Divisions.Search
import           Network.Google.Resource.CivicInfo.Elections.ElectionQuery
import           Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery
import           Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress
import           Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision

{- $resources
TODO
-}

type CivicInfoAPI =
     ElectionsVoterInfoQueryResource :<|>
       ElectionsElectionQueryResource
       :<|> DivisionsSearchResource
       :<|>
       RepresentativesRepresentativeInfoByDivisionResource
       :<|>
       RepresentativesRepresentativeInfoByAddressResource

civicInfoAPI :: Proxy CivicInfoAPI
civicInfoAPI = Proxy
