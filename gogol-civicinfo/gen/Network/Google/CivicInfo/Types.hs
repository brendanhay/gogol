{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CivicInfo.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CivicInfo.Types
    (
    -- * Service URL
      civicInfoURL

    -- * RepresentativesRepresentativeInfoByDivision'Roles
    , RepresentativesRepresentativeInfoByDivision'Roles (..)

    -- * Contest
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

    -- * DivisionSearchResponse
    , DivisionSearchResponse
    , divisionSearchResponse
    , dsrResults
    , dsrKind

    -- * AdministrativeBody
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

    -- * RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions

    -- * GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- * PollingLocation
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

    -- * Alt
    , Alt (..)

    -- * RepresentativeInfoData
    , RepresentativeInfoData
    , representativeInfoData
    , ridOfficials
    , ridDivisions
    , ridOffices

    -- * ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edName
    , edScope
    , edId

    -- * Source
    , Source
    , source
    , sName
    , sOfficial

    -- * SimpleAddressType
    , SimpleAddressType
    , simpleAddressType
    , satLine2
    , satState
    , satLine3
    , satZip
    , satCity
    , satLine1
    , satLocationName

    -- * DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- * RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- * RepresentativesRepresentativeInfoByDivision'Levels
    , RepresentativesRepresentativeInfoByDivision'Levels (..)

    -- * Official
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

    -- * ElectionsQueryResponse
    , ElectionsQueryResponse
    , electionsQueryResponse
    , eqrKind
    , eqrElections

    -- * RepresentativesRepresentativeInfoByAddress'Levels
    , RepresentativesRepresentativeInfoByAddress'Levels (..)

    -- * RepresentativeInfoDataDivisions
    , RepresentativeInfoDataDivisions
    , representativeInfoDataDivisions

    -- * VoterInfoResponse
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

    -- * ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- * Candidate
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

    -- * Office
    , Office
    , office
    , offDivisionId
    , offRoles
    , offOfficialIndices
    , offSources
    , offName
    , offLevels

    -- * Channel
    , Channel
    , channel
    , chaId
    , chaType

    -- * RepresentativesRepresentativeInfoByAddress'Roles
    , RepresentativesRepresentativeInfoByAddress'Roles (..)

    -- * Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- * AdministrationRegion
    , AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId
    ) where

import           Network.Google.CivicInfo.Types.Product
import           Network.Google.CivicInfo.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google Civic Information API.
civicInfoURL :: BaseUrl
civicInfoURL
  = BaseUrl Https
      "https://www.googleapis.com/civicinfo/v2/"
      443
