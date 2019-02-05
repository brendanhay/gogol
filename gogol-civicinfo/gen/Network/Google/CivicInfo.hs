{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CivicInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides polling places, early vote locations, contest data, election
-- officials, and government representatives for U.S. residential
-- addresses.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference>
module Network.Google.CivicInfo
    (
    -- * Service Configuration
      civicInfoService

    -- * API Declaration
    , CivicInfoAPI

    -- * Resources

    -- ** civicinfo.divisions.search
    , module Network.Google.Resource.CivicInfo.Divisions.Search

    -- ** civicinfo.elections.electionQuery
    , module Network.Google.Resource.CivicInfo.Elections.ElectionQuery

    -- ** civicinfo.elections.voterInfoQuery
    , module Network.Google.Resource.CivicInfo.Elections.VoterInfoQuery

    -- ** civicinfo.representatives.representativeInfoByAddress
    , module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByAddress

    -- ** civicinfo.representatives.representativeInfoByDivision
    , module Network.Google.Resource.CivicInfo.Representatives.RepresentativeInfoByDivision

    -- * Types

    -- ** RepresentativeInfoResponseDivisions
    , RepresentativeInfoResponseDivisions
    , representativeInfoResponseDivisions
    , rirdAddtional

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
    , virSegments
    , virEarlyVoteSites
    , virPollingLocations
    , virPrecinctId

    -- ** PollingLocation
    , PollingLocation
    , pollingLocation
    , plVoterServices
    , plLatitude
    , plEndDate
    , plSources
    , plAddress
    , plStartDate
    , plPollingHours
    , plName
    , plId
    , plNotes
    , plLongitude

    -- ** RepresentativesRepresentativeInfoByDivisionLevels
    , RepresentativesRepresentativeInfoByDivisionLevels (..)

    -- ** GeographicDivision
    , GeographicDivision
    , geographicDivision
    , gdName
    , gdOfficeIndices
    , gdAlsoKnownAs

    -- ** StreetSegment
    , StreetSegment
    , streetSegment
    , ssOriginalId
    , ssPollinglocationByIds
    , ssStartHouseNumber
    , ssCataListUniquePrecinctCode
    , ssState
    , ssContestIds
    , ssStateHouseDistrict
    , ssNcoaAddress
    , ssEarlyVoteSiteByIds
    , ssCountyCouncilDistrict
    , ssCityCouncilDistrict
    , ssGeocodedPoint
    , ssEndHouseNumber
    , ssSubAdministrativeAreaName
    , ssPublished
    , ssStartLatE7
    , ssZip
    , ssSurrogateId
    , ssMunicipalDistrict
    , ssWardDistrict
    , ssVoterGeographicDivisionOcdIds
    , ssStreetName
    , ssTownshipDistrict
    , ssUnitType
    , ssCongressionalDistrict
    , ssStateSenateDistrict
    , ssOddOrEvens
    , ssGeographicDivisionOcdIds
    , ssBeforeGeocodeId
    , ssDataSetId
    , ssStartLngE7
    , ssCity
    , ssWildcard
    , ssTargetsmartUniquePrecinctCode
    , ssProvenances
    , ssSchoolDistrict
    , ssMailOnly
    , ssId
    , ssUnitNumber
    , ssAdministrationRegionIds
    , ssVanPrecinctCode
    , ssJudicialDistrict
    , ssPrecinctName
    , ssCountyFips
    , ssPrecinctOcdId

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

    -- ** RepresentativesRepresentativeInfoByAddressLevels
    , RepresentativesRepresentativeInfoByAddressLevels (..)

    -- ** Office
    , Office
    , office
    , oDivisionId
    , oRoles
    , oOfficialIndices
    , oSources
    , oName
    , oLevels

    -- ** RepresentativesRepresentativeInfoByDivisionRoles
    , RepresentativesRepresentativeInfoByDivisionRoles (..)

    -- ** StreetSegmentList
    , StreetSegmentList
    , streetSegmentList
    , sslSegments

    -- ** LivegraphBacktraceRecordInfo
    , LivegraphBacktraceRecordInfo
    , livegraphBacktraceRecordInfo
    , lbriDataSourcePublishMsec
    , lbriTopicBuildStartMsec
    , lbriIsRecon
    , lbriPriority
    , lbriShouldMonitorLatency
    , lbriRecordId
    , lbriProxySentMsec
    , lbriExpInfo
    , lbriProcess
    , lbriTopicBuildFinishMsec
    , lbriNumberOfTriples
    , lbriProxyReceiveMsec
    , lbriVersion
    , lbriIsWlmThrottled
    , lbriExpId
    , lbriSubscriberReceiveMsec

    -- ** ElectionsQueryRequest
    , ElectionsQueryRequest
    , electionsQueryRequest
    , eqrContextParams

    -- ** Channel
    , Channel
    , channel
    , cId
    , cType

    -- ** Election
    , Election
    , election
    , eOcdDivisionId
    , eElectionDay
    , eName
    , eId

    -- ** RepresentativeInfoResponse
    , RepresentativeInfoResponse
    , representativeInfoResponse
    , rirKind
    , rirNormalizedInput
    , rirOfficials
    , rirDivisions
    , rirOffices

    -- ** VoterInfoSegmentResult
    , VoterInfoSegmentResult
    , voterInfoSegmentResult
    , visrResponse
    , visrGeneratedMillis
    , visrPostalAddress
    , visrRequest

    -- ** DivisionSearchResult
    , DivisionSearchResult
    , divisionSearchResult
    , dsrAliases
    , dsrName
    , dsrOcdId

    -- ** DivisionSearchRequest
    , DivisionSearchRequest
    , divisionSearchRequest
    , dsrContextParams

    -- ** FieldMetadataProto
    , FieldMetadataProto
    , fieldMetadataProto
    , fmpInternal

    -- ** MessageSet
    , MessageSet
    , messageSet
    , msRecordMessageSetExt

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
    , abAddressLines
    , abVoterServices
    , abElectionRegistrationURL

    -- ** RepresentativeInfoRequest
    , RepresentativeInfoRequest
    , representativeInfoRequest
    , rirContextParams

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
    , conBallotTitle
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
    , riddAddtional

    -- ** RepresentativesRepresentativeInfoByAddressRoles
    , RepresentativesRepresentativeInfoByAddressRoles (..)

    -- ** ElectionOfficial
    , ElectionOfficial
    , electionOfficial
    , eoFaxNumber
    , eoName
    , eoOfficePhoneNumber
    , eoEmailAddress
    , eoTitle

    -- ** PointProto
    , PointProto
    , pointProto
    , ppLatE7
    , ppLngE7
    , ppMetadata
    , ppTemporaryData

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

    -- ** DivisionRepresentativeInfoRequest
    , DivisionRepresentativeInfoRequest
    , divisionRepresentativeInfoRequest
    , drirContextParams

    -- ** ElectoralDistrict
    , ElectoralDistrict
    , electoralDistrict
    , edKgForeignKey
    , edName
    , edScope
    , edId

    -- ** VoterInfoRequest
    , VoterInfoRequest
    , voterInfoRequest
    , virVoterInfoSegmentResult
    , virContextParams

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

    -- ** InternalSourceSummaryProto
    , InternalSourceSummaryProto
    , internalSourceSummaryProto
    , isspDataSet
    , isspProvider

    -- ** LivegraphBacktraceRecordInfoExpInfo
    , LivegraphBacktraceRecordInfoExpInfo
    , livegraphBacktraceRecordInfoExpInfo
    , lbrieiDeletedIns

    -- ** ContextParams
    , ContextParams
    , contextParams
    , cpClientProFile

    -- ** PostalAddress
    , PostalAddress
    , postalAddress
    , paAdministrativeAreaName
    , paRecipientName
    , paLanguageCode
    , paSortingCode
    , paPremiseName
    , paPostalCodeNumberExtension
    , paCountryNameCode
    , paSubAdministrativeAreaName
    , paPostBoxNumber
    , paLocalityName
    , paIsDisputed
    , paThoroughfareNumber
    , paDependentLocalityName
    , paFirmName
    , paCountryName
    , paDependentThoroughfareName
    , paAddressLines
    , paPostalCodeNumber
    , paThoroughfareName
    , paSubPremiseName

    -- ** InternalFieldMetadataProto
    , InternalFieldMetadataProto
    , internalFieldMetadataProto
    , ifmpSourceSummary
    , ifmpIsAuto

    -- ** AdministrationRegion
    , AdministrationRegion
    , administrationRegion
    , arLocalJurisdiction
    , arSources
    , arName
    , arElectionAdministrationBody
    , arId

    -- ** Provenance
    , Provenance
    , provenance
    , pTsStreetSegmentId
    , pVIPStreetSegmentId
    , pCollidedSegmentSource
    , pCtclContestUuid
    , pDataSetId
    , pVIP5StreetSegmentId
    , pCtclOfficeUuid
    , pVIP5PrecinctId
    , pPrecinctSplitId
    , pPrecinctId

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

-- | Represents the entirety of the methods and resources available for the Google Civic Information API service.
type CivicInfoAPI =
     ElectionsVoterInfoQueryResource :<|>
       ElectionsElectionQueryResource
       :<|> DivisionsSearchResource
       :<|>
       RepresentativesRepresentativeInfoByDivisionResource
       :<|>
       RepresentativesRepresentativeInfoByAddressResource
