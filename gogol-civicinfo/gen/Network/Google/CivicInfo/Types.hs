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

    -- * RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions

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

    -- * GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- * CivicInfoRepresentativesRepresentativeInfoByDivisionLevels
    , CivicInfoRepresentativesRepresentativeInfoByDivisionLevels (..)

    -- * CivicInfoRepresentativesRepresentativeInfoByAddressLevels
    , CivicInfoRepresentativesRepresentativeInfoByAddressLevels (..)

    -- * Candidate
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

    -- * Office
    , Office
    , office
    , oDivisionId
    , oRoles
    , oOfficialIndices
    , oSources
    , oName
    , oLevels

    -- * CivicInfoRepresentativesRepresentativeInfoByDivisionRoles
    , CivicInfoRepresentativesRepresentativeInfoByDivisionRoles (..)

    -- * Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- * Channel
    , Channel
    , channel
    , cId
    , cType

    -- * RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- * DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- * AdministrativeBody
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

    -- * Contest
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

    -- * DivisionSearchResponse
    , DivisionSearchResponse
    , divisionSearchResponse
    , dsrResults
    , dsrKind

    -- * RepresentativeInfoDataDivisions
    , RepresentativeInfoDataDivisions
    , representativeInfoDataDivisions

    -- * CivicInfoRepresentativesRepresentativeInfoByAddressRoles
    , CivicInfoRepresentativesRepresentativeInfoByAddressRoles (..)

    -- * ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- * RepresentativeInfoData
    , RepresentativeInfoData
    , representativeInfoData
    , ridOfficials
    , ridDivisions
    , ridOffices

    -- * Source
    , Source
    , source
    , sName
    , sOfficial

    -- * ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edName
    , edScope
    , edId

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

    -- * AdministrationRegion
    , AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId

    -- * ElectionsQueryResponse
    , ElectionsQueryResponse
    , electionsQueryResponse
    , eqrKind
    , eqrElections

    -- * Official
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

import           Network.Google.CivicInfo.Types.Product
import           Network.Google.CivicInfo.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google Civic Information API.
civicInfoURL :: BaseUrl
civicInfoURL
  = BaseUrl Https
      "https://www.googleapis.com/civicinfo/v2/"
      443
