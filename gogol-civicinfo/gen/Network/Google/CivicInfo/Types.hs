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

    -- * AdministrationRegion
      AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId

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

    -- * Channel
    , Channel
    , channel
    , chaId
    , chaType

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

    -- * DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- * Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- * ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- * ElectionsQueryResponse
    , ElectionsQueryResponse
    , electionsQueryResponse
    , eqrKind
    , eqrElections

    -- * ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edName
    , edScope
    , edId

    -- * GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- * Office
    , Office
    , office
    , offDivisionId
    , offRoles
    , offOfficialIndices
    , offSources
    , offName
    , offLevels

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

    -- * RepresentativeInfoData
    , RepresentativeInfoData
    , representativeInfoData
    , ridOfficials
    , ridDivisions
    , ridOffices

    -- * RepresentativeInfoDataDivisions
    , RepresentativeInfoDataDivisions
    , representativeInfoDataDivisions

    -- * RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- * RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions

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

    -- * Source
    , Source
    , source
    , sName
    , sOfficial

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
    ) where

import           Network.Google.CivicInfo.Types.Product
import           Network.Google.CivicInfo.Types.Sum
import           Network.Google.Prelude
