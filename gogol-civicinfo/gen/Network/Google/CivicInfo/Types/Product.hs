{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CivicInfo.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
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
newtype RepresentativeInfoResponseDivisions = RepresentativeInfoResponseDivisions'
    { _rirdAddtional :: HashMap Text GeographicDivision
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoResponseDivisions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirdAddtional'
representativeInfoResponseDivisions
    :: HashMap Text GeographicDivision -- ^ 'rirdAddtional'
    -> RepresentativeInfoResponseDivisions
representativeInfoResponseDivisions pRirdAddtional_ =
    RepresentativeInfoResponseDivisions'
    { _rirdAddtional = _Coerce # pRirdAddtional_
    }

-- | The unique Open Civic Data identifier for this division.
rirdAddtional :: Lens' RepresentativeInfoResponseDivisions (HashMap Text GeographicDivision)
rirdAddtional
  = lens _rirdAddtional
      (\ s a -> s{_rirdAddtional = a})
      . _Coerce

instance FromJSON RepresentativeInfoResponseDivisions
         where
        parseJSON
          = withObject "RepresentativeInfoResponseDivisions"
              (\ o ->
                 RepresentativeInfoResponseDivisions' <$>
                   (parseJSONObject o))

instance ToJSON RepresentativeInfoResponseDivisions
         where
        toJSON = toJSON . _rirdAddtional

-- | The result of a voter info lookup query.
--
-- /See:/ 'voterInfoResponse' smart constructor.
data VoterInfoResponse = VoterInfoResponse'
    { _virOtherElections   :: !(Maybe [Election])
    , _virContests         :: !(Maybe [Contest])
    , _virState            :: !(Maybe [AdministrationRegion])
    , _virKind             :: !Text
    , _virDropOffLocations :: !(Maybe [PollingLocation])
    , _virElection         :: !(Maybe Election)
    , _virNormalizedInput  :: !(Maybe SimpleAddressType)
    , _virMailOnly         :: !(Maybe Bool)
    , _virSegments         :: !(Maybe [StreetSegment])
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
-- * 'virSegments'
--
-- * 'virEarlyVoteSites'
--
-- * 'virPollingLocations'
--
-- * 'virPrecinctId'
voterInfoResponse
    :: VoterInfoResponse
voterInfoResponse =
    VoterInfoResponse'
    { _virOtherElections = Nothing
    , _virContests = Nothing
    , _virState = Nothing
    , _virKind = "civicinfo#voterInfoResponse"
    , _virDropOffLocations = Nothing
    , _virElection = Nothing
    , _virNormalizedInput = Nothing
    , _virMailOnly = Nothing
    , _virSegments = Nothing
    , _virEarlyVoteSites = Nothing
    , _virPollingLocations = Nothing
    , _virPrecinctId = Nothing
    }

-- | When there are multiple elections for a voter address, the
-- otherElections field is populated in the API response and there are two
-- possibilities: 1. If the earliest election is not the intended election,
-- specify the election ID of the desired election in a second API request
-- using the electionId field. 2. If these elections occur on the same day,
-- the API doesn?t return any polling location, contest, or election
-- official information to ensure that an additional query is made. For
-- user-facing applications, we recommend displaying these elections to the
-- user to disambiguate. A second API request using the electionId field
-- should be made for the election that is relevant to the user.
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

virSegments :: Lens' VoterInfoResponse [StreetSegment]
virSegments
  = lens _virSegments (\ s a -> s{_virSegments = a}) .
      _Default
      . _Coerce

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
                 VoterInfoResponse' <$>
                   (o .:? "otherElections" .!= mempty) <*>
                     (o .:? "contests" .!= mempty)
                     <*> (o .:? "state" .!= mempty)
                     <*> (o .:? "kind" .!= "civicinfo#voterInfoResponse")
                     <*> (o .:? "dropOffLocations" .!= mempty)
                     <*> (o .:? "election")
                     <*> (o .:? "normalizedInput")
                     <*> (o .:? "mailOnly")
                     <*> (o .:? "segments" .!= mempty)
                     <*> (o .:? "earlyVoteSites" .!= mempty)
                     <*> (o .:? "pollingLocations" .!= mempty)
                     <*> (o .:? "precinctId"))

instance ToJSON VoterInfoResponse where
        toJSON VoterInfoResponse'{..}
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
                  ("segments" .=) <$> _virSegments,
                  ("earlyVoteSites" .=) <$> _virEarlyVoteSites,
                  ("pollingLocations" .=) <$> _virPollingLocations,
                  ("precinctId" .=) <$> _virPrecinctId])

-- | A location where a voter can vote. This may be an early vote site, an
-- election day voting location, or a drop off location for a completed
-- ballot.
--
-- /See:/ 'pollingLocation' smart constructor.
data PollingLocation = PollingLocation'
    { _plVoterServices :: !(Maybe Text)
    , _plLatitude      :: !(Maybe (Textual Double))
    , _plEndDate       :: !(Maybe Text)
    , _plSources       :: !(Maybe [Source])
    , _plAddress       :: !(Maybe SimpleAddressType)
    , _plStartDate     :: !(Maybe Text)
    , _plPollingHours  :: !(Maybe Text)
    , _plName          :: !(Maybe Text)
    , _plId            :: !(Maybe Text)
    , _plNotes         :: !(Maybe Text)
    , _plLongitude     :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PollingLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plVoterServices'
--
-- * 'plLatitude'
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
--
-- * 'plLongitude'
pollingLocation
    :: PollingLocation
pollingLocation =
    PollingLocation'
    { _plVoterServices = Nothing
    , _plLatitude = Nothing
    , _plEndDate = Nothing
    , _plSources = Nothing
    , _plAddress = Nothing
    , _plStartDate = Nothing
    , _plPollingHours = Nothing
    , _plName = Nothing
    , _plId = Nothing
    , _plNotes = Nothing
    , _plLongitude = Nothing
    }

-- | The services provided by this early vote site or drop off location. This
-- field is not populated for polling locations.
plVoterServices :: Lens' PollingLocation (Maybe Text)
plVoterServices
  = lens _plVoterServices
      (\ s a -> s{_plVoterServices = a})

-- | Latitude of the location, in degrees north of the equator. Only some
-- locations -- generally, ballot drop boxes for vote-by-mail elections --
-- will have this set; for others, use a geocoding service like the Google
-- Maps API to resolve the address to a geographic point.
plLatitude :: Lens' PollingLocation (Maybe Double)
plLatitude
  = lens _plLatitude (\ s a -> s{_plLatitude = a}) .
      mapping _Coerce

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

-- | Longitude of the location, in degrees east of the Prime Meridian. Only
-- some locations -- generally, ballot drop boxes for vote-by-mail
-- elections -- will have this set; for others, use a geocoding service
-- like the Google Maps API to resolve the address to a geographic point.
plLongitude :: Lens' PollingLocation (Maybe Double)
plLongitude
  = lens _plLongitude (\ s a -> s{_plLongitude = a}) .
      mapping _Coerce

instance FromJSON PollingLocation where
        parseJSON
          = withObject "PollingLocation"
              (\ o ->
                 PollingLocation' <$>
                   (o .:? "voterServices") <*> (o .:? "latitude") <*>
                     (o .:? "endDate")
                     <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "address")
                     <*> (o .:? "startDate")
                     <*> (o .:? "pollingHours")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "notes")
                     <*> (o .:? "longitude"))

instance ToJSON PollingLocation where
        toJSON PollingLocation'{..}
          = object
              (catMaybes
                 [("voterServices" .=) <$> _plVoterServices,
                  ("latitude" .=) <$> _plLatitude,
                  ("endDate" .=) <$> _plEndDate,
                  ("sources" .=) <$> _plSources,
                  ("address" .=) <$> _plAddress,
                  ("startDate" .=) <$> _plStartDate,
                  ("pollingHours" .=) <$> _plPollingHours,
                  ("name" .=) <$> _plName, ("id" .=) <$> _plId,
                  ("notes" .=) <$> _plNotes,
                  ("longitude" .=) <$> _plLongitude])

-- | Describes a political geography.
--
-- /See:/ 'geographicDivision' smart constructor.
data GeographicDivision = GeographicDivision'
    { _gdName          :: !(Maybe Text)
    , _gdOfficeIndices :: !(Maybe [Textual Word32])
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
    GeographicDivision'
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
                 GeographicDivision' <$>
                   (o .:? "name") <*> (o .:? "officeIndices" .!= mempty)
                     <*> (o .:? "alsoKnownAs" .!= mempty))

instance ToJSON GeographicDivision where
        toJSON GeographicDivision'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gdName,
                  ("officeIndices" .=) <$> _gdOfficeIndices,
                  ("alsoKnownAs" .=) <$> _gdAlsoKnownAs])

--
-- /See:/ 'streetSegment' smart constructor.
data StreetSegment = StreetSegment'
    { _ssOriginalId                    :: !(Maybe Text)
    , _ssPollinglocationByIds          :: !(Maybe [Text])
    , _ssStartHouseNumber              :: !(Maybe (Textual Int64))
    , _ssCataListUniquePrecinctCode    :: !(Maybe Text)
    , _ssState                         :: !(Maybe Text)
    , _ssContestIds                    :: !(Maybe [Text])
    , _ssStateHouseDistrict            :: !(Maybe Text)
    , _ssNcoaAddress                   :: !(Maybe Text)
    , _ssEarlyVoteSiteByIds            :: !(Maybe [Text])
    , _ssCountyCouncilDistrict         :: !(Maybe Text)
    , _ssCityCouncilDistrict           :: !(Maybe Text)
    , _ssGeocodedPoint                 :: !(Maybe PointProto)
    , _ssEndHouseNumber                :: !(Maybe (Textual Int64))
    , _ssSubAdministrativeAreaName     :: !(Maybe Text)
    , _ssPublished                     :: !(Maybe Bool)
    , _ssStartLatE7                    :: !(Maybe (Textual Int64))
    , _ssZip                           :: !(Maybe Text)
    , _ssSurrogateId                   :: !(Maybe (Textual Int64))
    , _ssMunicipalDistrict             :: !(Maybe Text)
    , _ssWardDistrict                  :: !(Maybe Text)
    , _ssVoterGeographicDivisionOcdIds :: !(Maybe [Text])
    , _ssStreetName                    :: !(Maybe Text)
    , _ssTownshipDistrict              :: !(Maybe Text)
    , _ssUnitType                      :: !(Maybe Text)
    , _ssCongressionalDistrict         :: !(Maybe Text)
    , _ssStateSenateDistrict           :: !(Maybe Text)
    , _ssOddOrEvens                    :: !(Maybe [Text])
    , _ssGeographicDivisionOcdIds      :: !(Maybe [Text])
    , _ssBeforeGeocodeId               :: !(Maybe Text)
    , _ssDataSetId                     :: !(Maybe (Textual Int64))
    , _ssStartLngE7                    :: !(Maybe (Textual Int64))
    , _ssCity                          :: !(Maybe Text)
    , _ssWildcard                      :: !(Maybe Bool)
    , _ssTargetsmartUniquePrecinctCode :: !(Maybe Text)
    , _ssProvenances                   :: !(Maybe [Provenance])
    , _ssSchoolDistrict                :: !(Maybe Text)
    , _ssMailOnly                      :: !(Maybe Bool)
    , _ssId                            :: !(Maybe Text)
    , _ssUnitNumber                    :: !(Maybe Text)
    , _ssAdministrationRegionIds       :: !(Maybe [Text])
    , _ssVanPrecinctCode               :: !(Maybe Text)
    , _ssJudicialDistrict              :: !(Maybe Text)
    , _ssPrecinctName                  :: !(Maybe Text)
    , _ssCountyFips                    :: !(Maybe Text)
    , _ssPrecinctOcdId                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreetSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssOriginalId'
--
-- * 'ssPollinglocationByIds'
--
-- * 'ssStartHouseNumber'
--
-- * 'ssCataListUniquePrecinctCode'
--
-- * 'ssState'
--
-- * 'ssContestIds'
--
-- * 'ssStateHouseDistrict'
--
-- * 'ssNcoaAddress'
--
-- * 'ssEarlyVoteSiteByIds'
--
-- * 'ssCountyCouncilDistrict'
--
-- * 'ssCityCouncilDistrict'
--
-- * 'ssGeocodedPoint'
--
-- * 'ssEndHouseNumber'
--
-- * 'ssSubAdministrativeAreaName'
--
-- * 'ssPublished'
--
-- * 'ssStartLatE7'
--
-- * 'ssZip'
--
-- * 'ssSurrogateId'
--
-- * 'ssMunicipalDistrict'
--
-- * 'ssWardDistrict'
--
-- * 'ssVoterGeographicDivisionOcdIds'
--
-- * 'ssStreetName'
--
-- * 'ssTownshipDistrict'
--
-- * 'ssUnitType'
--
-- * 'ssCongressionalDistrict'
--
-- * 'ssStateSenateDistrict'
--
-- * 'ssOddOrEvens'
--
-- * 'ssGeographicDivisionOcdIds'
--
-- * 'ssBeforeGeocodeId'
--
-- * 'ssDataSetId'
--
-- * 'ssStartLngE7'
--
-- * 'ssCity'
--
-- * 'ssWildcard'
--
-- * 'ssTargetsmartUniquePrecinctCode'
--
-- * 'ssProvenances'
--
-- * 'ssSchoolDistrict'
--
-- * 'ssMailOnly'
--
-- * 'ssId'
--
-- * 'ssUnitNumber'
--
-- * 'ssAdministrationRegionIds'
--
-- * 'ssVanPrecinctCode'
--
-- * 'ssJudicialDistrict'
--
-- * 'ssPrecinctName'
--
-- * 'ssCountyFips'
--
-- * 'ssPrecinctOcdId'
streetSegment
    :: StreetSegment
streetSegment =
    StreetSegment'
    { _ssOriginalId = Nothing
    , _ssPollinglocationByIds = Nothing
    , _ssStartHouseNumber = Nothing
    , _ssCataListUniquePrecinctCode = Nothing
    , _ssState = Nothing
    , _ssContestIds = Nothing
    , _ssStateHouseDistrict = Nothing
    , _ssNcoaAddress = Nothing
    , _ssEarlyVoteSiteByIds = Nothing
    , _ssCountyCouncilDistrict = Nothing
    , _ssCityCouncilDistrict = Nothing
    , _ssGeocodedPoint = Nothing
    , _ssEndHouseNumber = Nothing
    , _ssSubAdministrativeAreaName = Nothing
    , _ssPublished = Nothing
    , _ssStartLatE7 = Nothing
    , _ssZip = Nothing
    , _ssSurrogateId = Nothing
    , _ssMunicipalDistrict = Nothing
    , _ssWardDistrict = Nothing
    , _ssVoterGeographicDivisionOcdIds = Nothing
    , _ssStreetName = Nothing
    , _ssTownshipDistrict = Nothing
    , _ssUnitType = Nothing
    , _ssCongressionalDistrict = Nothing
    , _ssStateSenateDistrict = Nothing
    , _ssOddOrEvens = Nothing
    , _ssGeographicDivisionOcdIds = Nothing
    , _ssBeforeGeocodeId = Nothing
    , _ssDataSetId = Nothing
    , _ssStartLngE7 = Nothing
    , _ssCity = Nothing
    , _ssWildcard = Nothing
    , _ssTargetsmartUniquePrecinctCode = Nothing
    , _ssProvenances = Nothing
    , _ssSchoolDistrict = Nothing
    , _ssMailOnly = Nothing
    , _ssId = Nothing
    , _ssUnitNumber = Nothing
    , _ssAdministrationRegionIds = Nothing
    , _ssVanPrecinctCode = Nothing
    , _ssJudicialDistrict = Nothing
    , _ssPrecinctName = Nothing
    , _ssCountyFips = Nothing
    , _ssPrecinctOcdId = Nothing
    }

ssOriginalId :: Lens' StreetSegment (Maybe Text)
ssOriginalId
  = lens _ssOriginalId (\ s a -> s{_ssOriginalId = a})

ssPollinglocationByIds :: Lens' StreetSegment [Text]
ssPollinglocationByIds
  = lens _ssPollinglocationByIds
      (\ s a -> s{_ssPollinglocationByIds = a})
      . _Default
      . _Coerce

ssStartHouseNumber :: Lens' StreetSegment (Maybe Int64)
ssStartHouseNumber
  = lens _ssStartHouseNumber
      (\ s a -> s{_ssStartHouseNumber = a})
      . mapping _Coerce

ssCataListUniquePrecinctCode :: Lens' StreetSegment (Maybe Text)
ssCataListUniquePrecinctCode
  = lens _ssCataListUniquePrecinctCode
      (\ s a -> s{_ssCataListUniquePrecinctCode = a})

ssState :: Lens' StreetSegment (Maybe Text)
ssState = lens _ssState (\ s a -> s{_ssState = a})

ssContestIds :: Lens' StreetSegment [Text]
ssContestIds
  = lens _ssContestIds (\ s a -> s{_ssContestIds = a})
      . _Default
      . _Coerce

ssStateHouseDistrict :: Lens' StreetSegment (Maybe Text)
ssStateHouseDistrict
  = lens _ssStateHouseDistrict
      (\ s a -> s{_ssStateHouseDistrict = a})

ssNcoaAddress :: Lens' StreetSegment (Maybe Text)
ssNcoaAddress
  = lens _ssNcoaAddress
      (\ s a -> s{_ssNcoaAddress = a})

ssEarlyVoteSiteByIds :: Lens' StreetSegment [Text]
ssEarlyVoteSiteByIds
  = lens _ssEarlyVoteSiteByIds
      (\ s a -> s{_ssEarlyVoteSiteByIds = a})
      . _Default
      . _Coerce

ssCountyCouncilDistrict :: Lens' StreetSegment (Maybe Text)
ssCountyCouncilDistrict
  = lens _ssCountyCouncilDistrict
      (\ s a -> s{_ssCountyCouncilDistrict = a})

ssCityCouncilDistrict :: Lens' StreetSegment (Maybe Text)
ssCityCouncilDistrict
  = lens _ssCityCouncilDistrict
      (\ s a -> s{_ssCityCouncilDistrict = a})

ssGeocodedPoint :: Lens' StreetSegment (Maybe PointProto)
ssGeocodedPoint
  = lens _ssGeocodedPoint
      (\ s a -> s{_ssGeocodedPoint = a})

ssEndHouseNumber :: Lens' StreetSegment (Maybe Int64)
ssEndHouseNumber
  = lens _ssEndHouseNumber
      (\ s a -> s{_ssEndHouseNumber = a})
      . mapping _Coerce

ssSubAdministrativeAreaName :: Lens' StreetSegment (Maybe Text)
ssSubAdministrativeAreaName
  = lens _ssSubAdministrativeAreaName
      (\ s a -> s{_ssSubAdministrativeAreaName = a})

ssPublished :: Lens' StreetSegment (Maybe Bool)
ssPublished
  = lens _ssPublished (\ s a -> s{_ssPublished = a})

ssStartLatE7 :: Lens' StreetSegment (Maybe Int64)
ssStartLatE7
  = lens _ssStartLatE7 (\ s a -> s{_ssStartLatE7 = a})
      . mapping _Coerce

ssZip :: Lens' StreetSegment (Maybe Text)
ssZip = lens _ssZip (\ s a -> s{_ssZip = a})

ssSurrogateId :: Lens' StreetSegment (Maybe Int64)
ssSurrogateId
  = lens _ssSurrogateId
      (\ s a -> s{_ssSurrogateId = a})
      . mapping _Coerce

ssMunicipalDistrict :: Lens' StreetSegment (Maybe Text)
ssMunicipalDistrict
  = lens _ssMunicipalDistrict
      (\ s a -> s{_ssMunicipalDistrict = a})

ssWardDistrict :: Lens' StreetSegment (Maybe Text)
ssWardDistrict
  = lens _ssWardDistrict
      (\ s a -> s{_ssWardDistrict = a})

ssVoterGeographicDivisionOcdIds :: Lens' StreetSegment [Text]
ssVoterGeographicDivisionOcdIds
  = lens _ssVoterGeographicDivisionOcdIds
      (\ s a -> s{_ssVoterGeographicDivisionOcdIds = a})
      . _Default
      . _Coerce

ssStreetName :: Lens' StreetSegment (Maybe Text)
ssStreetName
  = lens _ssStreetName (\ s a -> s{_ssStreetName = a})

ssTownshipDistrict :: Lens' StreetSegment (Maybe Text)
ssTownshipDistrict
  = lens _ssTownshipDistrict
      (\ s a -> s{_ssTownshipDistrict = a})

ssUnitType :: Lens' StreetSegment (Maybe Text)
ssUnitType
  = lens _ssUnitType (\ s a -> s{_ssUnitType = a})

ssCongressionalDistrict :: Lens' StreetSegment (Maybe Text)
ssCongressionalDistrict
  = lens _ssCongressionalDistrict
      (\ s a -> s{_ssCongressionalDistrict = a})

ssStateSenateDistrict :: Lens' StreetSegment (Maybe Text)
ssStateSenateDistrict
  = lens _ssStateSenateDistrict
      (\ s a -> s{_ssStateSenateDistrict = a})

ssOddOrEvens :: Lens' StreetSegment [Text]
ssOddOrEvens
  = lens _ssOddOrEvens (\ s a -> s{_ssOddOrEvens = a})
      . _Default
      . _Coerce

ssGeographicDivisionOcdIds :: Lens' StreetSegment [Text]
ssGeographicDivisionOcdIds
  = lens _ssGeographicDivisionOcdIds
      (\ s a -> s{_ssGeographicDivisionOcdIds = a})
      . _Default
      . _Coerce

ssBeforeGeocodeId :: Lens' StreetSegment (Maybe Text)
ssBeforeGeocodeId
  = lens _ssBeforeGeocodeId
      (\ s a -> s{_ssBeforeGeocodeId = a})

ssDataSetId :: Lens' StreetSegment (Maybe Int64)
ssDataSetId
  = lens _ssDataSetId (\ s a -> s{_ssDataSetId = a}) .
      mapping _Coerce

ssStartLngE7 :: Lens' StreetSegment (Maybe Int64)
ssStartLngE7
  = lens _ssStartLngE7 (\ s a -> s{_ssStartLngE7 = a})
      . mapping _Coerce

ssCity :: Lens' StreetSegment (Maybe Text)
ssCity = lens _ssCity (\ s a -> s{_ssCity = a})

ssWildcard :: Lens' StreetSegment (Maybe Bool)
ssWildcard
  = lens _ssWildcard (\ s a -> s{_ssWildcard = a})

ssTargetsmartUniquePrecinctCode :: Lens' StreetSegment (Maybe Text)
ssTargetsmartUniquePrecinctCode
  = lens _ssTargetsmartUniquePrecinctCode
      (\ s a -> s{_ssTargetsmartUniquePrecinctCode = a})

ssProvenances :: Lens' StreetSegment [Provenance]
ssProvenances
  = lens _ssProvenances
      (\ s a -> s{_ssProvenances = a})
      . _Default
      . _Coerce

ssSchoolDistrict :: Lens' StreetSegment (Maybe Text)
ssSchoolDistrict
  = lens _ssSchoolDistrict
      (\ s a -> s{_ssSchoolDistrict = a})

ssMailOnly :: Lens' StreetSegment (Maybe Bool)
ssMailOnly
  = lens _ssMailOnly (\ s a -> s{_ssMailOnly = a})

ssId :: Lens' StreetSegment (Maybe Text)
ssId = lens _ssId (\ s a -> s{_ssId = a})

ssUnitNumber :: Lens' StreetSegment (Maybe Text)
ssUnitNumber
  = lens _ssUnitNumber (\ s a -> s{_ssUnitNumber = a})

ssAdministrationRegionIds :: Lens' StreetSegment [Text]
ssAdministrationRegionIds
  = lens _ssAdministrationRegionIds
      (\ s a -> s{_ssAdministrationRegionIds = a})
      . _Default
      . _Coerce

ssVanPrecinctCode :: Lens' StreetSegment (Maybe Text)
ssVanPrecinctCode
  = lens _ssVanPrecinctCode
      (\ s a -> s{_ssVanPrecinctCode = a})

ssJudicialDistrict :: Lens' StreetSegment (Maybe Text)
ssJudicialDistrict
  = lens _ssJudicialDistrict
      (\ s a -> s{_ssJudicialDistrict = a})

ssPrecinctName :: Lens' StreetSegment (Maybe Text)
ssPrecinctName
  = lens _ssPrecinctName
      (\ s a -> s{_ssPrecinctName = a})

ssCountyFips :: Lens' StreetSegment (Maybe Text)
ssCountyFips
  = lens _ssCountyFips (\ s a -> s{_ssCountyFips = a})

ssPrecinctOcdId :: Lens' StreetSegment (Maybe Text)
ssPrecinctOcdId
  = lens _ssPrecinctOcdId
      (\ s a -> s{_ssPrecinctOcdId = a})

instance FromJSON StreetSegment where
        parseJSON
          = withObject "StreetSegment"
              (\ o ->
                 StreetSegment' <$>
                   (o .:? "originalId") <*>
                     (o .:? "pollinglocationByIds" .!= mempty)
                     <*> (o .:? "startHouseNumber")
                     <*> (o .:? "catalistUniquePrecinctCode")
                     <*> (o .:? "state")
                     <*> (o .:? "contestIds" .!= mempty)
                     <*> (o .:? "stateHouseDistrict")
                     <*> (o .:? "ncoaAddress")
                     <*> (o .:? "earlyVoteSiteByIds" .!= mempty)
                     <*> (o .:? "countyCouncilDistrict")
                     <*> (o .:? "cityCouncilDistrict")
                     <*> (o .:? "geocodedPoint")
                     <*> (o .:? "endHouseNumber")
                     <*> (o .:? "subAdministrativeAreaName")
                     <*> (o .:? "published")
                     <*> (o .:? "startLatE7")
                     <*> (o .:? "zip")
                     <*> (o .:? "surrogateId")
                     <*> (o .:? "municipalDistrict")
                     <*> (o .:? "wardDistrict")
                     <*>
                     (o .:? "voterGeographicDivisionOcdIds" .!= mempty)
                     <*> (o .:? "streetName")
                     <*> (o .:? "townshipDistrict")
                     <*> (o .:? "unitType")
                     <*> (o .:? "congressionalDistrict")
                     <*> (o .:? "stateSenateDistrict")
                     <*> (o .:? "oddOrEvens" .!= mempty)
                     <*> (o .:? "geographicDivisionOcdIds" .!= mempty)
                     <*> (o .:? "beforeGeocodeId")
                     <*> (o .:? "datasetId")
                     <*> (o .:? "startLngE7")
                     <*> (o .:? "city")
                     <*> (o .:? "wildcard")
                     <*> (o .:? "targetsmartUniquePrecinctCode")
                     <*> (o .:? "provenances" .!= mempty)
                     <*> (o .:? "schoolDistrict")
                     <*> (o .:? "mailOnly")
                     <*> (o .:? "id")
                     <*> (o .:? "unitNumber")
                     <*> (o .:? "administrationRegionIds" .!= mempty)
                     <*> (o .:? "vanPrecinctCode")
                     <*> (o .:? "judicialDistrict")
                     <*> (o .:? "precinctName")
                     <*> (o .:? "countyFips")
                     <*> (o .:? "precinctOcdId"))

instance ToJSON StreetSegment where
        toJSON StreetSegment'{..}
          = object
              (catMaybes
                 [("originalId" .=) <$> _ssOriginalId,
                  ("pollinglocationByIds" .=) <$>
                    _ssPollinglocationByIds,
                  ("startHouseNumber" .=) <$> _ssStartHouseNumber,
                  ("catalistUniquePrecinctCode" .=) <$>
                    _ssCataListUniquePrecinctCode,
                  ("state" .=) <$> _ssState,
                  ("contestIds" .=) <$> _ssContestIds,
                  ("stateHouseDistrict" .=) <$> _ssStateHouseDistrict,
                  ("ncoaAddress" .=) <$> _ssNcoaAddress,
                  ("earlyVoteSiteByIds" .=) <$> _ssEarlyVoteSiteByIds,
                  ("countyCouncilDistrict" .=) <$>
                    _ssCountyCouncilDistrict,
                  ("cityCouncilDistrict" .=) <$>
                    _ssCityCouncilDistrict,
                  ("geocodedPoint" .=) <$> _ssGeocodedPoint,
                  ("endHouseNumber" .=) <$> _ssEndHouseNumber,
                  ("subAdministrativeAreaName" .=) <$>
                    _ssSubAdministrativeAreaName,
                  ("published" .=) <$> _ssPublished,
                  ("startLatE7" .=) <$> _ssStartLatE7,
                  ("zip" .=) <$> _ssZip,
                  ("surrogateId" .=) <$> _ssSurrogateId,
                  ("municipalDistrict" .=) <$> _ssMunicipalDistrict,
                  ("wardDistrict" .=) <$> _ssWardDistrict,
                  ("voterGeographicDivisionOcdIds" .=) <$>
                    _ssVoterGeographicDivisionOcdIds,
                  ("streetName" .=) <$> _ssStreetName,
                  ("townshipDistrict" .=) <$> _ssTownshipDistrict,
                  ("unitType" .=) <$> _ssUnitType,
                  ("congressionalDistrict" .=) <$>
                    _ssCongressionalDistrict,
                  ("stateSenateDistrict" .=) <$>
                    _ssStateSenateDistrict,
                  ("oddOrEvens" .=) <$> _ssOddOrEvens,
                  ("geographicDivisionOcdIds" .=) <$>
                    _ssGeographicDivisionOcdIds,
                  ("beforeGeocodeId" .=) <$> _ssBeforeGeocodeId,
                  ("datasetId" .=) <$> _ssDataSetId,
                  ("startLngE7" .=) <$> _ssStartLngE7,
                  ("city" .=) <$> _ssCity,
                  ("wildcard" .=) <$> _ssWildcard,
                  ("targetsmartUniquePrecinctCode" .=) <$>
                    _ssTargetsmartUniquePrecinctCode,
                  ("provenances" .=) <$> _ssProvenances,
                  ("schoolDistrict" .=) <$> _ssSchoolDistrict,
                  ("mailOnly" .=) <$> _ssMailOnly, ("id" .=) <$> _ssId,
                  ("unitNumber" .=) <$> _ssUnitNumber,
                  ("administrationRegionIds" .=) <$>
                    _ssAdministrationRegionIds,
                  ("vanPrecinctCode" .=) <$> _ssVanPrecinctCode,
                  ("judicialDistrict" .=) <$> _ssJudicialDistrict,
                  ("precinctName" .=) <$> _ssPrecinctName,
                  ("countyFips" .=) <$> _ssCountyFips,
                  ("precinctOcdId" .=) <$> _ssPrecinctOcdId])

-- | Information about a candidate running for elected office.
--
-- /See:/ 'candidate' smart constructor.
data Candidate = Candidate'
    { _cEmail         :: !(Maybe Text)
    , _cPhone         :: !(Maybe Text)
    , _cPhotoURL      :: !(Maybe Text)
    , _cChannels      :: !(Maybe [Channel])
    , _cCandidateURL  :: !(Maybe Text)
    , _cOrderOnBallot :: !(Maybe (Textual Int64))
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
    Candidate'
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
      . mapping _Coerce

-- | The candidate\'s name. If this is a joint ticket it will indicate the
-- name of the candidate at the top of a ticket followed by a \/ and that
-- name of candidate at the bottom of the ticket. e.g. \"Mitt Romney \/
-- Paul Ryan\"
cName :: Lens' Candidate (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The full name of the party the candidate is a member of.
cParty :: Lens' Candidate (Maybe Text)
cParty = lens _cParty (\ s a -> s{_cParty = a})

instance FromJSON Candidate where
        parseJSON
          = withObject "Candidate"
              (\ o ->
                 Candidate' <$>
                   (o .:? "email") <*> (o .:? "phone") <*>
                     (o .:? "photoUrl")
                     <*> (o .:? "channels" .!= mempty)
                     <*> (o .:? "candidateUrl")
                     <*> (o .:? "orderOnBallot")
                     <*> (o .:? "name")
                     <*> (o .:? "party"))

instance ToJSON Candidate where
        toJSON Candidate'{..}
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
data Office = Office'
    { _oDivisionId      :: !(Maybe Text)
    , _oRoles           :: !(Maybe [Text])
    , _oOfficialIndices :: !(Maybe [Textual Word32])
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
    Office'
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
                 Office' <$>
                   (o .:? "divisionId") <*> (o .:? "roles" .!= mempty)
                     <*> (o .:? "officialIndices" .!= mempty)
                     <*> (o .:? "sources" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "levels" .!= mempty))

instance ToJSON Office where
        toJSON Office'{..}
          = object
              (catMaybes
                 [("divisionId" .=) <$> _oDivisionId,
                  ("roles" .=) <$> _oRoles,
                  ("officialIndices" .=) <$> _oOfficialIndices,
                  ("sources" .=) <$> _oSources, ("name" .=) <$> _oName,
                  ("levels" .=) <$> _oLevels])

--
-- /See:/ 'streetSegmentList' smart constructor.
newtype StreetSegmentList = StreetSegmentList'
    { _sslSegments :: Maybe [StreetSegment]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StreetSegmentList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslSegments'
streetSegmentList
    :: StreetSegmentList
streetSegmentList =
    StreetSegmentList'
    { _sslSegments = Nothing
    }

sslSegments :: Lens' StreetSegmentList [StreetSegment]
sslSegments
  = lens _sslSegments (\ s a -> s{_sslSegments = a}) .
      _Default
      . _Coerce

instance FromJSON StreetSegmentList where
        parseJSON
          = withObject "StreetSegmentList"
              (\ o ->
                 StreetSegmentList' <$> (o .:? "segments" .!= mempty))

instance ToJSON StreetSegmentList where
        toJSON StreetSegmentList'{..}
          = object
              (catMaybes [("segments" .=) <$> _sslSegments])

--
-- /See:/ 'livegraphBacktraceRecordInfo' smart constructor.
data LivegraphBacktraceRecordInfo = LivegraphBacktraceRecordInfo'
    { _lbriDataSourcePublishMsec :: !(Maybe (Textual Int64))
    , _lbriTopicBuildStartMsec   :: !(Maybe (Textual Int64))
    , _lbriIsRecon               :: !(Maybe Bool)
    , _lbriPriority              :: !(Maybe Text)
    , _lbriShouldMonitorLatency  :: !(Maybe Bool)
    , _lbriRecordId              :: !(Maybe Text)
    , _lbriProxySentMsec         :: !(Maybe (Textual Int64))
    , _lbriExpInfo               :: !(Maybe LivegraphBacktraceRecordInfoExpInfo)
    , _lbriProcess               :: !(Maybe Text)
    , _lbriTopicBuildFinishMsec  :: !(Maybe (Textual Int64))
    , _lbriNumberOfTriples       :: !(Maybe (Textual Int64))
    , _lbriProxyReceiveMsec      :: !(Maybe (Textual Int64))
    , _lbriVersion               :: !(Maybe Text)
    , _lbriIsWlmThrottled        :: !(Maybe Bool)
    , _lbriExpId                 :: !(Maybe Text)
    , _lbriSubscriberReceiveMsec :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LivegraphBacktraceRecordInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbriDataSourcePublishMsec'
--
-- * 'lbriTopicBuildStartMsec'
--
-- * 'lbriIsRecon'
--
-- * 'lbriPriority'
--
-- * 'lbriShouldMonitorLatency'
--
-- * 'lbriRecordId'
--
-- * 'lbriProxySentMsec'
--
-- * 'lbriExpInfo'
--
-- * 'lbriProcess'
--
-- * 'lbriTopicBuildFinishMsec'
--
-- * 'lbriNumberOfTriples'
--
-- * 'lbriProxyReceiveMsec'
--
-- * 'lbriVersion'
--
-- * 'lbriIsWlmThrottled'
--
-- * 'lbriExpId'
--
-- * 'lbriSubscriberReceiveMsec'
livegraphBacktraceRecordInfo
    :: LivegraphBacktraceRecordInfo
livegraphBacktraceRecordInfo =
    LivegraphBacktraceRecordInfo'
    { _lbriDataSourcePublishMsec = Nothing
    , _lbriTopicBuildStartMsec = Nothing
    , _lbriIsRecon = Nothing
    , _lbriPriority = Nothing
    , _lbriShouldMonitorLatency = Nothing
    , _lbriRecordId = Nothing
    , _lbriProxySentMsec = Nothing
    , _lbriExpInfo = Nothing
    , _lbriProcess = Nothing
    , _lbriTopicBuildFinishMsec = Nothing
    , _lbriNumberOfTriples = Nothing
    , _lbriProxyReceiveMsec = Nothing
    , _lbriVersion = Nothing
    , _lbriIsWlmThrottled = Nothing
    , _lbriExpId = Nothing
    , _lbriSubscriberReceiveMsec = Nothing
    }

lbriDataSourcePublishMsec :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriDataSourcePublishMsec
  = lens _lbriDataSourcePublishMsec
      (\ s a -> s{_lbriDataSourcePublishMsec = a})
      . mapping _Coerce

lbriTopicBuildStartMsec :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriTopicBuildStartMsec
  = lens _lbriTopicBuildStartMsec
      (\ s a -> s{_lbriTopicBuildStartMsec = a})
      . mapping _Coerce

lbriIsRecon :: Lens' LivegraphBacktraceRecordInfo (Maybe Bool)
lbriIsRecon
  = lens _lbriIsRecon (\ s a -> s{_lbriIsRecon = a})

lbriPriority :: Lens' LivegraphBacktraceRecordInfo (Maybe Text)
lbriPriority
  = lens _lbriPriority (\ s a -> s{_lbriPriority = a})

lbriShouldMonitorLatency :: Lens' LivegraphBacktraceRecordInfo (Maybe Bool)
lbriShouldMonitorLatency
  = lens _lbriShouldMonitorLatency
      (\ s a -> s{_lbriShouldMonitorLatency = a})

lbriRecordId :: Lens' LivegraphBacktraceRecordInfo (Maybe Text)
lbriRecordId
  = lens _lbriRecordId (\ s a -> s{_lbriRecordId = a})

lbriProxySentMsec :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriProxySentMsec
  = lens _lbriProxySentMsec
      (\ s a -> s{_lbriProxySentMsec = a})
      . mapping _Coerce

lbriExpInfo :: Lens' LivegraphBacktraceRecordInfo (Maybe LivegraphBacktraceRecordInfoExpInfo)
lbriExpInfo
  = lens _lbriExpInfo (\ s a -> s{_lbriExpInfo = a})

lbriProcess :: Lens' LivegraphBacktraceRecordInfo (Maybe Text)
lbriProcess
  = lens _lbriProcess (\ s a -> s{_lbriProcess = a})

lbriTopicBuildFinishMsec :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriTopicBuildFinishMsec
  = lens _lbriTopicBuildFinishMsec
      (\ s a -> s{_lbriTopicBuildFinishMsec = a})
      . mapping _Coerce

lbriNumberOfTriples :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriNumberOfTriples
  = lens _lbriNumberOfTriples
      (\ s a -> s{_lbriNumberOfTriples = a})
      . mapping _Coerce

lbriProxyReceiveMsec :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriProxyReceiveMsec
  = lens _lbriProxyReceiveMsec
      (\ s a -> s{_lbriProxyReceiveMsec = a})
      . mapping _Coerce

lbriVersion :: Lens' LivegraphBacktraceRecordInfo (Maybe Text)
lbriVersion
  = lens _lbriVersion (\ s a -> s{_lbriVersion = a})

lbriIsWlmThrottled :: Lens' LivegraphBacktraceRecordInfo (Maybe Bool)
lbriIsWlmThrottled
  = lens _lbriIsWlmThrottled
      (\ s a -> s{_lbriIsWlmThrottled = a})

lbriExpId :: Lens' LivegraphBacktraceRecordInfo (Maybe Text)
lbriExpId
  = lens _lbriExpId (\ s a -> s{_lbriExpId = a})

lbriSubscriberReceiveMsec :: Lens' LivegraphBacktraceRecordInfo (Maybe Int64)
lbriSubscriberReceiveMsec
  = lens _lbriSubscriberReceiveMsec
      (\ s a -> s{_lbriSubscriberReceiveMsec = a})
      . mapping _Coerce

instance FromJSON LivegraphBacktraceRecordInfo where
        parseJSON
          = withObject "LivegraphBacktraceRecordInfo"
              (\ o ->
                 LivegraphBacktraceRecordInfo' <$>
                   (o .:? "dataSourcePublishMsec") <*>
                     (o .:? "topicBuildStartMsec")
                     <*> (o .:? "isRecon")
                     <*> (o .:? "priority")
                     <*> (o .:? "shouldMonitorLatency")
                     <*> (o .:? "recordId")
                     <*> (o .:? "proxySentMsec")
                     <*> (o .:? "expInfo")
                     <*> (o .:? "process")
                     <*> (o .:? "topicBuildFinishMsec")
                     <*> (o .:? "numberOfTriples")
                     <*> (o .:? "proxyReceiveMsec")
                     <*> (o .:? "version")
                     <*> (o .:? "isWlmThrottled")
                     <*> (o .:? "expId")
                     <*> (o .:? "subscriberReceiveMsec"))

instance ToJSON LivegraphBacktraceRecordInfo where
        toJSON LivegraphBacktraceRecordInfo'{..}
          = object
              (catMaybes
                 [("dataSourcePublishMsec" .=) <$>
                    _lbriDataSourcePublishMsec,
                  ("topicBuildStartMsec" .=) <$>
                    _lbriTopicBuildStartMsec,
                  ("isRecon" .=) <$> _lbriIsRecon,
                  ("priority" .=) <$> _lbriPriority,
                  ("shouldMonitorLatency" .=) <$>
                    _lbriShouldMonitorLatency,
                  ("recordId" .=) <$> _lbriRecordId,
                  ("proxySentMsec" .=) <$> _lbriProxySentMsec,
                  ("expInfo" .=) <$> _lbriExpInfo,
                  ("process" .=) <$> _lbriProcess,
                  ("topicBuildFinishMsec" .=) <$>
                    _lbriTopicBuildFinishMsec,
                  ("numberOfTriples" .=) <$> _lbriNumberOfTriples,
                  ("proxyReceiveMsec" .=) <$> _lbriProxyReceiveMsec,
                  ("version" .=) <$> _lbriVersion,
                  ("isWlmThrottled" .=) <$> _lbriIsWlmThrottled,
                  ("expId" .=) <$> _lbriExpId,
                  ("subscriberReceiveMsec" .=) <$>
                    _lbriSubscriberReceiveMsec])

--
-- /See:/ 'electionsQueryRequest' smart constructor.
newtype ElectionsQueryRequest = ElectionsQueryRequest'
    { _eqrContextParams :: Maybe ContextParams
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqrContextParams'
electionsQueryRequest
    :: ElectionsQueryRequest
electionsQueryRequest =
    ElectionsQueryRequest'
    { _eqrContextParams = Nothing
    }

eqrContextParams :: Lens' ElectionsQueryRequest (Maybe ContextParams)
eqrContextParams
  = lens _eqrContextParams
      (\ s a -> s{_eqrContextParams = a})

instance FromJSON ElectionsQueryRequest where
        parseJSON
          = withObject "ElectionsQueryRequest"
              (\ o ->
                 ElectionsQueryRequest' <$> (o .:? "contextParams"))

instance ToJSON ElectionsQueryRequest where
        toJSON ElectionsQueryRequest'{..}
          = object
              (catMaybes
                 [("contextParams" .=) <$> _eqrContextParams])

-- | A social media or web channel for a candidate.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel'
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
    Channel'
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
              (\ o -> Channel' <$> (o .:? "id") <*> (o .:? "type"))

instance ToJSON Channel where
        toJSON Channel'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _cId, ("type" .=) <$> _cType])

-- | Information about the election that was queried.
--
-- /See:/ 'election' smart constructor.
data Election = Election'
    { _eOcdDivisionId :: !(Maybe Text)
    , _eElectionDay   :: !(Maybe Text)
    , _eName          :: !(Maybe Text)
    , _eId            :: !(Maybe (Textual Int64))
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
    Election'
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
eId
  = lens _eId (\ s a -> s{_eId = a}) . mapping _Coerce

instance FromJSON Election where
        parseJSON
          = withObject "Election"
              (\ o ->
                 Election' <$>
                   (o .:? "ocdDivisionId") <*> (o .:? "electionDay") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Election where
        toJSON Election'{..}
          = object
              (catMaybes
                 [("ocdDivisionId" .=) <$> _eOcdDivisionId,
                  ("electionDay" .=) <$> _eElectionDay,
                  ("name" .=) <$> _eName, ("id" .=) <$> _eId])

-- | The result of a representative info lookup query.
--
-- /See:/ 'representativeInfoResponse' smart constructor.
data RepresentativeInfoResponse = RepresentativeInfoResponse'
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
    RepresentativeInfoResponse'
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
                 RepresentativeInfoResponse' <$>
                   (o .:? "kind" .!=
                      "civicinfo#representativeInfoResponse")
                     <*> (o .:? "normalizedInput")
                     <*> (o .:? "officials" .!= mempty)
                     <*> (o .:? "divisions")
                     <*> (o .:? "offices" .!= mempty))

instance ToJSON RepresentativeInfoResponse where
        toJSON RepresentativeInfoResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rirKind),
                  ("normalizedInput" .=) <$> _rirNormalizedInput,
                  ("officials" .=) <$> _rirOfficials,
                  ("divisions" .=) <$> _rirDivisions,
                  ("offices" .=) <$> _rirOffices])

--
-- /See:/ 'voterInfoSegmentResult' smart constructor.
data VoterInfoSegmentResult = VoterInfoSegmentResult'
    { _visrResponse        :: !(Maybe VoterInfoResponse)
    , _visrGeneratedMillis :: !(Maybe (Textual Int64))
    , _visrPostalAddress   :: !(Maybe PostalAddress)
    , _visrRequest         :: !(Maybe VoterInfoRequest)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VoterInfoSegmentResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'visrResponse'
--
-- * 'visrGeneratedMillis'
--
-- * 'visrPostalAddress'
--
-- * 'visrRequest'
voterInfoSegmentResult
    :: VoterInfoSegmentResult
voterInfoSegmentResult =
    VoterInfoSegmentResult'
    { _visrResponse = Nothing
    , _visrGeneratedMillis = Nothing
    , _visrPostalAddress = Nothing
    , _visrRequest = Nothing
    }

visrResponse :: Lens' VoterInfoSegmentResult (Maybe VoterInfoResponse)
visrResponse
  = lens _visrResponse (\ s a -> s{_visrResponse = a})

visrGeneratedMillis :: Lens' VoterInfoSegmentResult (Maybe Int64)
visrGeneratedMillis
  = lens _visrGeneratedMillis
      (\ s a -> s{_visrGeneratedMillis = a})
      . mapping _Coerce

visrPostalAddress :: Lens' VoterInfoSegmentResult (Maybe PostalAddress)
visrPostalAddress
  = lens _visrPostalAddress
      (\ s a -> s{_visrPostalAddress = a})

visrRequest :: Lens' VoterInfoSegmentResult (Maybe VoterInfoRequest)
visrRequest
  = lens _visrRequest (\ s a -> s{_visrRequest = a})

instance FromJSON VoterInfoSegmentResult where
        parseJSON
          = withObject "VoterInfoSegmentResult"
              (\ o ->
                 VoterInfoSegmentResult' <$>
                   (o .:? "response") <*> (o .:? "generatedMillis") <*>
                     (o .:? "postalAddress")
                     <*> (o .:? "request"))

instance ToJSON VoterInfoSegmentResult where
        toJSON VoterInfoSegmentResult'{..}
          = object
              (catMaybes
                 [("response" .=) <$> _visrResponse,
                  ("generatedMillis" .=) <$> _visrGeneratedMillis,
                  ("postalAddress" .=) <$> _visrPostalAddress,
                  ("request" .=) <$> _visrRequest])

-- | Represents a political geographic division that matches the requested
-- query.
--
-- /See:/ 'divisionSearchResult' smart constructor.
data DivisionSearchResult = DivisionSearchResult'
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
    DivisionSearchResult'
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
                 DivisionSearchResult' <$>
                   (o .:? "aliases" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "ocdId"))

instance ToJSON DivisionSearchResult where
        toJSON DivisionSearchResult'{..}
          = object
              (catMaybes
                 [("aliases" .=) <$> _dsrAliases,
                  ("name" .=) <$> _dsrName,
                  ("ocdId" .=) <$> _dsrOcdId])

-- | A search request for political geographies.
--
-- /See:/ 'divisionSearchRequest' smart constructor.
newtype DivisionSearchRequest = DivisionSearchRequest'
    { _dsrContextParams :: Maybe ContextParams
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionSearchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrContextParams'
divisionSearchRequest
    :: DivisionSearchRequest
divisionSearchRequest =
    DivisionSearchRequest'
    { _dsrContextParams = Nothing
    }

dsrContextParams :: Lens' DivisionSearchRequest (Maybe ContextParams)
dsrContextParams
  = lens _dsrContextParams
      (\ s a -> s{_dsrContextParams = a})

instance FromJSON DivisionSearchRequest where
        parseJSON
          = withObject "DivisionSearchRequest"
              (\ o ->
                 DivisionSearchRequest' <$> (o .:? "contextParams"))

instance ToJSON DivisionSearchRequest where
        toJSON DivisionSearchRequest'{..}
          = object
              (catMaybes
                 [("contextParams" .=) <$> _dsrContextParams])

--
-- /See:/ 'fieldMetadataProto' smart constructor.
newtype FieldMetadataProto = FieldMetadataProto'
    { _fmpInternal :: Maybe InternalFieldMetadataProto
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FieldMetadataProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fmpInternal'
fieldMetadataProto
    :: FieldMetadataProto
fieldMetadataProto =
    FieldMetadataProto'
    { _fmpInternal = Nothing
    }

fmpInternal :: Lens' FieldMetadataProto (Maybe InternalFieldMetadataProto)
fmpInternal
  = lens _fmpInternal (\ s a -> s{_fmpInternal = a})

instance FromJSON FieldMetadataProto where
        parseJSON
          = withObject "FieldMetadataProto"
              (\ o -> FieldMetadataProto' <$> (o .:? "internal"))

instance ToJSON FieldMetadataProto where
        toJSON FieldMetadataProto'{..}
          = object
              (catMaybes [("internal" .=) <$> _fmpInternal])

--
-- /See:/ 'messageSet' smart constructor.
newtype MessageSet = MessageSet'
    { _msRecordMessageSetExt :: Maybe LivegraphBacktraceRecordInfo
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MessageSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msRecordMessageSetExt'
messageSet
    :: MessageSet
messageSet =
    MessageSet'
    { _msRecordMessageSetExt = Nothing
    }

msRecordMessageSetExt :: Lens' MessageSet (Maybe LivegraphBacktraceRecordInfo)
msRecordMessageSetExt
  = lens _msRecordMessageSetExt
      (\ s a -> s{_msRecordMessageSetExt = a})

instance FromJSON MessageSet where
        parseJSON
          = withObject "MessageSet"
              (\ o ->
                 MessageSet' <$> (o .:? "recordMessageSetExt"))

instance ToJSON MessageSet where
        toJSON MessageSet'{..}
          = object
              (catMaybes
                 [("recordMessageSetExt" .=) <$>
                    _msRecordMessageSetExt])

-- | Information about an election administrative body (e.g. County Board of
-- Elections).
--
-- /See:/ 'administrativeBody' smart constructor.
data AdministrativeBody = AdministrativeBody'
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
    , _abAddressLines                        :: !(Maybe [Text])
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
-- * 'abAddressLines'
--
-- * 'abVoterServices'
--
-- * 'abElectionRegistrationURL'
administrativeBody
    :: AdministrativeBody
administrativeBody =
    AdministrativeBody'
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
    , _abAddressLines = Nothing
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

abAddressLines :: Lens' AdministrativeBody [Text]
abAddressLines
  = lens _abAddressLines
      (\ s a -> s{_abAddressLines = a})
      . _Default
      . _Coerce

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
                 AdministrativeBody' <$>
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
                     <*> (o .:? "addressLines" .!= mempty)
                     <*> (o .:? "voter_services" .!= mempty)
                     <*> (o .:? "electionRegistrationUrl"))

instance ToJSON AdministrativeBody where
        toJSON AdministrativeBody'{..}
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
                  ("addressLines" .=) <$> _abAddressLines,
                  ("voter_services" .=) <$> _abVoterServices,
                  ("electionRegistrationUrl" .=) <$>
                    _abElectionRegistrationURL])

-- | A request for political geography and representative information for an
-- address.
--
-- /See:/ 'representativeInfoRequest' smart constructor.
newtype RepresentativeInfoRequest = RepresentativeInfoRequest'
    { _rirContextParams :: Maybe ContextParams
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirContextParams'
representativeInfoRequest
    :: RepresentativeInfoRequest
representativeInfoRequest =
    RepresentativeInfoRequest'
    { _rirContextParams = Nothing
    }

rirContextParams :: Lens' RepresentativeInfoRequest (Maybe ContextParams)
rirContextParams
  = lens _rirContextParams
      (\ s a -> s{_rirContextParams = a})

instance FromJSON RepresentativeInfoRequest where
        parseJSON
          = withObject "RepresentativeInfoRequest"
              (\ o ->
                 RepresentativeInfoRequest' <$>
                   (o .:? "contextParams"))

instance ToJSON RepresentativeInfoRequest where
        toJSON RepresentativeInfoRequest'{..}
          = object
              (catMaybes
                 [("contextParams" .=) <$> _rirContextParams])

-- | Information about a contest that appears on a voter\'s ballot.
--
-- /See:/ 'contest' smart constructor.
data Contest = Contest'
    { _conReferendumPassageThreshold :: !(Maybe Text)
    , _conRoles                      :: !(Maybe [Text])
    , _conReferendumURL              :: !(Maybe Text)
    , _conReferendumEffectOfAbstain  :: !(Maybe Text)
    , _conReferendumSubtitle         :: !(Maybe Text)
    , _conNumberVotingFor            :: !(Maybe (Textual Int64))
    , _conOffice                     :: !(Maybe Text)
    , _conReferendumConStatement     :: !(Maybe Text)
    , _conSources                    :: !(Maybe [Source])
    , _conReferendumProStatement     :: !(Maybe Text)
    , _conReferendumBallotResponses  :: !(Maybe [Text])
    , _conNumberElected              :: !(Maybe (Textual Int64))
    , _conSpecial                    :: !(Maybe Text)
    , _conReferendumText             :: !(Maybe Text)
    , _conPrimaryParty               :: !(Maybe Text)
    , _conId                         :: !(Maybe Text)
    , _conType                       :: !(Maybe Text)
    , _conBallotTitle                :: !(Maybe Text)
    , _conElectorateSpecifications   :: !(Maybe Text)
    , _conReferendumBrief            :: !(Maybe Text)
    , _conDistrict                   :: !(Maybe ElectoralDistrict)
    , _conLevel                      :: !(Maybe [Text])
    , _conCandidates                 :: !(Maybe [Candidate])
    , _conReferendumTitle            :: !(Maybe Text)
    , _conBallotPlacement            :: !(Maybe (Textual Int64))
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
-- * 'conBallotTitle'
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
    Contest'
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
    , _conBallotTitle = Nothing
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
      . mapping _Coerce

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
-- or \"no\" for referenda. This field is only populated for contests of
-- type \'Referendum\'.
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
      . mapping _Coerce

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
-- \'Referendum\'. For Retention contests this will typically be
-- \'Retention\'.
conType :: Lens' Contest (Maybe Text)
conType = lens _conType (\ s a -> s{_conType = a})

-- | The official title on the ballot for this contest, only where available.
conBallotTitle :: Lens' Contest (Maybe Text)
conBallotTitle
  = lens _conBallotTitle
      (\ s a -> s{_conBallotTitle = a})

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
      . mapping _Coerce

instance FromJSON Contest where
        parseJSON
          = withObject "Contest"
              (\ o ->
                 Contest' <$>
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
                     <*> (o .:? "ballotTitle")
                     <*> (o .:? "electorateSpecifications")
                     <*> (o .:? "referendumBrief")
                     <*> (o .:? "district")
                     <*> (o .:? "level" .!= mempty)
                     <*> (o .:? "candidates" .!= mempty)
                     <*> (o .:? "referendumTitle")
                     <*> (o .:? "ballotPlacement"))

instance ToJSON Contest where
        toJSON Contest'{..}
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
                  ("ballotTitle" .=) <$> _conBallotTitle,
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
data DivisionSearchResponse = DivisionSearchResponse'
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
    DivisionSearchResponse'
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
                 DivisionSearchResponse' <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "civicinfo#divisionSearchResponse"))

instance ToJSON DivisionSearchResponse where
        toJSON DivisionSearchResponse'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _dsrResults,
                  Just ("kind" .= _dsrKind)])

-- | Political geographic divisions that contain the requested address.
--
-- /See:/ 'representativeInfoDataDivisions' smart constructor.
newtype RepresentativeInfoDataDivisions = RepresentativeInfoDataDivisions'
    { _riddAddtional :: HashMap Text GeographicDivision
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepresentativeInfoDataDivisions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riddAddtional'
representativeInfoDataDivisions
    :: HashMap Text GeographicDivision -- ^ 'riddAddtional'
    -> RepresentativeInfoDataDivisions
representativeInfoDataDivisions pRiddAddtional_ =
    RepresentativeInfoDataDivisions'
    { _riddAddtional = _Coerce # pRiddAddtional_
    }

-- | The unique Open Civic Data identifier for this division.
riddAddtional :: Lens' RepresentativeInfoDataDivisions (HashMap Text GeographicDivision)
riddAddtional
  = lens _riddAddtional
      (\ s a -> s{_riddAddtional = a})
      . _Coerce

instance FromJSON RepresentativeInfoDataDivisions
         where
        parseJSON
          = withObject "RepresentativeInfoDataDivisions"
              (\ o ->
                 RepresentativeInfoDataDivisions' <$>
                   (parseJSONObject o))

instance ToJSON RepresentativeInfoDataDivisions where
        toJSON = toJSON . _riddAddtional

-- | Information about individual election officials.
--
-- /See:/ 'electionOfficial' smart constructor.
data ElectionOfficial = ElectionOfficial'
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
    ElectionOfficial'
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
                 ElectionOfficial' <$>
                   (o .:? "faxNumber") <*> (o .:? "name") <*>
                     (o .:? "officePhoneNumber")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "title"))

instance ToJSON ElectionOfficial where
        toJSON ElectionOfficial'{..}
          = object
              (catMaybes
                 [("faxNumber" .=) <$> _eoFaxNumber,
                  ("name" .=) <$> _eoName,
                  ("officePhoneNumber" .=) <$> _eoOfficePhoneNumber,
                  ("emailAddress" .=) <$> _eoEmailAddress,
                  ("title" .=) <$> _eoTitle])

--
-- /See:/ 'pointProto' smart constructor.
data PointProto = PointProto'
    { _ppLatE7         :: !(Maybe (Textual Word32))
    , _ppLngE7         :: !(Maybe (Textual Word32))
    , _ppMetadata      :: !(Maybe FieldMetadataProto)
    , _ppTemporaryData :: !(Maybe MessageSet)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PointProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppLatE7'
--
-- * 'ppLngE7'
--
-- * 'ppMetadata'
--
-- * 'ppTemporaryData'
pointProto
    :: PointProto
pointProto =
    PointProto'
    { _ppLatE7 = Nothing
    , _ppLngE7 = Nothing
    , _ppMetadata = Nothing
    , _ppTemporaryData = Nothing
    }

ppLatE7 :: Lens' PointProto (Maybe Word32)
ppLatE7
  = lens _ppLatE7 (\ s a -> s{_ppLatE7 = a}) .
      mapping _Coerce

ppLngE7 :: Lens' PointProto (Maybe Word32)
ppLngE7
  = lens _ppLngE7 (\ s a -> s{_ppLngE7 = a}) .
      mapping _Coerce

ppMetadata :: Lens' PointProto (Maybe FieldMetadataProto)
ppMetadata
  = lens _ppMetadata (\ s a -> s{_ppMetadata = a})

ppTemporaryData :: Lens' PointProto (Maybe MessageSet)
ppTemporaryData
  = lens _ppTemporaryData
      (\ s a -> s{_ppTemporaryData = a})

instance FromJSON PointProto where
        parseJSON
          = withObject "PointProto"
              (\ o ->
                 PointProto' <$>
                   (o .:? "latE7") <*> (o .:? "lngE7") <*>
                     (o .:? "metadata")
                     <*> (o .:? "temporaryData"))

instance ToJSON PointProto where
        toJSON PointProto'{..}
          = object
              (catMaybes
                 [("latE7" .=) <$> _ppLatE7,
                  ("lngE7" .=) <$> _ppLngE7,
                  ("metadata" .=) <$> _ppMetadata,
                  ("temporaryData" .=) <$> _ppTemporaryData])

--
-- /See:/ 'representativeInfoData' smart constructor.
data RepresentativeInfoData = RepresentativeInfoData'
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
    RepresentativeInfoData'
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
                 RepresentativeInfoData' <$>
                   (o .:? "officials" .!= mempty) <*>
                     (o .:? "divisions")
                     <*> (o .:? "offices" .!= mempty))

instance ToJSON RepresentativeInfoData where
        toJSON RepresentativeInfoData'{..}
          = object
              (catMaybes
                 [("officials" .=) <$> _ridOfficials,
                  ("divisions" .=) <$> _ridDivisions,
                  ("offices" .=) <$> _ridOffices])

-- | Contains information about the data source for the element containing
-- it.
--
-- /See:/ 'source' smart constructor.
data Source = Source'
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
    Source'
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
                 Source' <$> (o .:? "name") <*> (o .:? "official"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sName,
                  ("official" .=) <$> _sOfficial])

-- | A request to look up representative information for a single division.
--
-- /See:/ 'divisionRepresentativeInfoRequest' smart constructor.
newtype DivisionRepresentativeInfoRequest = DivisionRepresentativeInfoRequest'
    { _drirContextParams :: Maybe ContextParams
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionRepresentativeInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drirContextParams'
divisionRepresentativeInfoRequest
    :: DivisionRepresentativeInfoRequest
divisionRepresentativeInfoRequest =
    DivisionRepresentativeInfoRequest'
    { _drirContextParams = Nothing
    }

drirContextParams :: Lens' DivisionRepresentativeInfoRequest (Maybe ContextParams)
drirContextParams
  = lens _drirContextParams
      (\ s a -> s{_drirContextParams = a})

instance FromJSON DivisionRepresentativeInfoRequest
         where
        parseJSON
          = withObject "DivisionRepresentativeInfoRequest"
              (\ o ->
                 DivisionRepresentativeInfoRequest' <$>
                   (o .:? "contextParams"))

instance ToJSON DivisionRepresentativeInfoRequest
         where
        toJSON DivisionRepresentativeInfoRequest'{..}
          = object
              (catMaybes
                 [("contextParams" .=) <$> _drirContextParams])

-- | Describes the geographic scope of a contest.
--
-- /See:/ 'electoralDistrict' smart constructor.
data ElectoralDistrict = ElectoralDistrict'
    { _edKgForeignKey :: !(Maybe Text)
    , _edName         :: !(Maybe Text)
    , _edScope        :: !(Maybe Text)
    , _edId           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectoralDistrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edKgForeignKey'
--
-- * 'edName'
--
-- * 'edScope'
--
-- * 'edId'
electoralDistrict
    :: ElectoralDistrict
electoralDistrict =
    ElectoralDistrict'
    { _edKgForeignKey = Nothing
    , _edName = Nothing
    , _edScope = Nothing
    , _edId = Nothing
    }

edKgForeignKey :: Lens' ElectoralDistrict (Maybe Text)
edKgForeignKey
  = lens _edKgForeignKey
      (\ s a -> s{_edKgForeignKey = a})

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
                 ElectoralDistrict' <$>
                   (o .:? "kgForeignKey") <*> (o .:? "name") <*>
                     (o .:? "scope")
                     <*> (o .:? "id"))

instance ToJSON ElectoralDistrict where
        toJSON ElectoralDistrict'{..}
          = object
              (catMaybes
                 [("kgForeignKey" .=) <$> _edKgForeignKey,
                  ("name" .=) <$> _edName, ("scope" .=) <$> _edScope,
                  ("id" .=) <$> _edId])

-- | A request for information about a voter.
--
-- /See:/ 'voterInfoRequest' smart constructor.
data VoterInfoRequest = VoterInfoRequest'
    { _virVoterInfoSegmentResult :: !(Maybe VoterInfoSegmentResult)
    , _virContextParams          :: !(Maybe ContextParams)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VoterInfoRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'virVoterInfoSegmentResult'
--
-- * 'virContextParams'
voterInfoRequest
    :: VoterInfoRequest
voterInfoRequest =
    VoterInfoRequest'
    { _virVoterInfoSegmentResult = Nothing
    , _virContextParams = Nothing
    }

virVoterInfoSegmentResult :: Lens' VoterInfoRequest (Maybe VoterInfoSegmentResult)
virVoterInfoSegmentResult
  = lens _virVoterInfoSegmentResult
      (\ s a -> s{_virVoterInfoSegmentResult = a})

virContextParams :: Lens' VoterInfoRequest (Maybe ContextParams)
virContextParams
  = lens _virContextParams
      (\ s a -> s{_virContextParams = a})

instance FromJSON VoterInfoRequest where
        parseJSON
          = withObject "VoterInfoRequest"
              (\ o ->
                 VoterInfoRequest' <$>
                   (o .:? "voterInfoSegmentResult") <*>
                     (o .:? "contextParams"))

instance ToJSON VoterInfoRequest where
        toJSON VoterInfoRequest'{..}
          = object
              (catMaybes
                 [("voterInfoSegmentResult" .=) <$>
                    _virVoterInfoSegmentResult,
                  ("contextParams" .=) <$> _virContextParams])

-- | A simple representation of an address.
--
-- /See:/ 'simpleAddressType' smart constructor.
data SimpleAddressType = SimpleAddressType'
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
    SimpleAddressType'
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
                 SimpleAddressType' <$>
                   (o .:? "line2") <*> (o .:? "state") <*>
                     (o .:? "line3")
                     <*> (o .:? "zip")
                     <*> (o .:? "city")
                     <*> (o .:? "line1")
                     <*> (o .:? "locationName"))

instance ToJSON SimpleAddressType where
        toJSON SimpleAddressType'{..}
          = object
              (catMaybes
                 [("line2" .=) <$> _satLine2,
                  ("state" .=) <$> _satState,
                  ("line3" .=) <$> _satLine3, ("zip" .=) <$> _satZip,
                  ("city" .=) <$> _satCity, ("line1" .=) <$> _satLine1,
                  ("locationName" .=) <$> _satLocationName])

--
-- /See:/ 'internalSourceSummaryProto' smart constructor.
data InternalSourceSummaryProto = InternalSourceSummaryProto'
    { _isspDataSet  :: !(Maybe Text)
    , _isspProvider :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InternalSourceSummaryProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isspDataSet'
--
-- * 'isspProvider'
internalSourceSummaryProto
    :: InternalSourceSummaryProto
internalSourceSummaryProto =
    InternalSourceSummaryProto'
    { _isspDataSet = Nothing
    , _isspProvider = Nothing
    }

isspDataSet :: Lens' InternalSourceSummaryProto (Maybe Text)
isspDataSet
  = lens _isspDataSet (\ s a -> s{_isspDataSet = a})

isspProvider :: Lens' InternalSourceSummaryProto (Maybe Text)
isspProvider
  = lens _isspProvider (\ s a -> s{_isspProvider = a})

instance FromJSON InternalSourceSummaryProto where
        parseJSON
          = withObject "InternalSourceSummaryProto"
              (\ o ->
                 InternalSourceSummaryProto' <$>
                   (o .:? "dataset") <*> (o .:? "provider"))

instance ToJSON InternalSourceSummaryProto where
        toJSON InternalSourceSummaryProto'{..}
          = object
              (catMaybes
                 [("dataset" .=) <$> _isspDataSet,
                  ("provider" .=) <$> _isspProvider])

--
-- /See:/ 'livegraphBacktraceRecordInfoExpInfo' smart constructor.
newtype LivegraphBacktraceRecordInfoExpInfo = LivegraphBacktraceRecordInfoExpInfo'
    { _lbrieiDeletedIns :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LivegraphBacktraceRecordInfoExpInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrieiDeletedIns'
livegraphBacktraceRecordInfoExpInfo
    :: LivegraphBacktraceRecordInfoExpInfo
livegraphBacktraceRecordInfoExpInfo =
    LivegraphBacktraceRecordInfoExpInfo'
    { _lbrieiDeletedIns = Nothing
    }

lbrieiDeletedIns :: Lens' LivegraphBacktraceRecordInfoExpInfo [Text]
lbrieiDeletedIns
  = lens _lbrieiDeletedIns
      (\ s a -> s{_lbrieiDeletedIns = a})
      . _Default
      . _Coerce

instance FromJSON LivegraphBacktraceRecordInfoExpInfo
         where
        parseJSON
          = withObject "LivegraphBacktraceRecordInfoExpInfo"
              (\ o ->
                 LivegraphBacktraceRecordInfoExpInfo' <$>
                   (o .:? "deletedIns" .!= mempty))

instance ToJSON LivegraphBacktraceRecordInfoExpInfo
         where
        toJSON LivegraphBacktraceRecordInfoExpInfo'{..}
          = object
              (catMaybes [("deletedIns" .=) <$> _lbrieiDeletedIns])

--
-- /See:/ 'contextParams' smart constructor.
newtype ContextParams = ContextParams'
    { _cpClientProFile :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContextParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpClientProFile'
contextParams
    :: ContextParams
contextParams =
    ContextParams'
    { _cpClientProFile = Nothing
    }

cpClientProFile :: Lens' ContextParams (Maybe Text)
cpClientProFile
  = lens _cpClientProFile
      (\ s a -> s{_cpClientProFile = a})

instance FromJSON ContextParams where
        parseJSON
          = withObject "ContextParams"
              (\ o -> ContextParams' <$> (o .:? "clientProfile"))

instance ToJSON ContextParams where
        toJSON ContextParams'{..}
          = object
              (catMaybes
                 [("clientProfile" .=) <$> _cpClientProFile])

--
-- /See:/ 'postalAddress' smart constructor.
data PostalAddress = PostalAddress'
    { _paAdministrativeAreaName    :: !(Maybe Text)
    , _paRecipientName             :: !(Maybe Text)
    , _paLanguageCode              :: !(Maybe Text)
    , _paSortingCode               :: !(Maybe Text)
    , _paPremiseName               :: !(Maybe Text)
    , _paPostalCodeNumberExtension :: !(Maybe Text)
    , _paCountryNameCode           :: !(Maybe Text)
    , _paSubAdministrativeAreaName :: !(Maybe Text)
    , _paPostBoxNumber             :: !(Maybe Text)
    , _paLocalityName              :: !(Maybe Text)
    , _paIsDisputed                :: !(Maybe Bool)
    , _paThoroughfareNumber        :: !(Maybe Text)
    , _paDependentLocalityName     :: !(Maybe Text)
    , _paFirmName                  :: !(Maybe Text)
    , _paCountryName               :: !(Maybe Text)
    , _paDependentThoroughfareName :: !(Maybe Text)
    , _paAddressLines              :: !(Maybe [Text])
    , _paPostalCodeNumber          :: !(Maybe Text)
    , _paThoroughfareName          :: !(Maybe Text)
    , _paSubPremiseName            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paAdministrativeAreaName'
--
-- * 'paRecipientName'
--
-- * 'paLanguageCode'
--
-- * 'paSortingCode'
--
-- * 'paPremiseName'
--
-- * 'paPostalCodeNumberExtension'
--
-- * 'paCountryNameCode'
--
-- * 'paSubAdministrativeAreaName'
--
-- * 'paPostBoxNumber'
--
-- * 'paLocalityName'
--
-- * 'paIsDisputed'
--
-- * 'paThoroughfareNumber'
--
-- * 'paDependentLocalityName'
--
-- * 'paFirmName'
--
-- * 'paCountryName'
--
-- * 'paDependentThoroughfareName'
--
-- * 'paAddressLines'
--
-- * 'paPostalCodeNumber'
--
-- * 'paThoroughfareName'
--
-- * 'paSubPremiseName'
postalAddress
    :: PostalAddress
postalAddress =
    PostalAddress'
    { _paAdministrativeAreaName = Nothing
    , _paRecipientName = Nothing
    , _paLanguageCode = Nothing
    , _paSortingCode = Nothing
    , _paPremiseName = Nothing
    , _paPostalCodeNumberExtension = Nothing
    , _paCountryNameCode = Nothing
    , _paSubAdministrativeAreaName = Nothing
    , _paPostBoxNumber = Nothing
    , _paLocalityName = Nothing
    , _paIsDisputed = Nothing
    , _paThoroughfareNumber = Nothing
    , _paDependentLocalityName = Nothing
    , _paFirmName = Nothing
    , _paCountryName = Nothing
    , _paDependentThoroughfareName = Nothing
    , _paAddressLines = Nothing
    , _paPostalCodeNumber = Nothing
    , _paThoroughfareName = Nothing
    , _paSubPremiseName = Nothing
    }

paAdministrativeAreaName :: Lens' PostalAddress (Maybe Text)
paAdministrativeAreaName
  = lens _paAdministrativeAreaName
      (\ s a -> s{_paAdministrativeAreaName = a})

paRecipientName :: Lens' PostalAddress (Maybe Text)
paRecipientName
  = lens _paRecipientName
      (\ s a -> s{_paRecipientName = a})

paLanguageCode :: Lens' PostalAddress (Maybe Text)
paLanguageCode
  = lens _paLanguageCode
      (\ s a -> s{_paLanguageCode = a})

paSortingCode :: Lens' PostalAddress (Maybe Text)
paSortingCode
  = lens _paSortingCode
      (\ s a -> s{_paSortingCode = a})

paPremiseName :: Lens' PostalAddress (Maybe Text)
paPremiseName
  = lens _paPremiseName
      (\ s a -> s{_paPremiseName = a})

paPostalCodeNumberExtension :: Lens' PostalAddress (Maybe Text)
paPostalCodeNumberExtension
  = lens _paPostalCodeNumberExtension
      (\ s a -> s{_paPostalCodeNumberExtension = a})

paCountryNameCode :: Lens' PostalAddress (Maybe Text)
paCountryNameCode
  = lens _paCountryNameCode
      (\ s a -> s{_paCountryNameCode = a})

paSubAdministrativeAreaName :: Lens' PostalAddress (Maybe Text)
paSubAdministrativeAreaName
  = lens _paSubAdministrativeAreaName
      (\ s a -> s{_paSubAdministrativeAreaName = a})

paPostBoxNumber :: Lens' PostalAddress (Maybe Text)
paPostBoxNumber
  = lens _paPostBoxNumber
      (\ s a -> s{_paPostBoxNumber = a})

paLocalityName :: Lens' PostalAddress (Maybe Text)
paLocalityName
  = lens _paLocalityName
      (\ s a -> s{_paLocalityName = a})

paIsDisputed :: Lens' PostalAddress (Maybe Bool)
paIsDisputed
  = lens _paIsDisputed (\ s a -> s{_paIsDisputed = a})

paThoroughfareNumber :: Lens' PostalAddress (Maybe Text)
paThoroughfareNumber
  = lens _paThoroughfareNumber
      (\ s a -> s{_paThoroughfareNumber = a})

paDependentLocalityName :: Lens' PostalAddress (Maybe Text)
paDependentLocalityName
  = lens _paDependentLocalityName
      (\ s a -> s{_paDependentLocalityName = a})

paFirmName :: Lens' PostalAddress (Maybe Text)
paFirmName
  = lens _paFirmName (\ s a -> s{_paFirmName = a})

paCountryName :: Lens' PostalAddress (Maybe Text)
paCountryName
  = lens _paCountryName
      (\ s a -> s{_paCountryName = a})

paDependentThoroughfareName :: Lens' PostalAddress (Maybe Text)
paDependentThoroughfareName
  = lens _paDependentThoroughfareName
      (\ s a -> s{_paDependentThoroughfareName = a})

paAddressLines :: Lens' PostalAddress [Text]
paAddressLines
  = lens _paAddressLines
      (\ s a -> s{_paAddressLines = a})
      . _Default
      . _Coerce

paPostalCodeNumber :: Lens' PostalAddress (Maybe Text)
paPostalCodeNumber
  = lens _paPostalCodeNumber
      (\ s a -> s{_paPostalCodeNumber = a})

paThoroughfareName :: Lens' PostalAddress (Maybe Text)
paThoroughfareName
  = lens _paThoroughfareName
      (\ s a -> s{_paThoroughfareName = a})

paSubPremiseName :: Lens' PostalAddress (Maybe Text)
paSubPremiseName
  = lens _paSubPremiseName
      (\ s a -> s{_paSubPremiseName = a})

instance FromJSON PostalAddress where
        parseJSON
          = withObject "PostalAddress"
              (\ o ->
                 PostalAddress' <$>
                   (o .:? "administrativeAreaName") <*>
                     (o .:? "recipientName")
                     <*> (o .:? "languageCode")
                     <*> (o .:? "sortingCode")
                     <*> (o .:? "premiseName")
                     <*> (o .:? "postalCodeNumberExtension")
                     <*> (o .:? "countryNameCode")
                     <*> (o .:? "subAdministrativeAreaName")
                     <*> (o .:? "postBoxNumber")
                     <*> (o .:? "localityName")
                     <*> (o .:? "isDisputed")
                     <*> (o .:? "thoroughfareNumber")
                     <*> (o .:? "dependentLocalityName")
                     <*> (o .:? "firmName")
                     <*> (o .:? "countryName")
                     <*> (o .:? "dependentThoroughfareName")
                     <*> (o .:? "addressLines" .!= mempty)
                     <*> (o .:? "postalCodeNumber")
                     <*> (o .:? "thoroughfareName")
                     <*> (o .:? "subPremiseName"))

instance ToJSON PostalAddress where
        toJSON PostalAddress'{..}
          = object
              (catMaybes
                 [("administrativeAreaName" .=) <$>
                    _paAdministrativeAreaName,
                  ("recipientName" .=) <$> _paRecipientName,
                  ("languageCode" .=) <$> _paLanguageCode,
                  ("sortingCode" .=) <$> _paSortingCode,
                  ("premiseName" .=) <$> _paPremiseName,
                  ("postalCodeNumberExtension" .=) <$>
                    _paPostalCodeNumberExtension,
                  ("countryNameCode" .=) <$> _paCountryNameCode,
                  ("subAdministrativeAreaName" .=) <$>
                    _paSubAdministrativeAreaName,
                  ("postBoxNumber" .=) <$> _paPostBoxNumber,
                  ("localityName" .=) <$> _paLocalityName,
                  ("isDisputed" .=) <$> _paIsDisputed,
                  ("thoroughfareNumber" .=) <$> _paThoroughfareNumber,
                  ("dependentLocalityName" .=) <$>
                    _paDependentLocalityName,
                  ("firmName" .=) <$> _paFirmName,
                  ("countryName" .=) <$> _paCountryName,
                  ("dependentThoroughfareName" .=) <$>
                    _paDependentThoroughfareName,
                  ("addressLines" .=) <$> _paAddressLines,
                  ("postalCodeNumber" .=) <$> _paPostalCodeNumber,
                  ("thoroughfareName" .=) <$> _paThoroughfareName,
                  ("subPremiseName" .=) <$> _paSubPremiseName])

--
-- /See:/ 'internalFieldMetadataProto' smart constructor.
data InternalFieldMetadataProto = InternalFieldMetadataProto'
    { _ifmpSourceSummary :: !(Maybe InternalSourceSummaryProto)
    , _ifmpIsAuto        :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InternalFieldMetadataProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifmpSourceSummary'
--
-- * 'ifmpIsAuto'
internalFieldMetadataProto
    :: InternalFieldMetadataProto
internalFieldMetadataProto =
    InternalFieldMetadataProto'
    { _ifmpSourceSummary = Nothing
    , _ifmpIsAuto = Nothing
    }

ifmpSourceSummary :: Lens' InternalFieldMetadataProto (Maybe InternalSourceSummaryProto)
ifmpSourceSummary
  = lens _ifmpSourceSummary
      (\ s a -> s{_ifmpSourceSummary = a})

ifmpIsAuto :: Lens' InternalFieldMetadataProto (Maybe Bool)
ifmpIsAuto
  = lens _ifmpIsAuto (\ s a -> s{_ifmpIsAuto = a})

instance FromJSON InternalFieldMetadataProto where
        parseJSON
          = withObject "InternalFieldMetadataProto"
              (\ o ->
                 InternalFieldMetadataProto' <$>
                   (o .:? "sourceSummary") <*> (o .:? "isAuto"))

instance ToJSON InternalFieldMetadataProto where
        toJSON InternalFieldMetadataProto'{..}
          = object
              (catMaybes
                 [("sourceSummary" .=) <$> _ifmpSourceSummary,
                  ("isAuto" .=) <$> _ifmpIsAuto])

-- | Describes information about a regional election administrative area.
--
-- /See:/ 'administrationRegion' smart constructor.
data AdministrationRegion = AdministrationRegion'
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
    AdministrationRegion'
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
                 AdministrationRegion' <$>
                   (o .:? "local_jurisdiction") <*>
                     (o .:? "sources" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "electionAdministrationBody")
                     <*> (o .:? "id"))

instance ToJSON AdministrationRegion where
        toJSON AdministrationRegion'{..}
          = object
              (catMaybes
                 [("local_jurisdiction" .=) <$> _arLocalJurisdiction,
                  ("sources" .=) <$> _arSources,
                  ("name" .=) <$> _arName,
                  ("electionAdministrationBody" .=) <$>
                    _arElectionAdministrationBody,
                  ("id" .=) <$> _arId])

--
-- /See:/ 'provenance' smart constructor.
data Provenance = Provenance'
    { _pTsStreetSegmentId     :: !(Maybe Text)
    , _pVIPStreetSegmentId    :: !(Maybe (Textual Int64))
    , _pCollidedSegmentSource :: !(Maybe StreetSegmentList)
    , _pCtclContestUuid       :: !(Maybe Text)
    , _pDataSetId             :: !(Maybe (Textual Int64))
    , _pVIP5StreetSegmentId   :: !(Maybe Text)
    , _pCtclOfficeUuid        :: !(Maybe Text)
    , _pVIP5PrecinctId        :: !(Maybe Text)
    , _pPrecinctSplitId       :: !(Maybe (Textual Int64))
    , _pPrecinctId            :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Provenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pTsStreetSegmentId'
--
-- * 'pVIPStreetSegmentId'
--
-- * 'pCollidedSegmentSource'
--
-- * 'pCtclContestUuid'
--
-- * 'pDataSetId'
--
-- * 'pVIP5StreetSegmentId'
--
-- * 'pCtclOfficeUuid'
--
-- * 'pVIP5PrecinctId'
--
-- * 'pPrecinctSplitId'
--
-- * 'pPrecinctId'
provenance
    :: Provenance
provenance =
    Provenance'
    { _pTsStreetSegmentId = Nothing
    , _pVIPStreetSegmentId = Nothing
    , _pCollidedSegmentSource = Nothing
    , _pCtclContestUuid = Nothing
    , _pDataSetId = Nothing
    , _pVIP5StreetSegmentId = Nothing
    , _pCtclOfficeUuid = Nothing
    , _pVIP5PrecinctId = Nothing
    , _pPrecinctSplitId = Nothing
    , _pPrecinctId = Nothing
    }

pTsStreetSegmentId :: Lens' Provenance (Maybe Text)
pTsStreetSegmentId
  = lens _pTsStreetSegmentId
      (\ s a -> s{_pTsStreetSegmentId = a})

pVIPStreetSegmentId :: Lens' Provenance (Maybe Int64)
pVIPStreetSegmentId
  = lens _pVIPStreetSegmentId
      (\ s a -> s{_pVIPStreetSegmentId = a})
      . mapping _Coerce

pCollidedSegmentSource :: Lens' Provenance (Maybe StreetSegmentList)
pCollidedSegmentSource
  = lens _pCollidedSegmentSource
      (\ s a -> s{_pCollidedSegmentSource = a})

pCtclContestUuid :: Lens' Provenance (Maybe Text)
pCtclContestUuid
  = lens _pCtclContestUuid
      (\ s a -> s{_pCtclContestUuid = a})

pDataSetId :: Lens' Provenance (Maybe Int64)
pDataSetId
  = lens _pDataSetId (\ s a -> s{_pDataSetId = a}) .
      mapping _Coerce

pVIP5StreetSegmentId :: Lens' Provenance (Maybe Text)
pVIP5StreetSegmentId
  = lens _pVIP5StreetSegmentId
      (\ s a -> s{_pVIP5StreetSegmentId = a})

pCtclOfficeUuid :: Lens' Provenance (Maybe Text)
pCtclOfficeUuid
  = lens _pCtclOfficeUuid
      (\ s a -> s{_pCtclOfficeUuid = a})

pVIP5PrecinctId :: Lens' Provenance (Maybe Text)
pVIP5PrecinctId
  = lens _pVIP5PrecinctId
      (\ s a -> s{_pVIP5PrecinctId = a})

pPrecinctSplitId :: Lens' Provenance (Maybe Int64)
pPrecinctSplitId
  = lens _pPrecinctSplitId
      (\ s a -> s{_pPrecinctSplitId = a})
      . mapping _Coerce

pPrecinctId :: Lens' Provenance (Maybe Int64)
pPrecinctId
  = lens _pPrecinctId (\ s a -> s{_pPrecinctId = a}) .
      mapping _Coerce

instance FromJSON Provenance where
        parseJSON
          = withObject "Provenance"
              (\ o ->
                 Provenance' <$>
                   (o .:? "tsStreetSegmentId") <*>
                     (o .:? "vipStreetSegmentId")
                     <*> (o .:? "collidedSegmentSource")
                     <*> (o .:? "ctclContestUuid")
                     <*> (o .:? "datasetId")
                     <*> (o .:? "vip5StreetSegmentId")
                     <*> (o .:? "ctclOfficeUuid")
                     <*> (o .:? "vip5PrecinctId")
                     <*> (o .:? "precinctSplitId")
                     <*> (o .:? "precinctId"))

instance ToJSON Provenance where
        toJSON Provenance'{..}
          = object
              (catMaybes
                 [("tsStreetSegmentId" .=) <$> _pTsStreetSegmentId,
                  ("vipStreetSegmentId" .=) <$> _pVIPStreetSegmentId,
                  ("collidedSegmentSource" .=) <$>
                    _pCollidedSegmentSource,
                  ("ctclContestUuid" .=) <$> _pCtclContestUuid,
                  ("datasetId" .=) <$> _pDataSetId,
                  ("vip5StreetSegmentId" .=) <$> _pVIP5StreetSegmentId,
                  ("ctclOfficeUuid" .=) <$> _pCtclOfficeUuid,
                  ("vip5PrecinctId" .=) <$> _pVIP5PrecinctId,
                  ("precinctSplitId" .=) <$> _pPrecinctSplitId,
                  ("precinctId" .=) <$> _pPrecinctId])

-- | The list of elections available for this version of the API.
--
-- /See:/ 'electionsQueryResponse' smart constructor.
data ElectionsQueryResponse = ElectionsQueryResponse'
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
    ElectionsQueryResponse'
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
                 ElectionsQueryResponse' <$>
                   (o .:? "kind" .!= "civicinfo#electionsQueryResponse")
                     <*> (o .:? "elections" .!= mempty))

instance ToJSON ElectionsQueryResponse where
        toJSON ElectionsQueryResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eqrKind),
                  ("elections" .=) <$> _eqrElections])

-- | Information about a person holding an elected office.
--
-- /See:/ 'official' smart constructor.
data Official = Official'
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
    Official'
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
                 Official' <$>
                   (o .:? "photoUrl") <*> (o .:? "urls" .!= mempty) <*>
                     (o .:? "channels" .!= mempty)
                     <*> (o .:? "address" .!= mempty)
                     <*> (o .:? "phones" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "emails" .!= mempty)
                     <*> (o .:? "party"))

instance ToJSON Official where
        toJSON Official'{..}
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
