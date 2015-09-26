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
    -- * Resources
      CivicInfo
    , ElectionsAPI
    , ElectionsVoterInfoQuery
    , ElectionsElectionQuery
    , DivisionsAPI
    , DivisionsSearch
    , RepresentativesAPI
    , RepresentativesRepresentativeInfoByDivision
    , RepresentativesRepresentativeInfoByAddress

    -- * Types

    -- ** AdministrationRegion
    , AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId

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

    -- ** Channel
    , Channel
    , channel
    , chaId
    , chaType

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

    -- ** DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- ** Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- ** ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- ** ElectionsQueryResponse
    , ElectionsQueryResponse
    , electionsQueryResponse
    , eqrKind
    , eqrElections

    -- ** ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edName
    , edScope
    , edId

    -- ** GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- ** Office
    , Office
    , office
    , offDivisionId
    , offRoles
    , offOfficialIndices
    , offSources
    , offName
    , offLevels

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

    -- ** RepresentativeInfoData
    , RepresentativeInfoData
    , representativeInfoData
    , ridOfficials
    , ridDivisions
    , ridOffices

    -- ** RepresentativeInfoDataDivisions
    , RepresentativeInfoDataDivisions
    , representativeInfoDataDivisions

    -- ** RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- ** RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions

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

    -- ** Source
    , Source
    , source
    , sName
    , sOfficial

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
    ) where

import           Network.Google.CivicInfo.Types

{- $resources
TODO
-}

type CivicInfo =
     DivisionsAPI :<|>
       RepresentativesAPI :<|> ElectionsAPI

type ElectionsAPI =
     ElectionsElectionQuery :<|> ElectionsVoterInfoQuery

-- | Looks up information relevant to a voter based on the voter\'s
-- registered address.
type ElectionsVoterInfoQuery =
     "civicinfo" :> "v2" :> "voterinfo" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "electionId" Int64
       :> QueryParam "address" Text
       :> QueryParam "key" Text
       :> QueryParam "officialOnly" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List of available elections to query.
type ElectionsElectionQuery =
     "civicinfo" :> "v2" :> "elections" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DivisionsAPI = DivisionsSearch

-- | Searches for political divisions by their natural name or OCD ID.
type DivisionsSearch =
     "civicinfo" :> "v2" :> "divisions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "query" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type RepresentativesAPI =
     RepresentativesRepresentativeInfoByAddress :<|>
       RepresentativesRepresentativeInfoByDivision

-- | Looks up representative information for a single geographic division.
type RepresentativesRepresentativeInfoByDivision =
     "civicinfo" :> "v2" :> "representatives" :>
       Capture "ocdId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "roles" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "recursive" Bool
       :> QueryParam "levels" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Looks up political geography and representative information for a single
-- address.
type RepresentativesRepresentativeInfoByAddress =
     "civicinfo" :> "v2" :> "representatives" :>
       QueryParam "quotaUser" Text
       :> QueryParam "roles" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "address" Text
       :> QueryParam "key" Text
       :> QueryParam "includeOffices" Bool
       :> QueryParam "levels" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
