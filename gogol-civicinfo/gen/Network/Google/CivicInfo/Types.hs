{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CivicInfo.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CivicInfo.Types
    (
    -- * Service Configuration
      civicInfoService

    -- * RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions
    , rirdAddtional

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

    -- * RepresentativesRepresentativeInfoByDivisionLevels
    , RepresentativesRepresentativeInfoByDivisionLevels (..)

    -- * GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

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

    -- * RepresentativesRepresentativeInfoByAddressLevels
    , RepresentativesRepresentativeInfoByAddressLevels (..)

    -- * Office
    , Office
    , office
    , oDivisionId
    , oRoles
    , oOfficialIndices
    , oSources
    , oName
    , oLevels

    -- * RepresentativesRepresentativeInfoByDivisionRoles
    , RepresentativesRepresentativeInfoByDivisionRoles (..)

    -- * ElectionsQueryRequest
    , ElectionsQueryRequest
    , electionsQueryRequest
    , eqrContextParams

    -- * Channel
    , Channel
    , channel
    , cId
    , cType

    -- * Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- * RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- * VoterInfoSegmentResult
    , VoterInfoSegmentResult
    , voterInfoSegmentResult
    , visrResponse
    , visrGeneratedMillis
    , visrPostalAddress
    , visrRequest

    -- * DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- * DivisionSearchRequest
    , DivisionSearchRequest
    , divisionSearchRequest
    , dsrContextParams

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
    , abAddressLines
    , abVoterServices
    , abElectionRegistrationURL

    -- * RepresentativeInfoRequest
    , RepresentativeInfoRequest
    , representativeInfoRequest
    , rirContextParams

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
    , riddAddtional

    -- * RepresentativesRepresentativeInfoByAddressRoles
    , RepresentativesRepresentativeInfoByAddressRoles (..)

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

    -- * DivisionRepresentativeInfoRequest
    , DivisionRepresentativeInfoRequest
    , divisionRepresentativeInfoRequest
    , drirContextParams

    -- * ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edKgForeignKey
    , edName
    , edScope
    , edId

    -- * VoterInfoRequest
    , VoterInfoRequest
    , voterInfoRequest
    , virVoterInfoSegmentResult
    , virContextParams

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

    -- * ContextParams
    , ContextParams
    , contextParams
    , cpClientProFile

    -- * PostalAddress
    , PostalAddress
    , postalAddress
    , paAdministrativeAreaName
    , paRecipientName
    , paLanguageCode
    , paSortingCode
    , paPremiseName
    , paPostalCodeNumberExtension
    , paCountryNameCode
    , paDependentThoroughfaresConnector
    , paThoroughfareLeadingType
    , paSubAdministrativeAreaName
    , paThoroughfareTrailingType
    , paPostBoxNumber
    , paThoroughfarePreDirection
    , paLocalityName
    , paDependentThoroughfaresType
    , paThoroughfarePostDirection
    , paIsDisputed
    , paDependentThoroughfarePreDirection
    , paThoroughfareNumber
    , paDependentThoroughfaresIndicator
    , paDependentLocalityName
    , paFirmName
    , paCountryName
    , paDependentThoroughfareTrailingType
    , paDependentThoroughfareName
    , paDependentThoroughfarePostDirection
    , paAddressLines
    , paPostalCodeNumber
    , paThoroughfareName
    , paSubPremiseName
    , paDependentThoroughfareLeadingType

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

-- | Default request referring to version 'v2' of the Google Civic Information API. This contains the host and root path used as a starting point for constructing service requests.
civicInfoService :: ServiceConfig
civicInfoService
  = defaultService (ServiceId "civicinfo:v2")
      "www.googleapis.com"
