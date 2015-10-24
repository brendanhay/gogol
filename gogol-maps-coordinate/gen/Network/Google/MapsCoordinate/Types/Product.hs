{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsCoordinate.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsCoordinate.Types.Product where

import           Network.Google.MapsCoordinate.Types.Sum
import           Network.Google.Prelude

-- | Response from a List Locations request.
--
-- /See:/ 'locationListResponse' smart constructor.
data LocationListResponse = LocationListResponse
    { _llrTokenPagination :: !(Maybe TokenPagination)
    , _llrNextPageToken   :: !(Maybe Text)
    , _llrKind            :: !Text
    , _llrItems           :: !(Maybe [LocationRecord])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrTokenPagination'
--
-- * 'llrNextPageToken'
--
-- * 'llrKind'
--
-- * 'llrItems'
locationListResponse
    :: LocationListResponse
locationListResponse =
    LocationListResponse
    { _llrTokenPagination = Nothing
    , _llrNextPageToken = Nothing
    , _llrKind = "coordinate#locationList"
    , _llrItems = Nothing
    }

-- | Pagination information for token pagination.
llrTokenPagination :: Lens' LocationListResponse (Maybe TokenPagination)
llrTokenPagination
  = lens _llrTokenPagination
      (\ s a -> s{_llrTokenPagination = a})

-- | A token to provide to get the next page of results.
llrNextPageToken :: Lens' LocationListResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | Identifies this object as a list of locations.
llrKind :: Lens' LocationListResponse Text
llrKind = lens _llrKind (\ s a -> s{_llrKind = a})

-- | Locations in the collection.
llrItems :: Lens' LocationListResponse [LocationRecord]
llrItems
  = lens _llrItems (\ s a -> s{_llrItems = a}) .
      _Default
      . _Coerce

instance FromJSON LocationListResponse where
        parseJSON
          = withObject "LocationListResponse"
              (\ o ->
                 LocationListResponse <$>
                   (o .:? "tokenPagination") <*> (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "coordinate#locationList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON LocationListResponse where
        toJSON LocationListResponse{..}
          = object
              (catMaybes
                 [("tokenPagination" .=) <$> _llrTokenPagination,
                  ("nextPageToken" .=) <$> _llrNextPageToken,
                  Just ("kind" .= _llrKind),
                  ("items" .=) <$> _llrItems])

-- | Pagination information.
--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination = TokenPagination
    { _tpNextPageToken     :: !(Maybe Text)
    , _tpKind              :: !Text
    , _tpPreviousPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpNextPageToken'
--
-- * 'tpKind'
--
-- * 'tpPreviousPageToken'
tokenPagination
    :: TokenPagination
tokenPagination =
    TokenPagination
    { _tpNextPageToken = Nothing
    , _tpKind = "coordinate#tokenPagination"
    , _tpPreviousPageToken = Nothing
    }

-- | A token to provide to get the next page of results.
tpNextPageToken :: Lens' TokenPagination (Maybe Text)
tpNextPageToken
  = lens _tpNextPageToken
      (\ s a -> s{_tpNextPageToken = a})

-- | Identifies this object as pagination information.
tpKind :: Lens' TokenPagination Text
tpKind = lens _tpKind (\ s a -> s{_tpKind = a})

-- | A token to provide to get the previous page of results.
tpPreviousPageToken :: Lens' TokenPagination (Maybe Text)
tpPreviousPageToken
  = lens _tpPreviousPageToken
      (\ s a -> s{_tpPreviousPageToken = a})

instance FromJSON TokenPagination where
        parseJSON
          = withObject "TokenPagination"
              (\ o ->
                 TokenPagination <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "coordinate#tokenPagination")
                     <*> (o .:? "previousPageToken"))

instance ToJSON TokenPagination where
        toJSON TokenPagination{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tpNextPageToken,
                  Just ("kind" .= _tpKind),
                  ("previousPageToken" .=) <$> _tpPreviousPageToken])

-- | Response from a List Workers request.
--
-- /See:/ 'workerListResponse' smart constructor.
data WorkerListResponse = WorkerListResponse
    { _wlrKind  :: !Text
    , _wlrItems :: !(Maybe [Worker])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlrKind'
--
-- * 'wlrItems'
workerListResponse
    :: WorkerListResponse
workerListResponse =
    WorkerListResponse
    { _wlrKind = "coordinate#workerList"
    , _wlrItems = Nothing
    }

-- | Identifies this object as a list of workers.
wlrKind :: Lens' WorkerListResponse Text
wlrKind = lens _wlrKind (\ s a -> s{_wlrKind = a})

-- | Workers in the collection.
wlrItems :: Lens' WorkerListResponse [Worker]
wlrItems
  = lens _wlrItems (\ s a -> s{_wlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON WorkerListResponse where
        parseJSON
          = withObject "WorkerListResponse"
              (\ o ->
                 WorkerListResponse <$>
                   (o .:? "kind" .!= "coordinate#workerList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON WorkerListResponse where
        toJSON WorkerListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _wlrKind),
                  ("items" .=) <$> _wlrItems])

-- | Job schedule.
--
-- /See:/ 'schedule' smart constructor.
data Schedule = Schedule
    { _sAllDay    :: !(Maybe Bool)
    , _sStartTime :: !(Maybe (Textual Word64))
    , _sKind      :: !Text
    , _sEndTime   :: !(Maybe (Textual Word64))
    , _sDuration  :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAllDay'
--
-- * 'sStartTime'
--
-- * 'sKind'
--
-- * 'sEndTime'
--
-- * 'sDuration'
schedule
    :: Schedule
schedule =
    Schedule
    { _sAllDay = Nothing
    , _sStartTime = Nothing
    , _sKind = "coordinate#schedule"
    , _sEndTime = Nothing
    , _sDuration = Nothing
    }

-- | Whether the job is scheduled for the whole day. Time of day in
-- start\/end times is ignored if this is true.
sAllDay :: Lens' Schedule (Maybe Bool)
sAllDay = lens _sAllDay (\ s a -> s{_sAllDay = a})

-- | Scheduled start time in milliseconds since epoch.
sStartTime :: Lens' Schedule (Maybe Word64)
sStartTime
  = lens _sStartTime (\ s a -> s{_sStartTime = a}) .
      mapping _Coerce

-- | Identifies this object as a job schedule.
sKind :: Lens' Schedule Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | Scheduled end time in milliseconds since epoch.
sEndTime :: Lens' Schedule (Maybe Word64)
sEndTime
  = lens _sEndTime (\ s a -> s{_sEndTime = a}) .
      mapping _Coerce

-- | Job duration in milliseconds.
sDuration :: Lens' Schedule (Maybe Word64)
sDuration
  = lens _sDuration (\ s a -> s{_sDuration = a}) .
      mapping _Coerce

instance FromJSON Schedule where
        parseJSON
          = withObject "Schedule"
              (\ o ->
                 Schedule <$>
                   (o .:? "allDay") <*> (o .:? "startTime") <*>
                     (o .:? "kind" .!= "coordinate#schedule")
                     <*> (o .:? "endTime")
                     <*> (o .:? "duration"))

instance ToJSON Schedule where
        toJSON Schedule{..}
          = object
              (catMaybes
                 [("allDay" .=) <$> _sAllDay,
                  ("startTime" .=) <$> _sStartTime,
                  Just ("kind" .= _sKind),
                  ("endTime" .=) <$> _sEndTime,
                  ("duration" .=) <$> _sDuration])

-- | Location of a job.
--
-- /See:/ 'location' smart constructor.
data Location = Location
    { _lAddressLine :: !(Maybe [Text])
    , _lKind        :: !Text
    , _lLat         :: !(Maybe (Textual Double))
    , _lLng         :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAddressLine'
--
-- * 'lKind'
--
-- * 'lLat'
--
-- * 'lLng'
location
    :: Location
location =
    Location
    { _lAddressLine = Nothing
    , _lKind = "coordinate#location"
    , _lLat = Nothing
    , _lLng = Nothing
    }

-- | Address.
lAddressLine :: Lens' Location [Text]
lAddressLine
  = lens _lAddressLine (\ s a -> s{_lAddressLine = a})
      . _Default
      . _Coerce

-- | Identifies this object as a location.
lKind :: Lens' Location Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | Latitude.
lLat :: Lens' Location (Maybe Double)
lLat
  = lens _lLat (\ s a -> s{_lLat = a}) .
      mapping _Coerce

-- | Longitude.
lLng :: Lens' Location (Maybe Double)
lLng
  = lens _lLng (\ s a -> s{_lLng = a}) .
      mapping _Coerce

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location <$>
                   (o .:? "addressLine" .!= mempty) <*>
                     (o .:? "kind" .!= "coordinate#location")
                     <*> (o .:? "lat")
                     <*> (o .:? "lng"))

instance ToJSON Location where
        toJSON Location{..}
          = object
              (catMaybes
                 [("addressLine" .=) <$> _lAddressLine,
                  Just ("kind" .= _lKind), ("lat" .=) <$> _lLat,
                  ("lng" .=) <$> _lLng])

-- | Current state of a job.
--
-- /See:/ 'jobState' smart constructor.
data JobState = JobState
    { _jsLocation            :: !(Maybe Location)
    , _jsProgress            :: !(Maybe Text)
    , _jsNote                :: !(Maybe [Text])
    , _jsKind                :: !Text
    , _jsCustomerPhoneNumber :: !(Maybe Text)
    , _jsCustomerName        :: !(Maybe Text)
    , _jsAssignee            :: !(Maybe Text)
    , _jsCustomFields        :: !(Maybe CustomFields)
    , _jsTitle               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsLocation'
--
-- * 'jsProgress'
--
-- * 'jsNote'
--
-- * 'jsKind'
--
-- * 'jsCustomerPhoneNumber'
--
-- * 'jsCustomerName'
--
-- * 'jsAssignee'
--
-- * 'jsCustomFields'
--
-- * 'jsTitle'
jobState
    :: JobState
jobState =
    JobState
    { _jsLocation = Nothing
    , _jsProgress = Nothing
    , _jsNote = Nothing
    , _jsKind = "coordinate#jobState"
    , _jsCustomerPhoneNumber = Nothing
    , _jsCustomerName = Nothing
    , _jsAssignee = Nothing
    , _jsCustomFields = Nothing
    , _jsTitle = Nothing
    }

-- | Job location.
jsLocation :: Lens' JobState (Maybe Location)
jsLocation
  = lens _jsLocation (\ s a -> s{_jsLocation = a})

-- | Job progress.
jsProgress :: Lens' JobState (Maybe Text)
jsProgress
  = lens _jsProgress (\ s a -> s{_jsProgress = a})

-- | Note added to the job.
jsNote :: Lens' JobState [Text]
jsNote
  = lens _jsNote (\ s a -> s{_jsNote = a}) . _Default .
      _Coerce

-- | Identifies this object as a job state.
jsKind :: Lens' JobState Text
jsKind = lens _jsKind (\ s a -> s{_jsKind = a})

-- | Customer phone number.
jsCustomerPhoneNumber :: Lens' JobState (Maybe Text)
jsCustomerPhoneNumber
  = lens _jsCustomerPhoneNumber
      (\ s a -> s{_jsCustomerPhoneNumber = a})

-- | Customer name.
jsCustomerName :: Lens' JobState (Maybe Text)
jsCustomerName
  = lens _jsCustomerName
      (\ s a -> s{_jsCustomerName = a})

-- | Email address of the assignee, or the string \"DELETED_USER\" if the
-- account is no longer available.
jsAssignee :: Lens' JobState (Maybe Text)
jsAssignee
  = lens _jsAssignee (\ s a -> s{_jsAssignee = a})

-- | Custom fields.
jsCustomFields :: Lens' JobState (Maybe CustomFields)
jsCustomFields
  = lens _jsCustomFields
      (\ s a -> s{_jsCustomFields = a})

-- | Job title.
jsTitle :: Lens' JobState (Maybe Text)
jsTitle = lens _jsTitle (\ s a -> s{_jsTitle = a})

instance FromJSON JobState where
        parseJSON
          = withObject "JobState"
              (\ o ->
                 JobState <$>
                   (o .:? "location") <*> (o .:? "progress") <*>
                     (o .:? "note" .!= mempty)
                     <*> (o .:? "kind" .!= "coordinate#jobState")
                     <*> (o .:? "customerPhoneNumber")
                     <*> (o .:? "customerName")
                     <*> (o .:? "assignee")
                     <*> (o .:? "customFields")
                     <*> (o .:? "title"))

instance ToJSON JobState where
        toJSON JobState{..}
          = object
              (catMaybes
                 [("location" .=) <$> _jsLocation,
                  ("progress" .=) <$> _jsProgress,
                  ("note" .=) <$> _jsNote, Just ("kind" .= _jsKind),
                  ("customerPhoneNumber" .=) <$>
                    _jsCustomerPhoneNumber,
                  ("customerName" .=) <$> _jsCustomerName,
                  ("assignee" .=) <$> _jsAssignee,
                  ("customFields" .=) <$> _jsCustomFields,
                  ("title" .=) <$> _jsTitle])

-- | Custom field definition.
--
-- /See:/ 'customFieldDef' smart constructor.
data CustomFieldDef = CustomFieldDef
    { _cfdEnabled             :: !(Maybe Bool)
    , _cfdKind                :: !Text
    , _cfdName                :: !(Maybe Text)
    , _cfdRequiredForCheckout :: !(Maybe Bool)
    , _cfdId                  :: !(Maybe (Textual Int64))
    , _cfdEnumitems           :: !(Maybe [EnumItemDef])
    , _cfdType                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomFieldDef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdEnabled'
--
-- * 'cfdKind'
--
-- * 'cfdName'
--
-- * 'cfdRequiredForCheckout'
--
-- * 'cfdId'
--
-- * 'cfdEnumitems'
--
-- * 'cfdType'
customFieldDef
    :: CustomFieldDef
customFieldDef =
    CustomFieldDef
    { _cfdEnabled = Nothing
    , _cfdKind = "coordinate#customFieldDef"
    , _cfdName = Nothing
    , _cfdRequiredForCheckout = Nothing
    , _cfdId = Nothing
    , _cfdEnumitems = Nothing
    , _cfdType = Nothing
    }

-- | Whether the field is enabled.
cfdEnabled :: Lens' CustomFieldDef (Maybe Bool)
cfdEnabled
  = lens _cfdEnabled (\ s a -> s{_cfdEnabled = a})

-- | Identifies this object as a custom field definition.
cfdKind :: Lens' CustomFieldDef Text
cfdKind = lens _cfdKind (\ s a -> s{_cfdKind = a})

-- | Custom field name.
cfdName :: Lens' CustomFieldDef (Maybe Text)
cfdName = lens _cfdName (\ s a -> s{_cfdName = a})

-- | Whether the field is required for checkout.
cfdRequiredForCheckout :: Lens' CustomFieldDef (Maybe Bool)
cfdRequiredForCheckout
  = lens _cfdRequiredForCheckout
      (\ s a -> s{_cfdRequiredForCheckout = a})

-- | Custom field id.
cfdId :: Lens' CustomFieldDef (Maybe Int64)
cfdId
  = lens _cfdId (\ s a -> s{_cfdId = a}) .
      mapping _Coerce

-- | List of enum items for this custom field. Populated only if the field
-- type is enum. Enum fields appear as \'lists\' in the Coordinate web and
-- mobile UI.
cfdEnumitems :: Lens' CustomFieldDef [EnumItemDef]
cfdEnumitems
  = lens _cfdEnumitems (\ s a -> s{_cfdEnumitems = a})
      . _Default
      . _Coerce

-- | Custom field type.
cfdType :: Lens' CustomFieldDef (Maybe Text)
cfdType = lens _cfdType (\ s a -> s{_cfdType = a})

instance FromJSON CustomFieldDef where
        parseJSON
          = withObject "CustomFieldDef"
              (\ o ->
                 CustomFieldDef <$>
                   (o .:? "enabled") <*>
                     (o .:? "kind" .!= "coordinate#customFieldDef")
                     <*> (o .:? "name")
                     <*> (o .:? "requiredForCheckout")
                     <*> (o .:? "id")
                     <*> (o .:? "enumitems" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON CustomFieldDef where
        toJSON CustomFieldDef{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _cfdEnabled,
                  Just ("kind" .= _cfdKind), ("name" .=) <$> _cfdName,
                  ("requiredForCheckout" .=) <$>
                    _cfdRequiredForCheckout,
                  ("id" .=) <$> _cfdId,
                  ("enumitems" .=) <$> _cfdEnumitems,
                  ("type" .=) <$> _cfdType])

-- | Response from a List Jobs request.
--
-- /See:/ 'jobListResponse' smart constructor.
data JobListResponse = JobListResponse
    { _jlrNextPageToken :: !(Maybe Text)
    , _jlrKind          :: !Text
    , _jlrItems         :: !(Maybe [Job])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlrNextPageToken'
--
-- * 'jlrKind'
--
-- * 'jlrItems'
jobListResponse
    :: JobListResponse
jobListResponse =
    JobListResponse
    { _jlrNextPageToken = Nothing
    , _jlrKind = "coordinate#jobList"
    , _jlrItems = Nothing
    }

-- | A token to provide to get the next page of results.
jlrNextPageToken :: Lens' JobListResponse (Maybe Text)
jlrNextPageToken
  = lens _jlrNextPageToken
      (\ s a -> s{_jlrNextPageToken = a})

-- | Identifies this object as a list of jobs.
jlrKind :: Lens' JobListResponse Text
jlrKind = lens _jlrKind (\ s a -> s{_jlrKind = a})

-- | Jobs in the collection.
jlrItems :: Lens' JobListResponse [Job]
jlrItems
  = lens _jlrItems (\ s a -> s{_jlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON JobListResponse where
        parseJSON
          = withObject "JobListResponse"
              (\ o ->
                 JobListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "coordinate#jobList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON JobListResponse where
        toJSON JobListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _jlrNextPageToken,
                  Just ("kind" .= _jlrKind),
                  ("items" .=) <$> _jlrItems])

-- | Change to a job. For example assigning the job to a different worker.
--
-- /See:/ 'jobChange' smart constructor.
data JobChange = JobChange
    { _jcState     :: !(Maybe JobState)
    , _jcKind      :: !Text
    , _jcTimestamp :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcState'
--
-- * 'jcKind'
--
-- * 'jcTimestamp'
jobChange
    :: JobChange
jobChange =
    JobChange
    { _jcState = Nothing
    , _jcKind = "coordinate#jobChange"
    , _jcTimestamp = Nothing
    }

-- | Change applied to the job. Only the fields that were changed are set.
jcState :: Lens' JobChange (Maybe JobState)
jcState = lens _jcState (\ s a -> s{_jcState = a})

-- | Identifies this object as a job change.
jcKind :: Lens' JobChange Text
jcKind = lens _jcKind (\ s a -> s{_jcKind = a})

-- | Time at which this change was applied.
jcTimestamp :: Lens' JobChange (Maybe Word64)
jcTimestamp
  = lens _jcTimestamp (\ s a -> s{_jcTimestamp = a}) .
      mapping _Coerce

instance FromJSON JobChange where
        parseJSON
          = withObject "JobChange"
              (\ o ->
                 JobChange <$>
                   (o .:? "state") <*>
                     (o .:? "kind" .!= "coordinate#jobChange")
                     <*> (o .:? "timestamp"))

instance ToJSON JobChange where
        toJSON JobChange{..}
          = object
              (catMaybes
                 [("state" .=) <$> _jcState, Just ("kind" .= _jcKind),
                  ("timestamp" .=) <$> _jcTimestamp])

-- | Response from a List Teams request.
--
-- /See:/ 'teamListResponse' smart constructor.
data TeamListResponse = TeamListResponse
    { _tlrKind  :: !Text
    , _tlrItems :: !(Maybe [Team])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TeamListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlrKind'
--
-- * 'tlrItems'
teamListResponse
    :: TeamListResponse
teamListResponse =
    TeamListResponse
    { _tlrKind = "coordinate#teamList"
    , _tlrItems = Nothing
    }

-- | Identifies this object as a list of teams.
tlrKind :: Lens' TeamListResponse Text
tlrKind = lens _tlrKind (\ s a -> s{_tlrKind = a})

-- | Teams in the collection.
tlrItems :: Lens' TeamListResponse [Team]
tlrItems
  = lens _tlrItems (\ s a -> s{_tlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON TeamListResponse where
        parseJSON
          = withObject "TeamListResponse"
              (\ o ->
                 TeamListResponse <$>
                   (o .:? "kind" .!= "coordinate#teamList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON TeamListResponse where
        toJSON TeamListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tlrKind),
                  ("items" .=) <$> _tlrItems])

-- | Collection of custom field definitions for a team.
--
-- /See:/ 'customFieldDefListResponse' smart constructor.
data CustomFieldDefListResponse = CustomFieldDefListResponse
    { _cfdlrKind  :: !Text
    , _cfdlrItems :: !(Maybe [CustomFieldDef])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomFieldDefListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdlrKind'
--
-- * 'cfdlrItems'
customFieldDefListResponse
    :: CustomFieldDefListResponse
customFieldDefListResponse =
    CustomFieldDefListResponse
    { _cfdlrKind = "coordinate#customFieldDefList"
    , _cfdlrItems = Nothing
    }

-- | Identifies this object as a collection of custom field definitions in a
-- team.
cfdlrKind :: Lens' CustomFieldDefListResponse Text
cfdlrKind
  = lens _cfdlrKind (\ s a -> s{_cfdlrKind = a})

-- | Collection of custom field definitions in a team.
cfdlrItems :: Lens' CustomFieldDefListResponse [CustomFieldDef]
cfdlrItems
  = lens _cfdlrItems (\ s a -> s{_cfdlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON CustomFieldDefListResponse where
        parseJSON
          = withObject "CustomFieldDefListResponse"
              (\ o ->
                 CustomFieldDefListResponse <$>
                   (o .:? "kind" .!= "coordinate#customFieldDefList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CustomFieldDefListResponse where
        toJSON CustomFieldDefListResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cfdlrKind),
                  ("items" .=) <$> _cfdlrItems])

-- | A job.
--
-- /See:/ 'job' smart constructor.
data Job = Job
    { _jState     :: !(Maybe JobState)
    , _jKind      :: !Text
    , _jJobChange :: !(Maybe [JobChange])
    , _jId        :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jState'
--
-- * 'jKind'
--
-- * 'jJobChange'
--
-- * 'jId'
job
    :: Job
job =
    Job
    { _jState = Nothing
    , _jKind = "coordinate#job"
    , _jJobChange = Nothing
    , _jId = Nothing
    }

-- | Current job state.
jState :: Lens' Job (Maybe JobState)
jState = lens _jState (\ s a -> s{_jState = a})

-- | Identifies this object as a job.
jKind :: Lens' Job Text
jKind = lens _jKind (\ s a -> s{_jKind = a})

-- | List of job changes since it was created. The first change corresponds
-- to the state of the job when it was created.
jJobChange :: Lens' Job [JobChange]
jJobChange
  = lens _jJobChange (\ s a -> s{_jJobChange = a}) .
      _Default
      . _Coerce

-- | Job id.
jId :: Lens' Job (Maybe Word64)
jId
  = lens _jId (\ s a -> s{_jId = a}) . mapping _Coerce

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job <$>
                   (o .:? "state") <*>
                     (o .:? "kind" .!= "coordinate#job")
                     <*> (o .:? "jobChange" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON Job where
        toJSON Job{..}
          = object
              (catMaybes
                 [("state" .=) <$> _jState, Just ("kind" .= _jKind),
                  ("jobChange" .=) <$> _jJobChange,
                  ("id" .=) <$> _jId])

-- | Collection of custom fields.
--
-- /See:/ 'customFields' smart constructor.
data CustomFields = CustomFields
    { _cfKind        :: !Text
    , _cfCustomField :: !(Maybe [CustomField])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfKind'
--
-- * 'cfCustomField'
customFields
    :: CustomFields
customFields =
    CustomFields
    { _cfKind = "coordinate#customFields"
    , _cfCustomField = Nothing
    }

-- | Identifies this object as a collection of custom fields.
cfKind :: Lens' CustomFields Text
cfKind = lens _cfKind (\ s a -> s{_cfKind = a})

-- | Collection of custom fields.
cfCustomField :: Lens' CustomFields [CustomField]
cfCustomField
  = lens _cfCustomField
      (\ s a -> s{_cfCustomField = a})
      . _Default
      . _Coerce

instance FromJSON CustomFields where
        parseJSON
          = withObject "CustomFields"
              (\ o ->
                 CustomFields <$>
                   (o .:? "kind" .!= "coordinate#customFields") <*>
                     (o .:? "customField" .!= mempty))

instance ToJSON CustomFields where
        toJSON CustomFields{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cfKind),
                  ("customField" .=) <$> _cfCustomField])

-- | A Coordinate team.
--
-- /See:/ 'team' smart constructor.
data Team = Team
    { _tKind :: !Text
    , _tName :: !(Maybe Text)
    , _tId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Team' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tKind'
--
-- * 'tName'
--
-- * 'tId'
team
    :: Team
team =
    Team
    { _tKind = "coordinate#team"
    , _tName = Nothing
    , _tId = Nothing
    }

-- | Identifies this object as a team.
tKind :: Lens' Team Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | Team name
tName :: Lens' Team (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Team id, as found in a coordinate team url e.g.
-- https:\/\/coordinate.google.com\/f\/xyz where \"xyz\" is the team id.
tId :: Lens' Team (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

instance FromJSON Team where
        parseJSON
          = withObject "Team"
              (\ o ->
                 Team <$>
                   (o .:? "kind" .!= "coordinate#team") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Team where
        toJSON Team{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tKind), ("name" .=) <$> _tName,
                  ("id" .=) <$> _tId])

-- | Recorded location of a worker.
--
-- /See:/ 'locationRecord' smart constructor.
data LocationRecord = LocationRecord
    { _lrKind             :: !Text
    , _lrLatitude         :: !(Maybe (Textual Double))
    , _lrConfidenceRadius :: !(Maybe (Textual Double))
    , _lrLongitude        :: !(Maybe (Textual Double))
    , _lrCollectionTime   :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrKind'
--
-- * 'lrLatitude'
--
-- * 'lrConfidenceRadius'
--
-- * 'lrLongitude'
--
-- * 'lrCollectionTime'
locationRecord
    :: LocationRecord
locationRecord =
    LocationRecord
    { _lrKind = "coordinate#locationRecord"
    , _lrLatitude = Nothing
    , _lrConfidenceRadius = Nothing
    , _lrLongitude = Nothing
    , _lrCollectionTime = Nothing
    }

-- | Identifies this object as a location.
lrKind :: Lens' LocationRecord Text
lrKind = lens _lrKind (\ s a -> s{_lrKind = a})

-- | Latitude.
lrLatitude :: Lens' LocationRecord (Maybe Double)
lrLatitude
  = lens _lrLatitude (\ s a -> s{_lrLatitude = a}) .
      mapping _Coerce

-- | The location accuracy in meters. This is the radius of a 95% confidence
-- interval around the location measurement.
lrConfidenceRadius :: Lens' LocationRecord (Maybe Double)
lrConfidenceRadius
  = lens _lrConfidenceRadius
      (\ s a -> s{_lrConfidenceRadius = a})
      . mapping _Coerce

-- | Longitude.
lrLongitude :: Lens' LocationRecord (Maybe Double)
lrLongitude
  = lens _lrLongitude (\ s a -> s{_lrLongitude = a}) .
      mapping _Coerce

-- | The collection time in milliseconds since the epoch.
lrCollectionTime :: Lens' LocationRecord (Maybe Int64)
lrCollectionTime
  = lens _lrCollectionTime
      (\ s a -> s{_lrCollectionTime = a})
      . mapping _Coerce

instance FromJSON LocationRecord where
        parseJSON
          = withObject "LocationRecord"
              (\ o ->
                 LocationRecord <$>
                   (o .:? "kind" .!= "coordinate#locationRecord") <*>
                     (o .:? "latitude")
                     <*> (o .:? "confidenceRadius")
                     <*> (o .:? "longitude")
                     <*> (o .:? "collectionTime"))

instance ToJSON LocationRecord where
        toJSON LocationRecord{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lrKind),
                  ("latitude" .=) <$> _lrLatitude,
                  ("confidenceRadius" .=) <$> _lrConfidenceRadius,
                  ("longitude" .=) <$> _lrLongitude,
                  ("collectionTime" .=) <$> _lrCollectionTime])

-- | A worker in a Coordinate team.
--
-- /See:/ 'worker' smart constructor.
data Worker = Worker
    { _wKind :: !Text
    , _wId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Worker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wKind'
--
-- * 'wId'
worker
    :: Worker
worker =
    Worker
    { _wKind = "coordinate#worker"
    , _wId = Nothing
    }

-- | Identifies this object as a worker.
wKind :: Lens' Worker Text
wKind = lens _wKind (\ s a -> s{_wKind = a})

-- | Worker email address. If a worker has been deleted from your team, the
-- email address will appear as DELETED_USER.
wId :: Lens' Worker (Maybe Text)
wId = lens _wId (\ s a -> s{_wId = a})

instance FromJSON Worker where
        parseJSON
          = withObject "Worker"
              (\ o ->
                 Worker <$>
                   (o .:? "kind" .!= "coordinate#worker") <*>
                     (o .:? "id"))

instance ToJSON Worker where
        toJSON Worker{..}
          = object
              (catMaybes
                 [Just ("kind" .= _wKind), ("id" .=) <$> _wId])

-- | Custom field.
--
-- /See:/ 'customField' smart constructor.
data CustomField = CustomField
    { _cCustomFieldId :: !(Maybe (Textual Int64))
    , _cKind          :: !Text
    , _cValue         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCustomFieldId'
--
-- * 'cKind'
--
-- * 'cValue'
customField
    :: CustomField
customField =
    CustomField
    { _cCustomFieldId = Nothing
    , _cKind = "coordinate#customField"
    , _cValue = Nothing
    }

-- | Custom field id.
cCustomFieldId :: Lens' CustomField (Maybe Int64)
cCustomFieldId
  = lens _cCustomFieldId
      (\ s a -> s{_cCustomFieldId = a})
      . mapping _Coerce

-- | Identifies this object as a custom field.
cKind :: Lens' CustomField Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Custom field value.
cValue :: Lens' CustomField (Maybe Text)
cValue = lens _cValue (\ s a -> s{_cValue = a})

instance FromJSON CustomField where
        parseJSON
          = withObject "CustomField"
              (\ o ->
                 CustomField <$>
                   (o .:? "customFieldId") <*>
                     (o .:? "kind" .!= "coordinate#customField")
                     <*> (o .:? "value"))

instance ToJSON CustomField where
        toJSON CustomField{..}
          = object
              (catMaybes
                 [("customFieldId" .=) <$> _cCustomFieldId,
                  Just ("kind" .= _cKind), ("value" .=) <$> _cValue])

-- | Enum Item definition.
--
-- /See:/ 'enumItemDef' smart constructor.
data EnumItemDef = EnumItemDef
    { _eidKind   :: !Text
    , _eidValue  :: !(Maybe Text)
    , _eidActive :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnumItemDef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidKind'
--
-- * 'eidValue'
--
-- * 'eidActive'
enumItemDef
    :: EnumItemDef
enumItemDef =
    EnumItemDef
    { _eidKind = "coordinate#enumItemDef"
    , _eidValue = Nothing
    , _eidActive = Nothing
    }

-- | Identifies this object as an enum item definition.
eidKind :: Lens' EnumItemDef Text
eidKind = lens _eidKind (\ s a -> s{_eidKind = a})

-- | Custom field value.
eidValue :: Lens' EnumItemDef (Maybe Text)
eidValue = lens _eidValue (\ s a -> s{_eidValue = a})

-- | Whether the enum item is active. Jobs may contain inactive enum values;
-- however, setting an enum to an inactive value when creating or updating
-- a job will result in a 500 error.
eidActive :: Lens' EnumItemDef (Maybe Bool)
eidActive
  = lens _eidActive (\ s a -> s{_eidActive = a})

instance FromJSON EnumItemDef where
        parseJSON
          = withObject "EnumItemDef"
              (\ o ->
                 EnumItemDef <$>
                   (o .:? "kind" .!= "coordinate#enumItemDef") <*>
                     (o .:? "value")
                     <*> (o .:? "active"))

instance ToJSON EnumItemDef where
        toJSON EnumItemDef{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eidKind),
                  ("value" .=) <$> _eidValue,
                  ("active" .=) <$> _eidActive])
