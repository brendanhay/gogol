{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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

-- | Political geographic divisions that contain the requested address.
--
-- /See:/ 'representativeInfoResponseDivisions' smart constructor.
data RepresentativeInfoResponseDivisions =
    RepresentativeInfoResponseDivisions
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoResponseDivisions' with the minimum fields required to make a request.
--
representativeInfoResponseDivisions
    :: RepresentativeInfoResponseDivisions
representativeInfoResponseDivisions = RepresentativeInfoResponseDivisions

instance FromJSON RepresentativeInfoResponseDivisions
         where
        parseJSON
          = withObject "RepresentativeInfoResponseDivisions"
              (\ o -> pure RepresentativeInfoResponseDivisions)

instance ToJSON RepresentativeInfoResponseDivisions
         where
        toJSON = const (Object mempty)

-- | The result of a voter info lookup query.
--
-- /See:/ 'voterInfoResponse' smart constructor.
data VoterInfoResponse = VoterInfoResponse
    { _virOtherElections   :: !(Maybe [Election])
    , _virContests         :: !(Maybe [Contest])
    , _virState            :: !(Maybe [AdministrationRegion])
    , _virKind             :: !Text
    , _virDropOffLocations :: !(Maybe [PollingLocation])
    , _virElection         :: !(Maybe Election)
    , _virNormalizedInput  :: !(Maybe SimpleAddressType)
    , _virMailOnly         :: !(Maybe Bool)
    , _virEarlyVoteSites   :: !(Maybe [PollingLocation])
    , _virPollingLocations :: !(Maybe [PollingLocation])
    , _virPrecinctId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
virOtherElections :: Lens' VoterInfoResponse [Election]
virOtherElections
  = lens _virOtherElections
      (\ s a -> s{_virOtherElections = a})
      . _Default
      . _Coerce

-- | Contests that will appear on the voter\'s ballot.
virContests :: Lens' VoterInfoResponse [Contest]
virContests
  = lens _virContests (\ s a -> s{_virContests = a}) .
      _Default
      . _Coerce

-- | Local Election Information for the state that the voter votes in. For
-- the US, there will only be one element in this array.
virState :: Lens' VoterInfoResponse [AdministrationRegion]
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
virDropOffLocations :: Lens' VoterInfoResponse [PollingLocation]
virDropOffLocations
  = lens _virDropOffLocations
      (\ s a -> s{_virDropOffLocations = a})
      . _Default
      . _Coerce

-- | The election that was queried.
virElection :: Lens' VoterInfoResponse (Maybe Election)
virElection
  = lens _virElection (\ s a -> s{_virElection = a})

-- | The normalized version of the requested address
virNormalizedInput :: Lens' VoterInfoResponse (Maybe SimpleAddressType)
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
virEarlyVoteSites :: Lens' VoterInfoResponse [PollingLocation]
virEarlyVoteSites
  = lens _virEarlyVoteSites
      (\ s a -> s{_virEarlyVoteSites = a})
      . _Default
      . _Coerce

-- | Locations where the voter is eligible to vote on election day.
virPollingLocations :: Lens' VoterInfoResponse [PollingLocation]
virPollingLocations
  = lens _virPollingLocations
      (\ s a -> s{_virPollingLocations = a})
      . _Default
      . _Coerce

virPrecinctId :: Lens' VoterInfoResponse (Maybe Text)
virPrecinctId
  = lens _virPrecinctId
      (\ s a -> s{_virPrecinctId = a})

instance FromJSON VoterInfoResponse where
        parseJSON
          = withObject "VoterInfoResponse"
              (\ o ->
                 VoterInfoResponse <$>
                   (o .:? "otherElections" .!= mempty) <*>
                     (o .:? "contests" .!= mempty)
                     <*> (o .:? "state" .!= mempty)
                     <*> (o .:? "kind" .!= "civicinfo#voterInfoResponse")
                     <*> (o .:? "dropOffLocations" .!= mempty)
                     <*> (o .:? "election")
                     <*> (o .:? "normalizedInput")
                     <*> (o .:? "mailOnly")
                     <*> (o .:? "earlyVoteSites" .!= mempty)
                     <*> (o .:? "pollingLocations" .!= mempty)
                     <*> (o .:? "precinctId"))

instance ToJSON VoterInfoResponse where
        toJSON VoterInfoResponse{..}
          = object
              (catMaybes
                 [("otherElections" .=) <$> _virOtherElections,
                  ("contests" .=) <$> _virContests,
                  ("state" .=) <$> _virState,
                  Just ("kind" .= _virKind),
                  ("dropOffLocations" .=) <$> _virDropOffLocations,
                  ("election" .=) <$> _virElection,
                  ("normalizedInput" .=) <$> _virNormalizedInput,
                  ("mailOnly" .=) <$> _virMailOnly,
                  ("earlyVoteSites" .=) <$> _virEarlyVoteSites,
                  ("pollingLocations" .=) <$> _virPollingLocations,
                  ("precinctId" .=) <$> _virPrecinctId])

-- | A location where a voter can vote. This may be an early vote site, an
-- election day voting location, or a drop off location for a completed
-- ballot.
--
-- /See:/ 'pollingLocation' smart constructor.
data PollingLocation = PollingLocation
    { _plVoterServices :: !(Maybe Text)
    , _plEndDate       :: !(Maybe Text)
    , _plSources       :: !(Maybe [Source])
    , _plAddress       :: !(Maybe SimpleAddressType)
    , _plStartDate     :: !(Maybe Text)
    , _plPollingHours  :: !(Maybe Text)
    , _plName          :: !(Maybe Text)
    , _plId            :: !(Maybe Text)
    , _plNotes         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
plSources :: Lens' PollingLocation [Source]
plSources
  = lens _plSources (\ s a -> s{_plSources = a}) .
      _Default
      . _Coerce

-- | The address of the location.
plAddress :: Lens' PollingLocation (Maybe SimpleAddressType)
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

instance FromJSON PollingLocation where
        parseJSON
          = withObject "PollingLocation"
              (\ o ->
                 PollingLocation <$>
                   (o .:? "voterServices") <*> (o .:? "endDate") <*>
                     (o .:? "sources" .!= mempty)
                     <*> (o .:? "address")
                     <*> (o .:? "startDate")
                     <*> (o .:? "pollingHours")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "notes"))

instance ToJSON PollingLocation where
        toJSON PollingLocation{..}
          = object
              (catMaybes
                 [("voterServices" .=) <$> _plVoterServices,
                  ("endDate" .=) <$> _plEndDate,
                  ("sources" .=) <$> _plSources,
                  ("address" .=) <$> _plAddress,
                  ("startDate" .=) <$> _plStartDate,
                  ("pollingHours" .=) <$> _plPollingHours,
                  ("name" .=) <$> _plName, ("id" .=) <$> _plId,
                  ("notes" .=) <$> _plNotes])

-- | Describes a political geography.
--
-- /See:/ 'geographicDivision' smart constructor.
data GeographicDivision = GeographicDivision
    { _gdName          :: !(Maybe Text)
    , _gdOfficeIndices :: !(Maybe [Word32])
    , _gdAlsoKnownAs   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON GeographicDivision where
        parseJSON
          = withObject "GeographicDivision"
              (\ o ->
                 GeographicDivision <$>
                   (o .:? "name") <*> (o .:? "officeIndices" .!= mempty)
                     <*> (o .:? "alsoKnownAs" .!= mempty))

instance ToJSON GeographicDivision where
        toJSON GeographicDivision{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gdName,
                  ("officeIndices" .=) <$> _gdOfficeIndices,
                  ("alsoKnownAs" .=) <$> _gdAlsoKnownAs])

-- | Information about a candidate running for elected office.
--
-- /See:/ 'candidate' smart constructor.
data Candidate = Candidate
    { _cEmail         :: !(Maybe Text)
    , _cPhone         :: !(Maybe Text)
    , _cPhotoURL      :: !(Maybe Text)
    , _cChannels      :: !(Maybe [Channel])
    , _cCandidateURL  :: !(Maybe Text)
    , _cOrderOnBallot :: !(Maybe Int64)
    , _cName          :: !(Maybe Text)
    , _cParty         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Candidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEmail'
--
-- * 'cPhone'
--
-- * 'cPhotoURL'
--
-- * 'cChannels'
--
-- * 'cCandidateURL'
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
    , _cPhotoURL = Nothing
    , _cChannels = Nothing
    , _cCandidateURL = Nothing
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
cPhotoURL :: Lens' Candidate (Maybe Text)
cPhotoURL
  = lens _cPhotoURL (\ s a -> s{_cPhotoURL = a})

-- | A list of known (social) media channels for this candidate.
cChannels :: Lens' Candidate [Channel]
cChannels
  = lens _cChannels (\ s a -> s{_cChannels = a}) .
      _Default
      . _Coerce

-- | The URL for the candidate\'s campaign web site.
cCandidateURL :: Lens' Candidate (Maybe Text)
cCandidateURL
  = lens _cCandidateURL
      (\ s a -> s{_cCandidateURL = a})

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

instance FromJSON Candidate where
        parseJSON
          = withObject "Candidate"
              (\ o ->
                 Candidate <$>
                   (o .:? "email") <*> (o .:? "phone") <*>
                     (o .:? "photoUrl")
                     <*> (o .:? "channels" .!= mempty)
                     <*> (o .:? "candidateUrl")
                     <*> (o .:? "orderOnBallot")
                     <*> (o .:? "name")
                     <*> (o .:? "party"))

instance ToJSON Candidate where
        toJSON Candidate{..}
          = object
              (catMaybes
                 [("email" .=) <$> _cEmail, ("phone" .=) <$> _cPhone,
                  ("photoUrl" .=) <$> _cPhotoURL,
                  ("channels" .=) <$> _cChannels,
                  ("candidateUrl" .=) <$> _cCandidateURL,
                  ("orderOnBallot" .=) <$> _cOrderOnBallot,
                  ("name" .=) <$> _cName, ("party" .=) <$> _cParty])

-- | Information about an Office held by one or more Officials.
--
-- /See:/ 'office' smart constructor.
data Office = Office
    { _oDivisionId      :: !(Maybe Text)
    , _oRoles           :: !(Maybe [Text])
    , _oOfficialIndices :: !(Maybe [Word32])
    , _oSources         :: !(Maybe [Source])
    , _oName            :: !(Maybe Text)
    , _oLevels          :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Office' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDivisionId'
--
-- * 'oRoles'
--
-- * 'oOfficialIndices'
--
-- * 'oSources'
--
-- * 'oName'
--
-- * 'oLevels'
office
    :: Office
office =
    Office
    { _oDivisionId = Nothing
    , _oRoles = Nothing
    , _oOfficialIndices = Nothing
    , _oSources = Nothing
    , _oName = Nothing
    , _oLevels = Nothing
    }

-- | The OCD ID of the division with which this office is associated.
oDivisionId :: Lens' Office (Maybe Text)
oDivisionId
  = lens _oDivisionId (\ s a -> s{_oDivisionId = a})

-- | The roles which this office fulfills. Roles are not meant to be
-- exhaustive, or to exactly specify the entire set of responsibilities of
-- a given office, but are meant to be rough categories that are useful for
-- general selection from or sorting of a list of offices.
oRoles :: Lens' Office [Text]
oRoles
  = lens _oRoles (\ s a -> s{_oRoles = a}) . _Default .
      _Coerce

-- | List of indices in the officials array of people who presently hold this
-- office.
oOfficialIndices :: Lens' Office [Word32]
oOfficialIndices
  = lens _oOfficialIndices
      (\ s a -> s{_oOfficialIndices = a})
      . _Default
      . _Coerce

-- | A list of sources for this office. If multiple sources are listed, the
-- data has been aggregated from those sources.
oSources :: Lens' Office [Source]
oSources
  = lens _oSources (\ s a -> s{_oSources = a}) .
      _Default
      . _Coerce

-- | The human-readable name of the office.
oName :: Lens' Office (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | The levels of government of which this office is part. There may be more
-- than one in cases where a jurisdiction effectively acts at two different
-- levels of government; for example, the mayor of the District of Columbia
-- acts at \"locality\" level, but also effectively at both
-- \"administrative-area-2\" and \"administrative-area-1\".
oLevels :: Lens' Office [Text]
oLevels
  = lens _oLevels (\ s a -> s{_oLevels = a}) . _Default
      . _Coerce

instance FromJSON Office where
        parseJSON
          = withObject "Office"
              (\ o ->
                 Office <$>
                   (o .:? "divisionId") <*> (o .:? "roles" .!= mempty)
                     <*> (o .:? "officialIndices" .!= mempty)
                     <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "levels" .!= mempty))

instance ToJSON Office where
        toJSON Office{..}
          = object
              (catMaybes
                 [("divisionId" .=) <$> _oDivisionId,
                  ("roles" .=) <$> _oRoles,
                  ("officialIndices" .=) <$> _oOfficialIndices,
                  ("sources" .=) <$> _oSources, ("name" .=) <$> _oName,
                  ("levels" .=) <$> _oLevels])

-- | A social media or web channel for a candidate.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel
    { _cId   :: !(Maybe Text)
    , _cType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cId'
--
-- * 'cType'
channel
    :: Channel
channel =
    Channel
    { _cId = Nothing
    , _cType = Nothing
    }

-- | The unique public identifier for the candidate\'s channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | The type of channel. The following is a list of types of channels, but
-- is not exhaustive. More channel types may be added at a later time. One
-- of: GooglePlus, YouTube, Facebook, Twitter
cType :: Lens' Channel (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o -> Channel <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel{..}
          = object
              (catMaybes
                 [("id" .=) <$> _cId, ("type" .=) <$> _cType])

-- | Information about the election that was queried.
--
-- /See:/ 'election' smart constructor.
data Election = Election
    { _eOcdDivisionId :: !(Maybe Text)
    , _eElectionDay   :: !(Maybe Text)
    , _eName          :: !(Maybe Text)
    , _eId            :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Election where
        parseJSON
          = withObject "Election"
              (\ o ->
                 Election <$>
                   (o .:? "ocdDivisionId") <*> (o .:? "electionDay") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Election where
        toJSON Election{..}
          = object
              (catMaybes
                 [("ocdDivisionId" .=) <$> _eOcdDivisionId,
                  ("electionDay" .=) <$> _eElectionDay,
                  ("name" .=) <$> _eName, ("id" .=) <$> _eId])

-- | The result of a representative info lookup query.
--
-- /See:/ 'representativeInfoResponse' smart constructor.
data RepresentativeInfoResponse = RepresentativeInfoResponse
    { _rirKind            :: !Text
    , _rirNormalizedInput :: !(Maybe SimpleAddressType)
    , _rirOfficials       :: !(Maybe [Official])
    , _rirDivisions       :: !(Maybe RepresentativeInfoResponseDivisions)
    , _rirOffices         :: !(Maybe [Office])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
rirNormalizedInput :: Lens' RepresentativeInfoResponse (Maybe SimpleAddressType)
rirNormalizedInput
  = lens _rirNormalizedInput
      (\ s a -> s{_rirNormalizedInput = a})

-- | Officials holding the offices listed above. Will only be present if
-- includeOffices was true in the request.
rirOfficials :: Lens' RepresentativeInfoResponse [Official]
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
rirOffices :: Lens' RepresentativeInfoResponse [Office]
rirOffices
  = lens _rirOffices (\ s a -> s{_rirOffices = a}) .
      _Default
      . _Coerce

instance FromJSON RepresentativeInfoResponse where
        parseJSON
          = withObject "RepresentativeInfoResponse"
              (\ o ->
                 RepresentativeInfoResponse <$>
                   (o .:? "kind" .!=
                      "civicinfo#representativeInfoResponse")
                     <*> (o .:? "normalizedInput")
                     <*> (o .:? "officials" .!= mempty)
                     <*> (o .:? "divisions")
                     <*> (o .:? "offices" .!= mempty))

instance ToJSON RepresentativeInfoResponse where
        toJSON RepresentativeInfoResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rirKind),
                  ("normalizedInput" .=) <$> _rirNormalizedInput,
                  ("officials" .=) <$> _rirOfficials,
                  ("divisions" .=) <$> _rirDivisions,
                  ("offices" .=) <$> _rirOffices])

-- | Represents a political geographic division that matches the requested
-- query.
--
-- /See:/ 'divisionSearchResult' smart constructor.
data DivisionSearchResult = DivisionSearchResult
    { _dsrAliases :: !(Maybe [Text])
    , _dsrName    :: !(Maybe Text)
    , _dsrOcdId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON DivisionSearchResult where
        parseJSON
          = withObject "DivisionSearchResult"
              (\ o ->
                 DivisionSearchResult <$>
                   (o .:? "aliases" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "ocdId"))

instance ToJSON DivisionSearchResult where
        toJSON DivisionSearchResult{..}
          = object
              (catMaybes
                 [("aliases" .=) <$> _dsrAliases,
                  ("name" .=) <$> _dsrName,
                  ("ocdId" .=) <$> _dsrOcdId])

-- | Information about an election administrative body (e.g. County Board of
-- Elections).
--
-- /See:/ 'administrativeBody' smart constructor.
data AdministrativeBody = AdministrativeBody
    { _abCorrespondenceAddress               :: !(Maybe SimpleAddressType)
    , _abAbsenteeVotingInfoURL               :: !(Maybe Text)
    , _abHoursOfOperation                    :: !(Maybe Text)
    , _abBallotInfoURL                       :: !(Maybe Text)
    , _abPhysicalAddress                     :: !(Maybe SimpleAddressType)
    , _abElectionRegistrationConfirmationURL :: !(Maybe Text)
    , _abElectionInfoURL                     :: !(Maybe Text)
    , _abVotingLocationFinderURL             :: !(Maybe Text)
    , _abElectionOfficials                   :: !(Maybe [ElectionOfficial])
    , _abName                                :: !(Maybe Text)
    , _abElectionRulesURL                    :: !(Maybe Text)
    , _abVoterServices                       :: !(Maybe [Text])
    , _abElectionRegistrationURL             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdministrativeBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abCorrespondenceAddress'
--
-- * 'abAbsenteeVotingInfoURL'
--
-- * 'abHoursOfOperation'
--
-- * 'abBallotInfoURL'
--
-- * 'abPhysicalAddress'
--
-- * 'abElectionRegistrationConfirmationURL'
--
-- * 'abElectionInfoURL'
--
-- * 'abVotingLocationFinderURL'
--
-- * 'abElectionOfficials'
--
-- * 'abName'
--
-- * 'abElectionRulesURL'
--
-- * 'abVoterServices'
--
-- * 'abElectionRegistrationURL'
administrativeBody
    :: AdministrativeBody
administrativeBody =
    AdministrativeBody
    { _abCorrespondenceAddress = Nothing
    , _abAbsenteeVotingInfoURL = Nothing
    , _abHoursOfOperation = Nothing
    , _abBallotInfoURL = Nothing
    , _abPhysicalAddress = Nothing
    , _abElectionRegistrationConfirmationURL = Nothing
    , _abElectionInfoURL = Nothing
    , _abVotingLocationFinderURL = Nothing
    , _abElectionOfficials = Nothing
    , _abName = Nothing
    , _abElectionRulesURL = Nothing
    , _abVoterServices = Nothing
    , _abElectionRegistrationURL = Nothing
    }

-- | The mailing address of this administrative body.
abCorrespondenceAddress :: Lens' AdministrativeBody (Maybe SimpleAddressType)
abCorrespondenceAddress
  = lens _abCorrespondenceAddress
      (\ s a -> s{_abCorrespondenceAddress = a})

-- | A URL provided by this administrative body for information on absentee
-- voting.
abAbsenteeVotingInfoURL :: Lens' AdministrativeBody (Maybe Text)
abAbsenteeVotingInfoURL
  = lens _abAbsenteeVotingInfoURL
      (\ s a -> s{_abAbsenteeVotingInfoURL = a})

-- | A description of the hours of operation for this administrative body.
abHoursOfOperation :: Lens' AdministrativeBody (Maybe Text)
abHoursOfOperation
  = lens _abHoursOfOperation
      (\ s a -> s{_abHoursOfOperation = a})

-- | A URL provided by this administrative body to give contest information
-- to the voter.
abBallotInfoURL :: Lens' AdministrativeBody (Maybe Text)
abBallotInfoURL
  = lens _abBallotInfoURL
      (\ s a -> s{_abBallotInfoURL = a})

-- | The physical address of this administrative body.
abPhysicalAddress :: Lens' AdministrativeBody (Maybe SimpleAddressType)
abPhysicalAddress
  = lens _abPhysicalAddress
      (\ s a -> s{_abPhysicalAddress = a})

-- | A URL provided by this administrative body for confirming that the voter
-- is registered to vote.
abElectionRegistrationConfirmationURL :: Lens' AdministrativeBody (Maybe Text)
abElectionRegistrationConfirmationURL
  = lens _abElectionRegistrationConfirmationURL
      (\ s a ->
         s{_abElectionRegistrationConfirmationURL = a})

-- | A URL provided by this administrative body for looking up general
-- election information.
abElectionInfoURL :: Lens' AdministrativeBody (Maybe Text)
abElectionInfoURL
  = lens _abElectionInfoURL
      (\ s a -> s{_abElectionInfoURL = a})

-- | A URL provided by this administrative body for looking up where to vote.
abVotingLocationFinderURL :: Lens' AdministrativeBody (Maybe Text)
abVotingLocationFinderURL
  = lens _abVotingLocationFinderURL
      (\ s a -> s{_abVotingLocationFinderURL = a})

-- | The election officials for this election administrative body.
abElectionOfficials :: Lens' AdministrativeBody [ElectionOfficial]
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
abElectionRulesURL :: Lens' AdministrativeBody (Maybe Text)
abElectionRulesURL
  = lens _abElectionRulesURL
      (\ s a -> s{_abElectionRulesURL = a})

-- | A description of the services this administrative body may provide.
abVoterServices :: Lens' AdministrativeBody [Text]
abVoterServices
  = lens _abVoterServices
      (\ s a -> s{_abVoterServices = a})
      . _Default
      . _Coerce

-- | A URL provided by this administrative body for looking up how to
-- register to vote.
abElectionRegistrationURL :: Lens' AdministrativeBody (Maybe Text)
abElectionRegistrationURL
  = lens _abElectionRegistrationURL
      (\ s a -> s{_abElectionRegistrationURL = a})

instance FromJSON AdministrativeBody where
        parseJSON
          = withObject "AdministrativeBody"
              (\ o ->
                 AdministrativeBody <$>
                   (o .:? "correspondenceAddress") <*>
                     (o .:? "absenteeVotingInfoUrl")
                     <*> (o .:? "hoursOfOperation")
                     <*> (o .:? "ballotInfoUrl")
                     <*> (o .:? "physicalAddress")
                     <*> (o .:? "electionRegistrationConfirmationUrl")
                     <*> (o .:? "electionInfoUrl")
                     <*> (o .:? "votingLocationFinderUrl")
                     <*> (o .:? "electionOfficials" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "electionRulesUrl")
                     <*> (o .:? "voter_services" .!= mempty)
                     <*> (o .:? "electionRegistrationUrl"))

instance ToJSON AdministrativeBody where
        toJSON AdministrativeBody{..}
          = object
              (catMaybes
                 [("correspondenceAddress" .=) <$>
                    _abCorrespondenceAddress,
                  ("absenteeVotingInfoUrl" .=) <$>
                    _abAbsenteeVotingInfoURL,
                  ("hoursOfOperation" .=) <$> _abHoursOfOperation,
                  ("ballotInfoUrl" .=) <$> _abBallotInfoURL,
                  ("physicalAddress" .=) <$> _abPhysicalAddress,
                  ("electionRegistrationConfirmationUrl" .=) <$>
                    _abElectionRegistrationConfirmationURL,
                  ("electionInfoUrl" .=) <$> _abElectionInfoURL,
                  ("votingLocationFinderUrl" .=) <$>
                    _abVotingLocationFinderURL,
                  ("electionOfficials" .=) <$> _abElectionOfficials,
                  ("name" .=) <$> _abName,
                  ("electionRulesUrl" .=) <$> _abElectionRulesURL,
                  ("voter_services" .=) <$> _abVoterServices,
                  ("electionRegistrationUrl" .=) <$>
                    _abElectionRegistrationURL])

-- | Information about a contest that appears on a voter\'s ballot.
--
-- /See:/ 'contest' smart constructor.
data Contest = Contest
    { _conReferendumPassageThreshold :: !(Maybe Text)
    , _conRoles                      :: !(Maybe [Text])
    , _conReferendumURL              :: !(Maybe Text)
    , _conReferendumEffectOfAbstain  :: !(Maybe Text)
    , _conReferendumSubtitle         :: !(Maybe Text)
    , _conNumberVotingFor            :: !(Maybe Int64)
    , _conOffice                     :: !(Maybe Text)
    , _conReferendumConStatement     :: !(Maybe Text)
    , _conSources                    :: !(Maybe [Source])
    , _conReferendumProStatement     :: !(Maybe Text)
    , _conReferendumBallotResponses  :: !(Maybe [Text])
    , _conNumberElected              :: !(Maybe Int64)
    , _conSpecial                    :: !(Maybe Text)
    , _conReferendumText             :: !(Maybe Text)
    , _conPrimaryParty               :: !(Maybe Text)
    , _conId                         :: !(Maybe Text)
    , _conType                       :: !(Maybe Text)
    , _conElectorateSpecifications   :: !(Maybe Text)
    , _conReferendumBrief            :: !(Maybe Text)
    , _conDistrict                   :: !(Maybe ElectoralDistrict)
    , _conLevel                      :: !(Maybe [Text])
    , _conCandidates                 :: !(Maybe [Candidate])
    , _conReferendumTitle            :: !(Maybe Text)
    , _conBallotPlacement            :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Contest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conReferendumPassageThreshold'
--
-- * 'conRoles'
--
-- * 'conReferendumURL'
--
-- * 'conReferendumEffectOfAbstain'
--
-- * 'conReferendumSubtitle'
--
-- * 'conNumberVotingFor'
--
-- * 'conOffice'
--
-- * 'conReferendumConStatement'
--
-- * 'conSources'
--
-- * 'conReferendumProStatement'
--
-- * 'conReferendumBallotResponses'
--
-- * 'conNumberElected'
--
-- * 'conSpecial'
--
-- * 'conReferendumText'
--
-- * 'conPrimaryParty'
--
-- * 'conId'
--
-- * 'conType'
--
-- * 'conElectorateSpecifications'
--
-- * 'conReferendumBrief'
--
-- * 'conDistrict'
--
-- * 'conLevel'
--
-- * 'conCandidates'
--
-- * 'conReferendumTitle'
--
-- * 'conBallotPlacement'
contest
    :: Contest
contest =
    Contest
    { _conReferendumPassageThreshold = Nothing
    , _conRoles = Nothing
    , _conReferendumURL = Nothing
    , _conReferendumEffectOfAbstain = Nothing
    , _conReferendumSubtitle = Nothing
    , _conNumberVotingFor = Nothing
    , _conOffice = Nothing
    , _conReferendumConStatement = Nothing
    , _conSources = Nothing
    , _conReferendumProStatement = Nothing
    , _conReferendumBallotResponses = Nothing
    , _conNumberElected = Nothing
    , _conSpecial = Nothing
    , _conReferendumText = Nothing
    , _conPrimaryParty = Nothing
    , _conId = Nothing
    , _conType = Nothing
    , _conElectorateSpecifications = Nothing
    , _conReferendumBrief = Nothing
    , _conDistrict = Nothing
    , _conLevel = Nothing
    , _conCandidates = Nothing
    , _conReferendumTitle = Nothing
    , _conBallotPlacement = Nothing
    }

-- | The threshold of votes that the referendum needs in order to pass, e.g.
-- \"two-thirds\". This field is only populated for contests of type
-- \'Referendum\'.
conReferendumPassageThreshold :: Lens' Contest (Maybe Text)
conReferendumPassageThreshold
  = lens _conReferendumPassageThreshold
      (\ s a -> s{_conReferendumPassageThreshold = a})

-- | The roles which this office fulfills.
conRoles :: Lens' Contest [Text]
conRoles
  = lens _conRoles (\ s a -> s{_conRoles = a}) .
      _Default
      . _Coerce

-- | A link to the referendum. This field is only populated for contests of
-- type \'Referendum\'.
conReferendumURL :: Lens' Contest (Maybe Text)
conReferendumURL
  = lens _conReferendumURL
      (\ s a -> s{_conReferendumURL = a})

-- | Specifies what effect abstaining (not voting) on the proposition will
-- have (i.e. whether abstaining is considered a vote against it). This
-- field is only populated for contests of type \'Referendum\'.
conReferendumEffectOfAbstain :: Lens' Contest (Maybe Text)
conReferendumEffectOfAbstain
  = lens _conReferendumEffectOfAbstain
      (\ s a -> s{_conReferendumEffectOfAbstain = a})

-- | A brief description of the referendum. This field is only populated for
-- contests of type \'Referendum\'.
conReferendumSubtitle :: Lens' Contest (Maybe Text)
conReferendumSubtitle
  = lens _conReferendumSubtitle
      (\ s a -> s{_conReferendumSubtitle = a})

-- | The number of candidates that a voter may vote for in this contest.
conNumberVotingFor :: Lens' Contest (Maybe Int64)
conNumberVotingFor
  = lens _conNumberVotingFor
      (\ s a -> s{_conNumberVotingFor = a})

-- | The name of the office for this contest.
conOffice :: Lens' Contest (Maybe Text)
conOffice
  = lens _conOffice (\ s a -> s{_conOffice = a})

-- | A statement in opposition to the referendum. It does not necessarily
-- appear on the ballot. This field is only populated for contests of type
-- \'Referendum\'.
conReferendumConStatement :: Lens' Contest (Maybe Text)
conReferendumConStatement
  = lens _conReferendumConStatement
      (\ s a -> s{_conReferendumConStatement = a})

-- | A list of sources for this contest. If multiple sources are listed, the
-- data has been aggregated from those sources.
conSources :: Lens' Contest [Source]
conSources
  = lens _conSources (\ s a -> s{_conSources = a}) .
      _Default
      . _Coerce

-- | A statement in favor of the referendum. It does not necessarily appear
-- on the ballot. This field is only populated for contests of type
-- \'Referendum\'.
conReferendumProStatement :: Lens' Contest (Maybe Text)
conReferendumProStatement
  = lens _conReferendumProStatement
      (\ s a -> s{_conReferendumProStatement = a})

-- | The set of ballot responses for the referendum. A ballot response
-- represents a line on the ballot. Common examples might include \"yes\"
-- or \"no\" for referenda, or a judge\'s name for a retention contest.
-- This field is only populated for contests of type \'Referendum\'.
conReferendumBallotResponses :: Lens' Contest [Text]
conReferendumBallotResponses
  = lens _conReferendumBallotResponses
      (\ s a -> s{_conReferendumBallotResponses = a})
      . _Default
      . _Coerce

-- | The number of candidates that will be elected to office in this contest.
conNumberElected :: Lens' Contest (Maybe Int64)
conNumberElected
  = lens _conNumberElected
      (\ s a -> s{_conNumberElected = a})

-- | \"Yes\" or \"No\" depending on whether this a contest being held outside
-- the normal election cycle.
conSpecial :: Lens' Contest (Maybe Text)
conSpecial
  = lens _conSpecial (\ s a -> s{_conSpecial = a})

-- | The full text of the referendum. This field is only populated for
-- contests of type \'Referendum\'.
conReferendumText :: Lens' Contest (Maybe Text)
conReferendumText
  = lens _conReferendumText
      (\ s a -> s{_conReferendumText = a})

-- | If this is a partisan election, the name of the party it is for.
conPrimaryParty :: Lens' Contest (Maybe Text)
conPrimaryParty
  = lens _conPrimaryParty
      (\ s a -> s{_conPrimaryParty = a})

-- | An ID for this object. IDs may change in future requests and should not
-- be cached. Access to this field requires special access that can be
-- requested from the Request more link on the Quotas page.
conId :: Lens' Contest (Maybe Text)
conId = lens _conId (\ s a -> s{_conId = a})

-- | The type of contest. Usually this will be \'General\', \'Primary\', or
-- \'Run-off\' for contests with candidates. For referenda this will be
-- \'Referendum\'.
conType :: Lens' Contest (Maybe Text)
conType = lens _conType (\ s a -> s{_conType = a})

-- | A description of any additional eligibility requirements for voting in
-- this contest.
conElectorateSpecifications :: Lens' Contest (Maybe Text)
conElectorateSpecifications
  = lens _conElectorateSpecifications
      (\ s a -> s{_conElectorateSpecifications = a})

-- | Specifies a short summary of the referendum that is typically on the
-- ballot below the title but above the text. This field is only populated
-- for contests of type \'Referendum\'.
conReferendumBrief :: Lens' Contest (Maybe Text)
conReferendumBrief
  = lens _conReferendumBrief
      (\ s a -> s{_conReferendumBrief = a})

-- | Information about the electoral district that this contest is in.
conDistrict :: Lens' Contest (Maybe ElectoralDistrict)
conDistrict
  = lens _conDistrict (\ s a -> s{_conDistrict = a})

-- | The levels of government of the office for this contest. There may be
-- more than one in cases where a jurisdiction effectively acts at two
-- different levels of government; for example, the mayor of the District
-- of Columbia acts at \"locality\" level, but also effectively at both
-- \"administrative-area-2\" and \"administrative-area-1\".
conLevel :: Lens' Contest [Text]
conLevel
  = lens _conLevel (\ s a -> s{_conLevel = a}) .
      _Default
      . _Coerce

-- | The candidate choices for this contest.
conCandidates :: Lens' Contest [Candidate]
conCandidates
  = lens _conCandidates
      (\ s a -> s{_conCandidates = a})
      . _Default
      . _Coerce

-- | The title of the referendum (e.g. \'Proposition 42\'). This field is
-- only populated for contests of type \'Referendum\'.
conReferendumTitle :: Lens' Contest (Maybe Text)
conReferendumTitle
  = lens _conReferendumTitle
      (\ s a -> s{_conReferendumTitle = a})

-- | A number specifying the position of this contest on the voter\'s ballot.
conBallotPlacement :: Lens' Contest (Maybe Int64)
conBallotPlacement
  = lens _conBallotPlacement
      (\ s a -> s{_conBallotPlacement = a})

instance FromJSON Contest where
        parseJSON
          = withObject "Contest"
              (\ o ->
                 Contest <$>
                   (o .:? "referendumPassageThreshold") <*>
                     (o .:? "roles" .!= mempty)
                     <*> (o .:? "referendumUrl")
                     <*> (o .:? "referendumEffectOfAbstain")
                     <*> (o .:? "referendumSubtitle")
                     <*> (o .:? "numberVotingFor")
                     <*> (o .:? "office")
                     <*> (o .:? "referendumConStatement")
                     <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "referendumProStatement")
                     <*> (o .:? "referendumBallotResponses" .!= mempty)
                     <*> (o .:? "numberElected")
                     <*> (o .:? "special")
                     <*> (o .:? "referendumText")
                     <*> (o .:? "primaryParty")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "electorateSpecifications")
                     <*> (o .:? "referendumBrief")
                     <*> (o .:? "district")
                     <*> (o .:? "level" .!= mempty)
                     <*> (o .:? "candidates" .!= mempty)
                     <*> (o .:? "referendumTitle")
                     <*> (o .:? "ballotPlacement"))

instance ToJSON Contest where
        toJSON Contest{..}
          = object
              (catMaybes
                 [("referendumPassageThreshold" .=) <$>
                    _conReferendumPassageThreshold,
                  ("roles" .=) <$> _conRoles,
                  ("referendumUrl" .=) <$> _conReferendumURL,
                  ("referendumEffectOfAbstain" .=) <$>
                    _conReferendumEffectOfAbstain,
                  ("referendumSubtitle" .=) <$> _conReferendumSubtitle,
                  ("numberVotingFor" .=) <$> _conNumberVotingFor,
                  ("office" .=) <$> _conOffice,
                  ("referendumConStatement" .=) <$>
                    _conReferendumConStatement,
                  ("sources" .=) <$> _conSources,
                  ("referendumProStatement" .=) <$>
                    _conReferendumProStatement,
                  ("referendumBallotResponses" .=) <$>
                    _conReferendumBallotResponses,
                  ("numberElected" .=) <$> _conNumberElected,
                  ("special" .=) <$> _conSpecial,
                  ("referendumText" .=) <$> _conReferendumText,
                  ("primaryParty" .=) <$> _conPrimaryParty,
                  ("id" .=) <$> _conId, ("type" .=) <$> _conType,
                  ("electorateSpecifications" .=) <$>
                    _conElectorateSpecifications,
                  ("referendumBrief" .=) <$> _conReferendumBrief,
                  ("district" .=) <$> _conDistrict,
                  ("level" .=) <$> _conLevel,
                  ("candidates" .=) <$> _conCandidates,
                  ("referendumTitle" .=) <$> _conReferendumTitle,
                  ("ballotPlacement" .=) <$> _conBallotPlacement])

-- | The result of a division search query.
--
-- /See:/ 'divisionSearchResponse' smart constructor.
data DivisionSearchResponse = DivisionSearchResponse
    { _dsrResults :: !(Maybe [DivisionSearchResult])
    , _dsrKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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

dsrResults :: Lens' DivisionSearchResponse [DivisionSearchResult]
dsrResults
  = lens _dsrResults (\ s a -> s{_dsrResults = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"civicinfo#divisionSearchResponse\".
dsrKind :: Lens' DivisionSearchResponse Text
dsrKind = lens _dsrKind (\ s a -> s{_dsrKind = a})

instance FromJSON DivisionSearchResponse where
        parseJSON
          = withObject "DivisionSearchResponse"
              (\ o ->
                 DivisionSearchResponse <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "civicinfo#divisionSearchResponse"))

instance ToJSON DivisionSearchResponse where
        toJSON DivisionSearchResponse{..}
          = object
              (catMaybes
                 [("results" .=) <$> _dsrResults,
                  Just ("kind" .= _dsrKind)])

-- | Political geographic divisions that contain the requested address.
--
-- /See:/ 'representativeInfoDataDivisions' smart constructor.
data RepresentativeInfoDataDivisions =
    RepresentativeInfoDataDivisions
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoDataDivisions' with the minimum fields required to make a request.
--
representativeInfoDataDivisions
    :: RepresentativeInfoDataDivisions
representativeInfoDataDivisions = RepresentativeInfoDataDivisions

instance FromJSON RepresentativeInfoDataDivisions
         where
        parseJSON
          = withObject "RepresentativeInfoDataDivisions"
              (\ o -> pure RepresentativeInfoDataDivisions)

instance ToJSON RepresentativeInfoDataDivisions where
        toJSON = const (Object mempty)

-- | Information about individual election officials.
--
-- /See:/ 'electionOfficial' smart constructor.
data ElectionOfficial = ElectionOfficial
    { _eoFaxNumber         :: !(Maybe Text)
    , _eoName              :: !(Maybe Text)
    , _eoOfficePhoneNumber :: !(Maybe Text)
    , _eoEmailAddress      :: !(Maybe Text)
    , _eoTitle             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ElectionOfficial where
        parseJSON
          = withObject "ElectionOfficial"
              (\ o ->
                 ElectionOfficial <$>
                   (o .:? "faxNumber") <*> (o .:? "name") <*>
                     (o .:? "officePhoneNumber")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "title"))

instance ToJSON ElectionOfficial where
        toJSON ElectionOfficial{..}
          = object
              (catMaybes
                 [("faxNumber" .=) <$> _eoFaxNumber,
                  ("name" .=) <$> _eoName,
                  ("officePhoneNumber" .=) <$> _eoOfficePhoneNumber,
                  ("emailAddress" .=) <$> _eoEmailAddress,
                  ("title" .=) <$> _eoTitle])

--
-- /See:/ 'representativeInfoData' smart constructor.
data RepresentativeInfoData = RepresentativeInfoData
    { _ridOfficials :: !(Maybe [Official])
    , _ridDivisions :: !(Maybe RepresentativeInfoDataDivisions)
    , _ridOffices   :: !(Maybe [Office])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
ridOfficials :: Lens' RepresentativeInfoData [Official]
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
ridOffices :: Lens' RepresentativeInfoData [Office]
ridOffices
  = lens _ridOffices (\ s a -> s{_ridOffices = a}) .
      _Default
      . _Coerce

instance FromJSON RepresentativeInfoData where
        parseJSON
          = withObject "RepresentativeInfoData"
              (\ o ->
                 RepresentativeInfoData <$>
                   (o .:? "officials" .!= mempty) <*>
                     (o .:? "divisions")
                     <*> (o .:? "offices" .!= mempty))

instance ToJSON RepresentativeInfoData where
        toJSON RepresentativeInfoData{..}
          = object
              (catMaybes
                 [("officials" .=) <$> _ridOfficials,
                  ("divisions" .=) <$> _ridDivisions,
                  ("offices" .=) <$> _ridOffices])

-- | Contains information about the data source for the element containing
-- it.
--
-- /See:/ 'source' smart constructor.
data Source = Source
    { _sName     :: !(Maybe Text)
    , _sOfficial :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source <$> (o .:? "name") <*> (o .:? "official"))

instance ToJSON Source where
        toJSON Source{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sName,
                  ("official" .=) <$> _sOfficial])

-- | Describes the geographic scope of a contest.
--
-- /See:/ 'electoralDistrict' smart constructor.
data ElectoralDistrict = ElectoralDistrict
    { _edName  :: !(Maybe Text)
    , _edScope :: !(Maybe Text)
    , _edId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ElectoralDistrict where
        parseJSON
          = withObject "ElectoralDistrict"
              (\ o ->
                 ElectoralDistrict <$>
                   (o .:? "name") <*> (o .:? "scope") <*> (o .:? "id"))

instance ToJSON ElectoralDistrict where
        toJSON ElectoralDistrict{..}
          = object
              (catMaybes
                 [("name" .=) <$> _edName, ("scope" .=) <$> _edScope,
                  ("id" .=) <$> _edId])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON SimpleAddressType where
        parseJSON
          = withObject "SimpleAddressType"
              (\ o ->
                 SimpleAddressType <$>
                   (o .:? "line2") <*> (o .:? "state") <*>
                     (o .:? "line3")
                     <*> (o .:? "zip")
                     <*> (o .:? "city")
                     <*> (o .:? "line1")
                     <*> (o .:? "locationName"))

instance ToJSON SimpleAddressType where
        toJSON SimpleAddressType{..}
          = object
              (catMaybes
                 [("line2" .=) <$> _satLine2,
                  ("state" .=) <$> _satState,
                  ("line3" .=) <$> _satLine3, ("zip" .=) <$> _satZip,
                  ("city" .=) <$> _satCity, ("line1" .=) <$> _satLine1,
                  ("locationName" .=) <$> _satLocationName])

-- | Describes information about a regional election administrative area.
--
-- /See:/ 'administrationRegion' smart constructor.
data AdministrationRegion = AdministrationRegion
    { _arLocalJurisdiction          :: !(Maybe AdministrationRegion)
    , _arSources                    :: !(Maybe [Source])
    , _arName                       :: !(Maybe Text)
    , _arElectionAdministrationBody :: !(Maybe AdministrativeBody)
    , _arId                         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
arLocalJurisdiction :: Lens' AdministrationRegion (Maybe AdministrationRegion)
arLocalJurisdiction
  = lens _arLocalJurisdiction
      (\ s a -> s{_arLocalJurisdiction = a})

-- | A list of sources for this area. If multiple sources are listed the data
-- has been aggregated from those sources.
arSources :: Lens' AdministrationRegion [Source]
arSources
  = lens _arSources (\ s a -> s{_arSources = a}) .
      _Default
      . _Coerce

-- | The name of the jurisdiction.
arName :: Lens' AdministrationRegion (Maybe Text)
arName = lens _arName (\ s a -> s{_arName = a})

-- | The election administration body for this area.
arElectionAdministrationBody :: Lens' AdministrationRegion (Maybe AdministrativeBody)
arElectionAdministrationBody
  = lens _arElectionAdministrationBody
      (\ s a -> s{_arElectionAdministrationBody = a})

-- | An ID for this object. IDs may change in future requests and should not
-- be cached. Access to this field requires special access that can be
-- requested from the Request more link on the Quotas page.
arId :: Lens' AdministrationRegion (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

instance FromJSON AdministrationRegion where
        parseJSON
          = withObject "AdministrationRegion"
              (\ o ->
                 AdministrationRegion <$>
                   (o .:? "local_jurisdiction") <*>
                     (o .:? "sources" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "electionAdministrationBody")
                     <*> (o .:? "id"))

instance ToJSON AdministrationRegion where
        toJSON AdministrationRegion{..}
          = object
              (catMaybes
                 [("local_jurisdiction" .=) <$> _arLocalJurisdiction,
                  ("sources" .=) <$> _arSources,
                  ("name" .=) <$> _arName,
                  ("electionAdministrationBody" .=) <$>
                    _arElectionAdministrationBody,
                  ("id" .=) <$> _arId])

-- | The list of elections available for this version of the API.
--
-- /See:/ 'electionsQueryResponse' smart constructor.
data ElectionsQueryResponse = ElectionsQueryResponse
    { _eqrKind      :: !Text
    , _eqrElections :: !(Maybe [Election])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
eqrElections :: Lens' ElectionsQueryResponse [Election]
eqrElections
  = lens _eqrElections (\ s a -> s{_eqrElections = a})
      . _Default
      . _Coerce

instance FromJSON ElectionsQueryResponse where
        parseJSON
          = withObject "ElectionsQueryResponse"
              (\ o ->
                 ElectionsQueryResponse <$>
                   (o .:? "kind" .!= "civicinfo#electionsQueryResponse")
                     <*> (o .:? "elections" .!= mempty))

instance ToJSON ElectionsQueryResponse where
        toJSON ElectionsQueryResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eqrKind),
                  ("elections" .=) <$> _eqrElections])

-- | Information about a person holding an elected office.
--
-- /See:/ 'official' smart constructor.
data Official = Official
    { _offPhotoURL :: !(Maybe Text)
    , _offURLs     :: !(Maybe [Text])
    , _offChannels :: !(Maybe [Channel])
    , _offAddress  :: !(Maybe [SimpleAddressType])
    , _offPhones   :: !(Maybe [Text])
    , _offName     :: !(Maybe Text)
    , _offEmails   :: !(Maybe [Text])
    , _offParty    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Official' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'offPhotoURL'
--
-- * 'offURLs'
--
-- * 'offChannels'
--
-- * 'offAddress'
--
-- * 'offPhones'
--
-- * 'offName'
--
-- * 'offEmails'
--
-- * 'offParty'
official
    :: Official
official =
    Official
    { _offPhotoURL = Nothing
    , _offURLs = Nothing
    , _offChannels = Nothing
    , _offAddress = Nothing
    , _offPhones = Nothing
    , _offName = Nothing
    , _offEmails = Nothing
    , _offParty = Nothing
    }

-- | A URL for a photo of the official.
offPhotoURL :: Lens' Official (Maybe Text)
offPhotoURL
  = lens _offPhotoURL (\ s a -> s{_offPhotoURL = a})

-- | The official\'s public website URLs.
offURLs :: Lens' Official [Text]
offURLs
  = lens _offURLs (\ s a -> s{_offURLs = a}) . _Default
      . _Coerce

-- | A list of known (social) media channels for this official.
offChannels :: Lens' Official [Channel]
offChannels
  = lens _offChannels (\ s a -> s{_offChannels = a}) .
      _Default
      . _Coerce

-- | Addresses at which to contact the official.
offAddress :: Lens' Official [SimpleAddressType]
offAddress
  = lens _offAddress (\ s a -> s{_offAddress = a}) .
      _Default
      . _Coerce

-- | The official\'s public contact phone numbers.
offPhones :: Lens' Official [Text]
offPhones
  = lens _offPhones (\ s a -> s{_offPhones = a}) .
      _Default
      . _Coerce

-- | The official\'s name.
offName :: Lens' Official (Maybe Text)
offName = lens _offName (\ s a -> s{_offName = a})

-- | The direct email addresses for the official.
offEmails :: Lens' Official [Text]
offEmails
  = lens _offEmails (\ s a -> s{_offEmails = a}) .
      _Default
      . _Coerce

-- | The full name of the party the official belongs to.
offParty :: Lens' Official (Maybe Text)
offParty = lens _offParty (\ s a -> s{_offParty = a})

instance FromJSON Official where
        parseJSON
          = withObject "Official"
              (\ o ->
                 Official <$>
                   (o .:? "photoUrl") <*> (o .:? "urls" .!= mempty) <*>
                     (o .:? "channels" .!= mempty)
                     <*> (o .:? "address" .!= mempty)
                     <*> (o .:? "phones" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "emails" .!= mempty)
                     <*> (o .:? "party"))

instance ToJSON Official where
        toJSON Official{..}
          = object
              (catMaybes
                 [("photoUrl" .=) <$> _offPhotoURL,
                  ("urls" .=) <$> _offURLs,
                  ("channels" .=) <$> _offChannels,
                  ("address" .=) <$> _offAddress,
                  ("phones" .=) <$> _offPhones,
                  ("name" .=) <$> _offName,
                  ("emails" .=) <$> _offEmails,
                  ("party" .=) <$> _offParty])
