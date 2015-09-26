{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CivicInfo.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CivicInfo.Types.Product where

import           Network.Google.CivicInfo.Types.Sum
import           Network.Google.Prelude

-- | Describes information about a regional election administrative area.
--
-- /See:/ 'administrationRegion' smart constructor.
data AdministrationRegion = AdministrationRegion
    { _arLocalJurisdiction          :: !(Maybe (Maybe AdministrationRegion))
    , _arSources                    :: !(Maybe [Maybe Source])
    , _arName                       :: !(Maybe Text)
    , _arElectionAdministrationBody :: !(Maybe (Maybe AdministrativeBody))
    , _arId                         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdministrationRegion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arLocalJurisdiction'
--
-- * 'arSources'
--
-- * 'arName'
--
-- * 'arElectionAdministrationBody'
--
-- * 'arId'
administrationRegion
    :: AdministrationRegion
administrationRegion =
    AdministrationRegion
    { _arLocalJurisdiction = Nothing
    , _arSources = Nothing
    , _arName = Nothing
    , _arElectionAdministrationBody = Nothing
    , _arId = Nothing
    }

-- | The city or county that provides election information for this voter.
-- This object can have the same elements as state.
arLocalJurisdiction :: Lens' AdministrationRegion (Maybe (Maybe AdministrationRegion))
arLocalJurisdiction
  = lens _arLocalJurisdiction
      (\ s a -> s{_arLocalJurisdiction = a})

-- | A list of sources for this area. If multiple sources are listed the data
-- has been aggregated from those sources.
arSources :: Lens' AdministrationRegion [Maybe Source]
arSources
  = lens _arSources (\ s a -> s{_arSources = a}) .
      _Default
      . _Coerce

-- | The name of the jurisdiction.
arName :: Lens' AdministrationRegion (Maybe Text)
arName = lens _arName (\ s a -> s{_arName = a})

-- | The election administration body for this area.
arElectionAdministrationBody :: Lens' AdministrationRegion (Maybe (Maybe AdministrativeBody))
arElectionAdministrationBody
  = lens _arElectionAdministrationBody
      (\ s a -> s{_arElectionAdministrationBody = a})

-- | An ID for this object. IDs may change in future requests and should not
-- be cached. Access to this field requires special access that can be
-- requested from the Request more link on the Quotas page.
arId :: Lens' AdministrationRegion (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

-- | Information about an election administrative body (e.g. County Board of
-- Elections).
--
-- /See:/ 'administrativeBody' smart constructor.
data AdministrativeBody = AdministrativeBody
    { _abCorrespondenceAddress               :: !(Maybe (Maybe SimpleAddressType))
    , _abAbsenteeVotingInfoUrl               :: !(Maybe Text)
    , _abHoursOfOperation                    :: !(Maybe Text)
    , _abBallotInfoUrl                       :: !(Maybe Text)
    , _abPhysicalAddress                     :: !(Maybe (Maybe SimpleAddressType))
    , _abElectionRegistrationConfirmationUrl :: !(Maybe Text)
    , _abElectionInfoUrl                     :: !(Maybe Text)
    , _abVotingLocationFinderUrl             :: !(Maybe Text)
    , _abElectionOfficials                   :: !(Maybe [Maybe ElectionOfficial])
    , _abName                                :: !(Maybe Text)
    , _abElectionRulesUrl                    :: !(Maybe Text)
    , _abVoterServices                       :: !(Maybe [Text])
    , _abElectionRegistrationUrl             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdministrativeBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abCorrespondenceAddress'
--
-- * 'abAbsenteeVotingInfoUrl'
--
-- * 'abHoursOfOperation'
--
-- * 'abBallotInfoUrl'
--
-- * 'abPhysicalAddress'
--
-- * 'abElectionRegistrationConfirmationUrl'
--
-- * 'abElectionInfoUrl'
--
-- * 'abVotingLocationFinderUrl'
--
-- * 'abElectionOfficials'
--
-- * 'abName'
--
-- * 'abElectionRulesUrl'
--
-- * 'abVoterServices'
--
-- * 'abElectionRegistrationUrl'
administrativeBody
    :: AdministrativeBody
administrativeBody =
    AdministrativeBody
    { _abCorrespondenceAddress = Nothing
    , _abAbsenteeVotingInfoUrl = Nothing
    , _abHoursOfOperation = Nothing
    , _abBallotInfoUrl = Nothing
    , _abPhysicalAddress = Nothing
    , _abElectionRegistrationConfirmationUrl = Nothing
    , _abElectionInfoUrl = Nothing
    , _abVotingLocationFinderUrl = Nothing
    , _abElectionOfficials = Nothing
    , _abName = Nothing
    , _abElectionRulesUrl = Nothing
    , _abVoterServices = Nothing
    , _abElectionRegistrationUrl = Nothing
    }

-- | The mailing address of this administrative body.
abCorrespondenceAddress :: Lens' AdministrativeBody (Maybe (Maybe SimpleAddressType))
abCorrespondenceAddress
  = lens _abCorrespondenceAddress
      (\ s a -> s{_abCorrespondenceAddress = a})

-- | A URL provided by this administrative body for information on absentee
-- voting.
abAbsenteeVotingInfoUrl :: Lens' AdministrativeBody (Maybe Text)
abAbsenteeVotingInfoUrl
  = lens _abAbsenteeVotingInfoUrl
      (\ s a -> s{_abAbsenteeVotingInfoUrl = a})

-- | A description of the hours of operation for this administrative body.
abHoursOfOperation :: Lens' AdministrativeBody (Maybe Text)
abHoursOfOperation
  = lens _abHoursOfOperation
      (\ s a -> s{_abHoursOfOperation = a})

-- | A URL provided by this administrative body to give contest information
-- to the voter.
abBallotInfoUrl :: Lens' AdministrativeBody (Maybe Text)
abBallotInfoUrl
  = lens _abBallotInfoUrl
      (\ s a -> s{_abBallotInfoUrl = a})

-- | The physical address of this administrative body.
abPhysicalAddress :: Lens' AdministrativeBody (Maybe (Maybe SimpleAddressType))
abPhysicalAddress
  = lens _abPhysicalAddress
      (\ s a -> s{_abPhysicalAddress = a})

-- | A URL provided by this administrative body for confirming that the voter
-- is registered to vote.
abElectionRegistrationConfirmationUrl :: Lens' AdministrativeBody (Maybe Text)
abElectionRegistrationConfirmationUrl
  = lens _abElectionRegistrationConfirmationUrl
      (\ s a ->
         s{_abElectionRegistrationConfirmationUrl = a})

-- | A URL provided by this administrative body for looking up general
-- election information.
abElectionInfoUrl :: Lens' AdministrativeBody (Maybe Text)
abElectionInfoUrl
  = lens _abElectionInfoUrl
      (\ s a -> s{_abElectionInfoUrl = a})

-- | A URL provided by this administrative body for looking up where to vote.
abVotingLocationFinderUrl :: Lens' AdministrativeBody (Maybe Text)
abVotingLocationFinderUrl
  = lens _abVotingLocationFinderUrl
      (\ s a -> s{_abVotingLocationFinderUrl = a})

-- | The election officials for this election administrative body.
abElectionOfficials :: Lens' AdministrativeBody [Maybe ElectionOfficial]
abElectionOfficials
  = lens _abElectionOfficials
      (\ s a -> s{_abElectionOfficials = a})
      . _Default
      . _Coerce

-- | The name of this election administrative body.
abName :: Lens' AdministrativeBody (Maybe Text)
abName = lens _abName (\ s a -> s{_abName = a})

-- | A URL provided by this administrative body describing election rules to
-- the voter.
abElectionRulesUrl :: Lens' AdministrativeBody (Maybe Text)
abElectionRulesUrl
  = lens _abElectionRulesUrl
      (\ s a -> s{_abElectionRulesUrl = a})

-- | A description of the services this administrative body may provide.
abVoterServices :: Lens' AdministrativeBody [Text]
abVoterServices
  = lens _abVoterServices
      (\ s a -> s{_abVoterServices = a})
      . _Default
      . _Coerce

-- | A URL provided by this administrative body for looking up how to
-- register to vote.
abElectionRegistrationUrl :: Lens' AdministrativeBody (Maybe Text)
abElectionRegistrationUrl
  = lens _abElectionRegistrationUrl
      (\ s a -> s{_abElectionRegistrationUrl = a})

-- | Information about a candidate running for elected office.
--
-- /See:/ 'candidate' smart constructor.
data Candidate = Candidate
    { _cEmail         :: !(Maybe Text)
    , _cPhone         :: !(Maybe Text)
    , _cPhotoUrl      :: !(Maybe Text)
    , _cChannels      :: !(Maybe [Maybe Channel])
    , _cCandidateUrl  :: !(Maybe Text)
    , _cOrderOnBallot :: !(Maybe Int64)
    , _cName          :: !(Maybe Text)
    , _cParty         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Candidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEmail'
--
-- * 'cPhone'
--
-- * 'cPhotoUrl'
--
-- * 'cChannels'
--
-- * 'cCandidateUrl'
--
-- * 'cOrderOnBallot'
--
-- * 'cName'
--
-- * 'cParty'
candidate
    :: Candidate
candidate =
    Candidate
    { _cEmail = Nothing
    , _cPhone = Nothing
    , _cPhotoUrl = Nothing
    , _cChannels = Nothing
    , _cCandidateUrl = Nothing
    , _cOrderOnBallot = Nothing
    , _cName = Nothing
    , _cParty = Nothing
    }

-- | The email address for the candidate\'s campaign.
cEmail :: Lens' Candidate (Maybe Text)
cEmail = lens _cEmail (\ s a -> s{_cEmail = a})

-- | The voice phone number for the candidate\'s campaign office.
cPhone :: Lens' Candidate (Maybe Text)
cPhone = lens _cPhone (\ s a -> s{_cPhone = a})

-- | A URL for a photo of the candidate.
cPhotoUrl :: Lens' Candidate (Maybe Text)
cPhotoUrl
  = lens _cPhotoUrl (\ s a -> s{_cPhotoUrl = a})

-- | A list of known (social) media channels for this candidate.
cChannels :: Lens' Candidate [Maybe Channel]
cChannels
  = lens _cChannels (\ s a -> s{_cChannels = a}) .
      _Default
      . _Coerce

-- | The URL for the candidate\'s campaign web site.
cCandidateUrl :: Lens' Candidate (Maybe Text)
cCandidateUrl
  = lens _cCandidateUrl
      (\ s a -> s{_cCandidateUrl = a})

-- | The order the candidate appears on the ballot for this contest.
cOrderOnBallot :: Lens' Candidate (Maybe Int64)
cOrderOnBallot
  = lens _cOrderOnBallot
      (\ s a -> s{_cOrderOnBallot = a})

-- | The candidate\'s name.
cName :: Lens' Candidate (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The full name of the party the candidate is a member of.
cParty :: Lens' Candidate (Maybe Text)
cParty = lens _cParty (\ s a -> s{_cParty = a})

-- | A social media or web channel for a candidate.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _chaId   :: !(Maybe Text)
    , _chaType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaId'
--
-- * 'chaType'
channel
    :: Channel
channel =
    Channel
    { _chaId = Nothing
    , _chaType = Nothing
    }

-- | The unique public identifier for the candidate\'s channel.
chaId :: Lens' Channel (Maybe Text)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | The type of channel. The following is a list of types of channels, but
-- is not exhaustive. More channel types may be added at a later time. One
-- of: GooglePlus, YouTube, Facebook, Twitter
chaType :: Lens' Channel (Maybe Text)
chaType = lens _chaType (\ s a -> s{_chaType = a})

-- | Information about a contest that appears on a voter\'s ballot.
--
-- /See:/ 'contest' smart constructor.
data Contest = Contest
    { _cReferendumPassageThreshold :: !(Maybe Text)
    , _cRoles                      :: !(Maybe [Text])
    , _cReferendumUrl              :: !(Maybe Text)
    , _cReferendumEffectOfAbstain  :: !(Maybe Text)
    , _cReferendumSubtitle         :: !(Maybe Text)
    , _cNumberVotingFor            :: !(Maybe Int64)
    , _cOffice                     :: !(Maybe Text)
    , _cReferendumConStatement     :: !(Maybe Text)
    , _cSources                    :: !(Maybe [Maybe Source])
    , _cReferendumProStatement     :: !(Maybe Text)
    , _cReferendumBallotResponses  :: !(Maybe [Text])
    , _cNumberElected              :: !(Maybe Int64)
    , _cSpecial                    :: !(Maybe Text)
    , _cReferendumText             :: !(Maybe Text)
    , _cPrimaryParty               :: !(Maybe Text)
    , _cId                         :: !(Maybe Text)
    , _cType                       :: !(Maybe Text)
    , _cElectorateSpecifications   :: !(Maybe Text)
    , _cReferendumBrief            :: !(Maybe Text)
    , _cDistrict                   :: !(Maybe (Maybe ElectoralDistrict))
    , _cLevel                      :: !(Maybe [Text])
    , _cCandidates                 :: !(Maybe [Maybe Candidate])
    , _cReferendumTitle            :: !(Maybe Text)
    , _cBallotPlacement            :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Contest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cReferendumPassageThreshold'
--
-- * 'cRoles'
--
-- * 'cReferendumUrl'
--
-- * 'cReferendumEffectOfAbstain'
--
-- * 'cReferendumSubtitle'
--
-- * 'cNumberVotingFor'
--
-- * 'cOffice'
--
-- * 'cReferendumConStatement'
--
-- * 'cSources'
--
-- * 'cReferendumProStatement'
--
-- * 'cReferendumBallotResponses'
--
-- * 'cNumberElected'
--
-- * 'cSpecial'
--
-- * 'cReferendumText'
--
-- * 'cPrimaryParty'
--
-- * 'cId'
--
-- * 'cType'
--
-- * 'cElectorateSpecifications'
--
-- * 'cReferendumBrief'
--
-- * 'cDistrict'
--
-- * 'cLevel'
--
-- * 'cCandidates'
--
-- * 'cReferendumTitle'
--
-- * 'cBallotPlacement'
contest
    :: Contest
contest =
    Contest
    { _cReferendumPassageThreshold = Nothing
    , _cRoles = Nothing
    , _cReferendumUrl = Nothing
    , _cReferendumEffectOfAbstain = Nothing
    , _cReferendumSubtitle = Nothing
    , _cNumberVotingFor = Nothing
    , _cOffice = Nothing
    , _cReferendumConStatement = Nothing
    , _cSources = Nothing
    , _cReferendumProStatement = Nothing
    , _cReferendumBallotResponses = Nothing
    , _cNumberElected = Nothing
    , _cSpecial = Nothing
    , _cReferendumText = Nothing
    , _cPrimaryParty = Nothing
    , _cId = Nothing
    , _cType = Nothing
    , _cElectorateSpecifications = Nothing
    , _cReferendumBrief = Nothing
    , _cDistrict = Nothing
    , _cLevel = Nothing
    , _cCandidates = Nothing
    , _cReferendumTitle = Nothing
    , _cBallotPlacement = Nothing
    }

-- | The threshold of votes that the referendum needs in order to pass, e.g.
-- \"two-thirds\". This field is only populated for contests of type
-- \'Referendum\'.
cReferendumPassageThreshold :: Lens' Contest (Maybe Text)
cReferendumPassageThreshold
  = lens _cReferendumPassageThreshold
      (\ s a -> s{_cReferendumPassageThreshold = a})

-- | The roles which this office fulfills.
cRoles :: Lens' Contest [Text]
cRoles
  = lens _cRoles (\ s a -> s{_cRoles = a}) . _Default .
      _Coerce

-- | A link to the referendum. This field is only populated for contests of
-- type \'Referendum\'.
cReferendumUrl :: Lens' Contest (Maybe Text)
cReferendumUrl
  = lens _cReferendumUrl
      (\ s a -> s{_cReferendumUrl = a})

-- | Specifies what effect abstaining (not voting) on the proposition will
-- have (i.e. whether abstaining is considered a vote against it). This
-- field is only populated for contests of type \'Referendum\'.
cReferendumEffectOfAbstain :: Lens' Contest (Maybe Text)
cReferendumEffectOfAbstain
  = lens _cReferendumEffectOfAbstain
      (\ s a -> s{_cReferendumEffectOfAbstain = a})

-- | A brief description of the referendum. This field is only populated for
-- contests of type \'Referendum\'.
cReferendumSubtitle :: Lens' Contest (Maybe Text)
cReferendumSubtitle
  = lens _cReferendumSubtitle
      (\ s a -> s{_cReferendumSubtitle = a})

-- | The number of candidates that a voter may vote for in this contest.
cNumberVotingFor :: Lens' Contest (Maybe Int64)
cNumberVotingFor
  = lens _cNumberVotingFor
      (\ s a -> s{_cNumberVotingFor = a})

-- | The name of the office for this contest.
cOffice :: Lens' Contest (Maybe Text)
cOffice = lens _cOffice (\ s a -> s{_cOffice = a})

-- | A statement in opposition to the referendum. It does not necessarily
-- appear on the ballot. This field is only populated for contests of type
-- \'Referendum\'.
cReferendumConStatement :: Lens' Contest (Maybe Text)
cReferendumConStatement
  = lens _cReferendumConStatement
      (\ s a -> s{_cReferendumConStatement = a})

-- | A list of sources for this contest. If multiple sources are listed, the
-- data has been aggregated from those sources.
cSources :: Lens' Contest [Maybe Source]
cSources
  = lens _cSources (\ s a -> s{_cSources = a}) .
      _Default
      . _Coerce

-- | A statement in favor of the referendum. It does not necessarily appear
-- on the ballot. This field is only populated for contests of type
-- \'Referendum\'.
cReferendumProStatement :: Lens' Contest (Maybe Text)
cReferendumProStatement
  = lens _cReferendumProStatement
      (\ s a -> s{_cReferendumProStatement = a})

-- | The set of ballot responses for the referendum. A ballot response
-- represents a line on the ballot. Common examples might include \"yes\"
-- or \"no\" for referenda, or a judge\'s name for a retention contest.
-- This field is only populated for contests of type \'Referendum\'.
cReferendumBallotResponses :: Lens' Contest [Text]
cReferendumBallotResponses
  = lens _cReferendumBallotResponses
      (\ s a -> s{_cReferendumBallotResponses = a})
      . _Default
      . _Coerce

-- | The number of candidates that will be elected to office in this contest.
cNumberElected :: Lens' Contest (Maybe Int64)
cNumberElected
  = lens _cNumberElected
      (\ s a -> s{_cNumberElected = a})

-- | \"Yes\" or \"No\" depending on whether this a contest being held outside
-- the normal election cycle.
cSpecial :: Lens' Contest (Maybe Text)
cSpecial = lens _cSpecial (\ s a -> s{_cSpecial = a})

-- | The full text of the referendum. This field is only populated for
-- contests of type \'Referendum\'.
cReferendumText :: Lens' Contest (Maybe Text)
cReferendumText
  = lens _cReferendumText
      (\ s a -> s{_cReferendumText = a})

-- | If this is a partisan election, the name of the party it is for.
cPrimaryParty :: Lens' Contest (Maybe Text)
cPrimaryParty
  = lens _cPrimaryParty
      (\ s a -> s{_cPrimaryParty = a})

-- | An ID for this object. IDs may change in future requests and should not
-- be cached. Access to this field requires special access that can be
-- requested from the Request more link on the Quotas page.
cId :: Lens' Contest (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of contest. Usually this will be \'General\', \'Primary\', or
-- \'Run-off\' for contests with candidates. For referenda this will be
-- \'Referendum\'.
cType :: Lens' Contest (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | A description of any additional eligibility requirements for voting in
-- this contest.
cElectorateSpecifications :: Lens' Contest (Maybe Text)
cElectorateSpecifications
  = lens _cElectorateSpecifications
      (\ s a -> s{_cElectorateSpecifications = a})

-- | Specifies a short summary of the referendum that is typically on the
-- ballot below the title but above the text. This field is only populated
-- for contests of type \'Referendum\'.
cReferendumBrief :: Lens' Contest (Maybe Text)
cReferendumBrief
  = lens _cReferendumBrief
      (\ s a -> s{_cReferendumBrief = a})

-- | Information about the electoral district that this contest is in.
cDistrict :: Lens' Contest (Maybe (Maybe ElectoralDistrict))
cDistrict
  = lens _cDistrict (\ s a -> s{_cDistrict = a})

-- | The levels of government of the office for this contest. There may be
-- more than one in cases where a jurisdiction effectively acts at two
-- different levels of government; for example, the mayor of the District
-- of Columbia acts at \"locality\" level, but also effectively at both
-- \"administrative-area-2\" and \"administrative-area-1\".
cLevel :: Lens' Contest [Text]
cLevel
  = lens _cLevel (\ s a -> s{_cLevel = a}) . _Default .
      _Coerce

-- | The candidate choices for this contest.
cCandidates :: Lens' Contest [Maybe Candidate]
cCandidates
  = lens _cCandidates (\ s a -> s{_cCandidates = a}) .
      _Default
      . _Coerce

-- | The title of the referendum (e.g. \'Proposition 42\'). This field is
-- only populated for contests of type \'Referendum\'.
cReferendumTitle :: Lens' Contest (Maybe Text)
cReferendumTitle
  = lens _cReferendumTitle
      (\ s a -> s{_cReferendumTitle = a})

-- | A number specifying the position of this contest on the voter\'s ballot.
cBallotPlacement :: Lens' Contest (Maybe Int64)
cBallotPlacement
  = lens _cBallotPlacement
      (\ s a -> s{_cBallotPlacement = a})

-- | The result of a division search query.
--
-- /See:/ 'divisionSearchResponse' smart constructor.
data DivisionSearchResponse = DivisionSearchResponse
    { _dsrResults :: !(Maybe [Maybe DivisionSearchResult])
    , _dsrKind    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionSearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrResults'
--
-- * 'dsrKind'
divisionSearchResponse
    :: DivisionSearchResponse
divisionSearchResponse =
    DivisionSearchResponse
    { _dsrResults = Nothing
    , _dsrKind = "civicinfo#divisionSearchResponse"
    }

dsrResults :: Lens' DivisionSearchResponse [Maybe DivisionSearchResult]
dsrResults
  = lens _dsrResults (\ s a -> s{_dsrResults = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"civicinfo#divisionSearchResponse\".
dsrKind :: Lens' DivisionSearchResponse Text
dsrKind = lens _dsrKind (\ s a -> s{_dsrKind = a})

-- | Represents a political geographic division that matches the requested
-- query.
--
-- /See:/ 'divisionSearchResult' smart constructor.
data DivisionSearchResult = DivisionSearchResult
    { _dsrAliases :: !(Maybe [Text])
    , _dsrName    :: !(Maybe Text)
    , _dsrOcdId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionSearchResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrAliases'
--
-- * 'dsrName'
--
-- * 'dsrOcdId'
divisionSearchResult
    :: DivisionSearchResult
divisionSearchResult =
    DivisionSearchResult
    { _dsrAliases = Nothing
    , _dsrName = Nothing
    , _dsrOcdId = Nothing
    }

-- | Other Open Civic Data identifiers that refer to the same division -- for
-- example, those that refer to other political divisions whose boundaries
-- are defined to be coterminous with this one. For example,
-- ocd-division\/country:us\/state:wy will include an alias of
-- ocd-division\/country:us\/state:wy\/cd:1, since Wyoming has only one
-- Congressional district.
dsrAliases :: Lens' DivisionSearchResult [Text]
dsrAliases
  = lens _dsrAliases (\ s a -> s{_dsrAliases = a}) .
      _Default
      . _Coerce

-- | The name of the division.
dsrName :: Lens' DivisionSearchResult (Maybe Text)
dsrName = lens _dsrName (\ s a -> s{_dsrName = a})

-- | The unique Open Civic Data identifier for this division.
dsrOcdId :: Lens' DivisionSearchResult (Maybe Text)
dsrOcdId = lens _dsrOcdId (\ s a -> s{_dsrOcdId = a})

-- | Information about the election that was queried.
--
-- /See:/ 'election' smart constructor.
data Election = Election
    { _eOcdDivisionId :: !(Maybe Text)
    , _eElectionDay   :: !(Maybe Text)
    , _eName          :: !(Maybe Text)
    , _eId            :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Election' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eOcdDivisionId'
--
-- * 'eElectionDay'
--
-- * 'eName'
--
-- * 'eId'
election
    :: Election
election =
    Election
    { _eOcdDivisionId = Nothing
    , _eElectionDay = Nothing
    , _eName = Nothing
    , _eId = Nothing
    }

-- | The political division of the election. Represented as an OCD Division
-- ID. Voters within these political jurisdictions are covered by this
-- election. This is typically a state such as
-- ocd-division\/country:us\/state:ca or for the midterms or general
-- election the entire US (i.e. ocd-division\/country:us).
eOcdDivisionId :: Lens' Election (Maybe Text)
eOcdDivisionId
  = lens _eOcdDivisionId
      (\ s a -> s{_eOcdDivisionId = a})

-- | Day of the election in YYYY-MM-DD format.
eElectionDay :: Lens' Election (Maybe Text)
eElectionDay
  = lens _eElectionDay (\ s a -> s{_eElectionDay = a})

-- | A displayable name for the election.
eName :: Lens' Election (Maybe Text)
eName = lens _eName (\ s a -> s{_eName = a})

-- | The unique ID of this election.
eId :: Lens' Election (Maybe Int64)
eId = lens _eId (\ s a -> s{_eId = a})

-- | Information about individual election officials.
--
-- /See:/ 'electionOfficial' smart constructor.
data ElectionOfficial = ElectionOfficial
    { _eoFaxNumber         :: !(Maybe Text)
    , _eoName              :: !(Maybe Text)
    , _eoOfficePhoneNumber :: !(Maybe Text)
    , _eoEmailAddress      :: !(Maybe Text)
    , _eoTitle             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionOfficial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eoFaxNumber'
--
-- * 'eoName'
--
-- * 'eoOfficePhoneNumber'
--
-- * 'eoEmailAddress'
--
-- * 'eoTitle'
electionOfficial
    :: ElectionOfficial
electionOfficial =
    ElectionOfficial
    { _eoFaxNumber = Nothing
    , _eoName = Nothing
    , _eoOfficePhoneNumber = Nothing
    , _eoEmailAddress = Nothing
    , _eoTitle = Nothing
    }

-- | The fax number of the election official.
eoFaxNumber :: Lens' ElectionOfficial (Maybe Text)
eoFaxNumber
  = lens _eoFaxNumber (\ s a -> s{_eoFaxNumber = a})

-- | The full name of the election official.
eoName :: Lens' ElectionOfficial (Maybe Text)
eoName = lens _eoName (\ s a -> s{_eoName = a})

-- | The office phone number of the election official.
eoOfficePhoneNumber :: Lens' ElectionOfficial (Maybe Text)
eoOfficePhoneNumber
  = lens _eoOfficePhoneNumber
      (\ s a -> s{_eoOfficePhoneNumber = a})

-- | The email address of the election official.
eoEmailAddress :: Lens' ElectionOfficial (Maybe Text)
eoEmailAddress
  = lens _eoEmailAddress
      (\ s a -> s{_eoEmailAddress = a})

-- | The title of the election official.
eoTitle :: Lens' ElectionOfficial (Maybe Text)
eoTitle = lens _eoTitle (\ s a -> s{_eoTitle = a})

-- | The list of elections available for this version of the API.
--
-- /See:/ 'electionsQueryResponse' smart constructor.
data ElectionsQueryResponse = ElectionsQueryResponse
    { _eqrKind      :: !Text
    , _eqrElections :: !(Maybe [Maybe Election])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqrKind'
--
-- * 'eqrElections'
electionsQueryResponse
    :: ElectionsQueryResponse
electionsQueryResponse =
    ElectionsQueryResponse
    { _eqrKind = "civicinfo#electionsQueryResponse"
    , _eqrElections = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"civicinfo#electionsQueryResponse\".
eqrKind :: Lens' ElectionsQueryResponse Text
eqrKind = lens _eqrKind (\ s a -> s{_eqrKind = a})

-- | A list of available elections
eqrElections :: Lens' ElectionsQueryResponse [Maybe Election]
eqrElections
  = lens _eqrElections (\ s a -> s{_eqrElections = a})
      . _Default
      . _Coerce

-- | Describes the geographic scope of a contest.
--
-- /See:/ 'electoralDistrict' smart constructor.
data ElectoralDistrict = ElectoralDistrict
    { _edName  :: !(Maybe Text)
    , _edScope :: !(Maybe Text)
    , _edId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectoralDistrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edName'
--
-- * 'edScope'
--
-- * 'edId'
electoralDistrict
    :: ElectoralDistrict
electoralDistrict =
    ElectoralDistrict
    { _edName = Nothing
    , _edScope = Nothing
    , _edId = Nothing
    }

-- | The name of the district.
edName :: Lens' ElectoralDistrict (Maybe Text)
edName = lens _edName (\ s a -> s{_edName = a})

-- | The geographic scope of this district. If unspecified the district\'s
-- geography is not known. One of: national, statewide, congressional,
-- stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide,
-- township, countyCouncil, cityCouncil, ward, special
edScope :: Lens' ElectoralDistrict (Maybe Text)
edScope = lens _edScope (\ s a -> s{_edScope = a})

-- | An identifier for this district, relative to its scope. For example, the
-- 34th State Senate district would have id \"34\" and a scope of
-- stateUpper.
edId :: Lens' ElectoralDistrict (Maybe Text)
edId = lens _edId (\ s a -> s{_edId = a})

-- | Describes a political geography.
--
-- /See:/ 'geographicDivision' smart constructor.
data GeographicDivision = GeographicDivision
    { _gdName          :: !(Maybe Text)
    , _gdOfficeIndices :: !(Maybe [Word32])
    , _gdAlsoKnownAs   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeographicDivision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdName'
--
-- * 'gdOfficeIndices'
--
-- * 'gdAlsoKnownAs'
geographicDivision
    :: GeographicDivision
geographicDivision =
    GeographicDivision
    { _gdName = Nothing
    , _gdOfficeIndices = Nothing
    , _gdAlsoKnownAs = Nothing
    }

-- | The name of the division.
gdName :: Lens' GeographicDivision (Maybe Text)
gdName = lens _gdName (\ s a -> s{_gdName = a})

-- | List of indices in the offices array, one for each office elected from
-- this division. Will only be present if includeOffices was true (or
-- absent) in the request.
gdOfficeIndices :: Lens' GeographicDivision [Word32]
gdOfficeIndices
  = lens _gdOfficeIndices
      (\ s a -> s{_gdOfficeIndices = a})
      . _Default
      . _Coerce

-- | Any other valid OCD IDs that refer to the same division. Because OCD IDs
-- are meant to be human-readable and at least somewhat predictable, there
-- are occasionally several identifiers for a single division. These
-- identifiers are defined to be equivalent to one another, and one is
-- always indicated as the primary identifier. The primary identifier will
-- be returned in ocd_id above, and any other equivalent valid identifiers
-- will be returned in this list. For example, if this division\'s OCD ID
-- is ocd-division\/country:us\/district:dc, this will contain
-- ocd-division\/country:us\/state:dc.
gdAlsoKnownAs :: Lens' GeographicDivision [Text]
gdAlsoKnownAs
  = lens _gdAlsoKnownAs
      (\ s a -> s{_gdAlsoKnownAs = a})
      . _Default
      . _Coerce

-- | Information about an Office held by one or more Officials.
--
-- /See:/ 'office' smart constructor.
data Office = Office
    { _offDivisionId      :: !(Maybe Text)
    , _offRoles           :: !(Maybe [Text])
    , _offOfficialIndices :: !(Maybe [Word32])
    , _offSources         :: !(Maybe [Maybe Source])
    , _offName            :: !(Maybe Text)
    , _offLevels          :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Office' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'offDivisionId'
--
-- * 'offRoles'
--
-- * 'offOfficialIndices'
--
-- * 'offSources'
--
-- * 'offName'
--
-- * 'offLevels'
office
    :: Office
office =
    Office
    { _offDivisionId = Nothing
    , _offRoles = Nothing
    , _offOfficialIndices = Nothing
    , _offSources = Nothing
    , _offName = Nothing
    , _offLevels = Nothing
    }

-- | The OCD ID of the division with which this office is associated.
offDivisionId :: Lens' Office (Maybe Text)
offDivisionId
  = lens _offDivisionId
      (\ s a -> s{_offDivisionId = a})

-- | The roles which this office fulfills. Roles are not meant to be
-- exhaustive, or to exactly specify the entire set of responsibilities of
-- a given office, but are meant to be rough categories that are useful for
-- general selection from or sorting of a list of offices.
offRoles :: Lens' Office [Text]
offRoles
  = lens _offRoles (\ s a -> s{_offRoles = a}) .
      _Default
      . _Coerce

-- | List of indices in the officials array of people who presently hold this
-- office.
offOfficialIndices :: Lens' Office [Word32]
offOfficialIndices
  = lens _offOfficialIndices
      (\ s a -> s{_offOfficialIndices = a})
      . _Default
      . _Coerce

-- | A list of sources for this office. If multiple sources are listed, the
-- data has been aggregated from those sources.
offSources :: Lens' Office [Maybe Source]
offSources
  = lens _offSources (\ s a -> s{_offSources = a}) .
      _Default
      . _Coerce

-- | The human-readable name of the office.
offName :: Lens' Office (Maybe Text)
offName = lens _offName (\ s a -> s{_offName = a})

-- | The levels of government of which this office is part. There may be more
-- than one in cases where a jurisdiction effectively acts at two different
-- levels of government; for example, the mayor of the District of Columbia
-- acts at \"locality\" level, but also effectively at both
-- \"administrative-area-2\" and \"administrative-area-1\".
offLevels :: Lens' Office [Text]
offLevels
  = lens _offLevels (\ s a -> s{_offLevels = a}) .
      _Default
      . _Coerce

-- | Information about a person holding an elected office.
--
-- /See:/ 'official' smart constructor.
data Official = Official
    { _oPhotoUrl :: !(Maybe Text)
    , _oUrls     :: !(Maybe [Text])
    , _oChannels :: !(Maybe [Maybe Channel])
    , _oAddress  :: !(Maybe [Maybe SimpleAddressType])
    , _oPhones   :: !(Maybe [Text])
    , _oName     :: !(Maybe Text)
    , _oEmails   :: !(Maybe [Text])
    , _oParty    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Official' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oPhotoUrl'
--
-- * 'oUrls'
--
-- * 'oChannels'
--
-- * 'oAddress'
--
-- * 'oPhones'
--
-- * 'oName'
--
-- * 'oEmails'
--
-- * 'oParty'
official
    :: Official
official =
    Official
    { _oPhotoUrl = Nothing
    , _oUrls = Nothing
    , _oChannels = Nothing
    , _oAddress = Nothing
    , _oPhones = Nothing
    , _oName = Nothing
    , _oEmails = Nothing
    , _oParty = Nothing
    }

-- | A URL for a photo of the official.
oPhotoUrl :: Lens' Official (Maybe Text)
oPhotoUrl
  = lens _oPhotoUrl (\ s a -> s{_oPhotoUrl = a})

-- | The official\'s public website URLs.
oUrls :: Lens' Official [Text]
oUrls
  = lens _oUrls (\ s a -> s{_oUrls = a}) . _Default .
      _Coerce

-- | A list of known (social) media channels for this official.
oChannels :: Lens' Official [Maybe Channel]
oChannels
  = lens _oChannels (\ s a -> s{_oChannels = a}) .
      _Default
      . _Coerce

-- | Addresses at which to contact the official.
oAddress :: Lens' Official [Maybe SimpleAddressType]
oAddress
  = lens _oAddress (\ s a -> s{_oAddress = a}) .
      _Default
      . _Coerce

-- | The official\'s public contact phone numbers.
oPhones :: Lens' Official [Text]
oPhones
  = lens _oPhones (\ s a -> s{_oPhones = a}) . _Default
      . _Coerce

-- | The official\'s name.
oName :: Lens' Official (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | The direct email addresses for the official.
oEmails :: Lens' Official [Text]
oEmails
  = lens _oEmails (\ s a -> s{_oEmails = a}) . _Default
      . _Coerce

-- | The full name of the party the official belongs to.
oParty :: Lens' Official (Maybe Text)
oParty = lens _oParty (\ s a -> s{_oParty = a})

-- | A location where a voter can vote. This may be an early vote site, an
-- election day voting location, or a drop off location for a completed
-- ballot.
--
-- /See:/ 'pollingLocation' smart constructor.
data PollingLocation = PollingLocation
    { _plVoterServices :: !(Maybe Text)
    , _plEndDate       :: !(Maybe Text)
    , _plSources       :: !(Maybe [Maybe Source])
    , _plAddress       :: !(Maybe (Maybe SimpleAddressType))
    , _plStartDate     :: !(Maybe Text)
    , _plPollingHours  :: !(Maybe Text)
    , _plName          :: !(Maybe Text)
    , _plId            :: !(Maybe Text)
    , _plNotes         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PollingLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plVoterServices'
--
-- * 'plEndDate'
--
-- * 'plSources'
--
-- * 'plAddress'
--
-- * 'plStartDate'
--
-- * 'plPollingHours'
--
-- * 'plName'
--
-- * 'plId'
--
-- * 'plNotes'
pollingLocation
    :: PollingLocation
pollingLocation =
    PollingLocation
    { _plVoterServices = Nothing
    , _plEndDate = Nothing
    , _plSources = Nothing
    , _plAddress = Nothing
    , _plStartDate = Nothing
    , _plPollingHours = Nothing
    , _plName = Nothing
    , _plId = Nothing
    , _plNotes = Nothing
    }

-- | The services provided by this early vote site or drop off location. This
-- field is not populated for polling locations.
plVoterServices :: Lens' PollingLocation (Maybe Text)
plVoterServices
  = lens _plVoterServices
      (\ s a -> s{_plVoterServices = a})

-- | The last date that this early vote site or drop off location may be
-- used. This field is not populated for polling locations.
plEndDate :: Lens' PollingLocation (Maybe Text)
plEndDate
  = lens _plEndDate (\ s a -> s{_plEndDate = a})

-- | A list of sources for this location. If multiple sources are listed the
-- data has been aggregated from those sources.
plSources :: Lens' PollingLocation [Maybe Source]
plSources
  = lens _plSources (\ s a -> s{_plSources = a}) .
      _Default
      . _Coerce

-- | The address of the location.
plAddress :: Lens' PollingLocation (Maybe (Maybe SimpleAddressType))
plAddress
  = lens _plAddress (\ s a -> s{_plAddress = a})

-- | The first date that this early vote site or drop off location may be
-- used. This field is not populated for polling locations.
plStartDate :: Lens' PollingLocation (Maybe Text)
plStartDate
  = lens _plStartDate (\ s a -> s{_plStartDate = a})

-- | A description of when this location is open.
plPollingHours :: Lens' PollingLocation (Maybe Text)
plPollingHours
  = lens _plPollingHours
      (\ s a -> s{_plPollingHours = a})

-- | The name of the early vote site or drop off location. This field is not
-- populated for polling locations.
plName :: Lens' PollingLocation (Maybe Text)
plName = lens _plName (\ s a -> s{_plName = a})

-- | An ID for this object. IDs may change in future requests and should not
-- be cached. Access to this field requires special access that can be
-- requested from the Request more link on the Quotas page.
plId :: Lens' PollingLocation (Maybe Text)
plId = lens _plId (\ s a -> s{_plId = a})

-- | Notes about this location (e.g. accessibility ramp or entrance to use).
plNotes :: Lens' PollingLocation (Maybe Text)
plNotes = lens _plNotes (\ s a -> s{_plNotes = a})

--
-- /See:/ 'representativeInfoData' smart constructor.
data RepresentativeInfoData = RepresentativeInfoData
    { _ridOfficials :: !(Maybe [Maybe Official])
    , _ridDivisions :: !(Maybe RepresentativeInfoDataDivisions)
    , _ridOffices   :: !(Maybe [Maybe Office])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ridOfficials'
--
-- * 'ridDivisions'
--
-- * 'ridOffices'
representativeInfoData
    :: RepresentativeInfoData
representativeInfoData =
    RepresentativeInfoData
    { _ridOfficials = Nothing
    , _ridDivisions = Nothing
    , _ridOffices = Nothing
    }

-- | Officials holding the offices listed above. Will only be present if
-- includeOffices was true in the request.
ridOfficials :: Lens' RepresentativeInfoData [Maybe Official]
ridOfficials
  = lens _ridOfficials (\ s a -> s{_ridOfficials = a})
      . _Default
      . _Coerce

-- | Political geographic divisions that contain the requested address.
ridDivisions :: Lens' RepresentativeInfoData (Maybe RepresentativeInfoDataDivisions)
ridDivisions
  = lens _ridDivisions (\ s a -> s{_ridDivisions = a})

-- | Elected offices referenced by the divisions listed above. Will only be
-- present if includeOffices was true in the request.
ridOffices :: Lens' RepresentativeInfoData [Maybe Office]
ridOffices
  = lens _ridOffices (\ s a -> s{_ridOffices = a}) .
      _Default
      . _Coerce

-- | Political geographic divisions that contain the requested address.
--
-- /See:/ 'representativeInfoDataDivisions' smart constructor.
data RepresentativeInfoDataDivisions =
    RepresentativeInfoDataDivisions
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoDataDivisions' with the minimum fields required to make a request.
--
representativeInfoDataDivisions
    :: RepresentativeInfoDataDivisions
representativeInfoDataDivisions = RepresentativeInfoDataDivisions

-- | The result of a representative info lookup query.
--
-- /See:/ 'representativeInfoResponse' smart constructor.
data RepresentativeInfoResponse = RepresentativeInfoResponse
    { _rirKind            :: !Text
    , _rirNormalizedInput :: !(Maybe (Maybe SimpleAddressType))
    , _rirOfficials       :: !(Maybe [Maybe Official])
    , _rirDivisions       :: !(Maybe RepresentativeInfoResponseDivisions)
    , _rirOffices         :: !(Maybe [Maybe Office])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirKind'
--
-- * 'rirNormalizedInput'
--
-- * 'rirOfficials'
--
-- * 'rirDivisions'
--
-- * 'rirOffices'
representativeInfoResponse
    :: RepresentativeInfoResponse
representativeInfoResponse =
    RepresentativeInfoResponse
    { _rirKind = "civicinfo#representativeInfoResponse"
    , _rirNormalizedInput = Nothing
    , _rirOfficials = Nothing
    , _rirDivisions = Nothing
    , _rirOffices = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"civicinfo#representativeInfoResponse\".
rirKind :: Lens' RepresentativeInfoResponse Text
rirKind = lens _rirKind (\ s a -> s{_rirKind = a})

-- | The normalized version of the requested address
rirNormalizedInput :: Lens' RepresentativeInfoResponse (Maybe (Maybe SimpleAddressType))
rirNormalizedInput
  = lens _rirNormalizedInput
      (\ s a -> s{_rirNormalizedInput = a})

-- | Officials holding the offices listed above. Will only be present if
-- includeOffices was true in the request.
rirOfficials :: Lens' RepresentativeInfoResponse [Maybe Official]
rirOfficials
  = lens _rirOfficials (\ s a -> s{_rirOfficials = a})
      . _Default
      . _Coerce

-- | Political geographic divisions that contain the requested address.
rirDivisions :: Lens' RepresentativeInfoResponse (Maybe RepresentativeInfoResponseDivisions)
rirDivisions
  = lens _rirDivisions (\ s a -> s{_rirDivisions = a})

-- | Elected offices referenced by the divisions listed above. Will only be
-- present if includeOffices was true in the request.
rirOffices :: Lens' RepresentativeInfoResponse [Maybe Office]
rirOffices
  = lens _rirOffices (\ s a -> s{_rirOffices = a}) .
      _Default
      . _Coerce

-- | Political geographic divisions that contain the requested address.
--
-- /See:/ 'representativeInfoResponseDivisions' smart constructor.
data RepresentativeInfoResponseDivisions =
    RepresentativeInfoResponseDivisions
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoResponseDivisions' with the minimum fields required to make a request.
--
representativeInfoResponseDivisions
    :: RepresentativeInfoResponseDivisions
representativeInfoResponseDivisions = RepresentativeInfoResponseDivisions

-- | A simple representation of an address.
--
-- /See:/ 'simpleAddressType' smart constructor.
data SimpleAddressType = SimpleAddressType
    { _satLine2        :: !(Maybe Text)
    , _satState        :: !(Maybe Text)
    , _satLine3        :: !(Maybe Text)
    , _satZip          :: !(Maybe Text)
    , _satCity         :: !(Maybe Text)
    , _satLine1        :: !(Maybe Text)
    , _satLocationName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SimpleAddressType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'satLine2'
--
-- * 'satState'
--
-- * 'satLine3'
--
-- * 'satZip'
--
-- * 'satCity'
--
-- * 'satLine1'
--
-- * 'satLocationName'
simpleAddressType
    :: SimpleAddressType
simpleAddressType =
    SimpleAddressType
    { _satLine2 = Nothing
    , _satState = Nothing
    , _satLine3 = Nothing
    , _satZip = Nothing
    , _satCity = Nothing
    , _satLine1 = Nothing
    , _satLocationName = Nothing
    }

-- | The second line the address, if needed.
satLine2 :: Lens' SimpleAddressType (Maybe Text)
satLine2 = lens _satLine2 (\ s a -> s{_satLine2 = a})

-- | The US two letter state abbreviation of the address.
satState :: Lens' SimpleAddressType (Maybe Text)
satState = lens _satState (\ s a -> s{_satState = a})

-- | The third line of the address, if needed.
satLine3 :: Lens' SimpleAddressType (Maybe Text)
satLine3 = lens _satLine3 (\ s a -> s{_satLine3 = a})

-- | The US Postal Zip Code of the address.
satZip :: Lens' SimpleAddressType (Maybe Text)
satZip = lens _satZip (\ s a -> s{_satZip = a})

-- | The city or town for the address.
satCity :: Lens' SimpleAddressType (Maybe Text)
satCity = lens _satCity (\ s a -> s{_satCity = a})

-- | The street name and number of this address.
satLine1 :: Lens' SimpleAddressType (Maybe Text)
satLine1 = lens _satLine1 (\ s a -> s{_satLine1 = a})

-- | The name of the location.
satLocationName :: Lens' SimpleAddressType (Maybe Text)
satLocationName
  = lens _satLocationName
      (\ s a -> s{_satLocationName = a})

-- | Contains information about the data source for the element containing
-- it.
--
-- /See:/ 'source' smart constructor.
data Source = Source
    { _sName     :: !(Maybe Text)
    , _sOfficial :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sName'
--
-- * 'sOfficial'
source
    :: Source
source =
    Source
    { _sName = Nothing
    , _sOfficial = Nothing
    }

-- | The name of the data source.
sName :: Lens' Source (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Whether this data comes from an official government source.
sOfficial :: Lens' Source (Maybe Bool)
sOfficial
  = lens _sOfficial (\ s a -> s{_sOfficial = a})

-- | The result of a voter info lookup query.
--
-- /See:/ 'voterInfoResponse' smart constructor.
data VoterInfoResponse = VoterInfoResponse
    { _virOtherElections   :: !(Maybe [Maybe Election])
    , _virContests         :: !(Maybe [Maybe Contest])
    , _virState            :: !(Maybe [Maybe AdministrationRegion])
    , _virKind             :: !Text
    , _virDropOffLocations :: !(Maybe [Maybe PollingLocation])
    , _virElection         :: !(Maybe (Maybe Election))
    , _virNormalizedInput  :: !(Maybe (Maybe SimpleAddressType))
    , _virMailOnly         :: !(Maybe Bool)
    , _virEarlyVoteSites   :: !(Maybe [Maybe PollingLocation])
    , _virPollingLocations :: !(Maybe [Maybe PollingLocation])
    , _virPrecinctId       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VoterInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'virOtherElections'
--
-- * 'virContests'
--
-- * 'virState'
--
-- * 'virKind'
--
-- * 'virDropOffLocations'
--
-- * 'virElection'
--
-- * 'virNormalizedInput'
--
-- * 'virMailOnly'
--
-- * 'virEarlyVoteSites'
--
-- * 'virPollingLocations'
--
-- * 'virPrecinctId'
voterInfoResponse
    :: VoterInfoResponse
voterInfoResponse =
    VoterInfoResponse
    { _virOtherElections = Nothing
    , _virContests = Nothing
    , _virState = Nothing
    , _virKind = "civicinfo#voterInfoResponse"
    , _virDropOffLocations = Nothing
    , _virElection = Nothing
    , _virNormalizedInput = Nothing
    , _virMailOnly = Nothing
    , _virEarlyVoteSites = Nothing
    , _virPollingLocations = Nothing
    , _virPrecinctId = Nothing
    }

-- | If no election ID was specified in the query, and there was more than
-- one election with data for the given voter, this will contain
-- information about the other elections that could apply.
virOtherElections :: Lens' VoterInfoResponse [Maybe Election]
virOtherElections
  = lens _virOtherElections
      (\ s a -> s{_virOtherElections = a})
      . _Default
      . _Coerce

-- | Contests that will appear on the voter\'s ballot.
virContests :: Lens' VoterInfoResponse [Maybe Contest]
virContests
  = lens _virContests (\ s a -> s{_virContests = a}) .
      _Default
      . _Coerce

-- | Local Election Information for the state that the voter votes in. For
-- the US, there will only be one element in this array.
virState :: Lens' VoterInfoResponse [Maybe AdministrationRegion]
virState
  = lens _virState (\ s a -> s{_virState = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"civicinfo#voterInfoResponse\".
virKind :: Lens' VoterInfoResponse Text
virKind = lens _virKind (\ s a -> s{_virKind = a})

-- | Locations where a voter is eligible to drop off a completed ballot. The
-- voter must have received and completed a ballot prior to arriving at the
-- location. The location may not have ballots available on the premises.
-- These locations could be open on or before election day as indicated in
-- the pollingHours field.
virDropOffLocations :: Lens' VoterInfoResponse [Maybe PollingLocation]
virDropOffLocations
  = lens _virDropOffLocations
      (\ s a -> s{_virDropOffLocations = a})
      . _Default
      . _Coerce

-- | The election that was queried.
virElection :: Lens' VoterInfoResponse (Maybe (Maybe Election))
virElection
  = lens _virElection (\ s a -> s{_virElection = a})

-- | The normalized version of the requested address
virNormalizedInput :: Lens' VoterInfoResponse (Maybe (Maybe SimpleAddressType))
virNormalizedInput
  = lens _virNormalizedInput
      (\ s a -> s{_virNormalizedInput = a})

-- | Specifies whether voters in the precinct vote only by mailing their
-- ballots (with the possible option of dropping off their ballots as
-- well).
virMailOnly :: Lens' VoterInfoResponse (Maybe Bool)
virMailOnly
  = lens _virMailOnly (\ s a -> s{_virMailOnly = a})

-- | Locations where the voter is eligible to vote early, prior to election
-- day.
virEarlyVoteSites :: Lens' VoterInfoResponse [Maybe PollingLocation]
virEarlyVoteSites
  = lens _virEarlyVoteSites
      (\ s a -> s{_virEarlyVoteSites = a})
      . _Default
      . _Coerce

-- | Locations where the voter is eligible to vote on election day.
virPollingLocations :: Lens' VoterInfoResponse [Maybe PollingLocation]
virPollingLocations
  = lens _virPollingLocations
      (\ s a -> s{_virPollingLocations = a})
      . _Default
      . _Coerce

virPrecinctId :: Lens' VoterInfoResponse (Maybe Text)
virPrecinctId
  = lens _virPrecinctId
      (\ s a -> s{_virPrecinctId = a})
