{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Reports.Activities.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Push changes to activities
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @reports.activities.watch@.
module Network.Google.Resource.Reports.Activities.Watch
    (
    -- * REST Resource
      ActivitiesWatchResource

    -- * Creating a Request
    , activitiesWatch
    , ActivitiesWatch

    -- * Request Lenses
    , awStartTime
    , awFilters
    , awPayload
    , awCustomerId
    , awActorIPAddress
    , awEndTime
    , awApplicationName
    , awPageToken
    , awEventName
    , awUserKey
    , awMaxResults
    , awOrgUnitId
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @reports.activities.watch@ method which the
-- 'ActivitiesWatch' request conforms to.
type ActivitiesWatchResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "activity" :>
             "users" :>
               Capture "userKey" Text :>
                 "applications" :>
                   Capture "applicationName" Text :>
                     "watch" :>
                       QueryParam "startTime" Text :>
                         QueryParam "filters" Text :>
                           QueryParam "customerId" Text :>
                             QueryParam "actorIpAddress" Text :>
                               QueryParam "endTime" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "eventName" Text :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "orgUnitID" Text :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] Channel :>
                                             Post '[JSON] Channel

-- | Push changes to activities
--
-- /See:/ 'activitiesWatch' smart constructor.
data ActivitiesWatch =
  ActivitiesWatch'
    { _awStartTime       :: !(Maybe Text)
    , _awFilters         :: !(Maybe Text)
    , _awPayload         :: !Channel
    , _awCustomerId      :: !(Maybe Text)
    , _awActorIPAddress  :: !(Maybe Text)
    , _awEndTime         :: !(Maybe Text)
    , _awApplicationName :: !Text
    , _awPageToken       :: !(Maybe Text)
    , _awEventName       :: !(Maybe Text)
    , _awUserKey         :: !Text
    , _awMaxResults      :: !(Maybe (Textual Int32))
    , _awOrgUnitId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivitiesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awStartTime'
--
-- * 'awFilters'
--
-- * 'awPayload'
--
-- * 'awCustomerId'
--
-- * 'awActorIPAddress'
--
-- * 'awEndTime'
--
-- * 'awApplicationName'
--
-- * 'awPageToken'
--
-- * 'awEventName'
--
-- * 'awUserKey'
--
-- * 'awMaxResults'
--
-- * 'awOrgUnitId'
activitiesWatch
    :: Channel -- ^ 'awPayload'
    -> Text -- ^ 'awApplicationName'
    -> Text -- ^ 'awUserKey'
    -> ActivitiesWatch
activitiesWatch pAwPayload_ pAwApplicationName_ pAwUserKey_ =
  ActivitiesWatch'
    { _awStartTime = Nothing
    , _awFilters = Nothing
    , _awPayload = pAwPayload_
    , _awCustomerId = Nothing
    , _awActorIPAddress = Nothing
    , _awEndTime = Nothing
    , _awApplicationName = pAwApplicationName_
    , _awPageToken = Nothing
    , _awEventName = Nothing
    , _awUserKey = pAwUserKey_
    , _awMaxResults = Nothing
    , _awOrgUnitId = ""
    }

-- | Return events which occurred at or after this time.
awStartTime :: Lens' ActivitiesWatch (Maybe Text)
awStartTime
  = lens _awStartTime (\ s a -> s{_awStartTime = a})

-- | Event parameters in the form [parameter1 name][operator][parameter1
-- value],[parameter2 name][operator][parameter2 value],...
awFilters :: Lens' ActivitiesWatch (Maybe Text)
awFilters
  = lens _awFilters (\ s a -> s{_awFilters = a})

-- | Multipart request metadata.
awPayload :: Lens' ActivitiesWatch Channel
awPayload
  = lens _awPayload (\ s a -> s{_awPayload = a})

-- | Represents the customer for which the data is to be fetched.
awCustomerId :: Lens' ActivitiesWatch (Maybe Text)
awCustomerId
  = lens _awCustomerId (\ s a -> s{_awCustomerId = a})

-- | IP Address of host where the event was performed. Supports both IPv4 and
-- IPv6 addresses.
awActorIPAddress :: Lens' ActivitiesWatch (Maybe Text)
awActorIPAddress
  = lens _awActorIPAddress
      (\ s a -> s{_awActorIPAddress = a})

-- | Return events which occurred at or before this time.
awEndTime :: Lens' ActivitiesWatch (Maybe Text)
awEndTime
  = lens _awEndTime (\ s a -> s{_awEndTime = a})

-- | Application name for which the events are to be retrieved.
awApplicationName :: Lens' ActivitiesWatch Text
awApplicationName
  = lens _awApplicationName
      (\ s a -> s{_awApplicationName = a})

-- | Token to specify next page.
awPageToken :: Lens' ActivitiesWatch (Maybe Text)
awPageToken
  = lens _awPageToken (\ s a -> s{_awPageToken = a})

-- | Name of the event being queried.
awEventName :: Lens' ActivitiesWatch (Maybe Text)
awEventName
  = lens _awEventName (\ s a -> s{_awEventName = a})

-- | Represents the profile id or the user email for which the data should be
-- filtered. When \'all\' is specified as the userKey, it returns
-- usageReports for all users.
awUserKey :: Lens' ActivitiesWatch Text
awUserKey
  = lens _awUserKey (\ s a -> s{_awUserKey = a})

-- | Number of activity records to be shown in each page.
awMaxResults :: Lens' ActivitiesWatch (Maybe Int32)
awMaxResults
  = lens _awMaxResults (\ s a -> s{_awMaxResults = a})
      . mapping _Coerce

-- | the organizational unit\'s(OU) ID to filter activities from users
-- belonging to a specific OU or one of its sub-OU(s)
awOrgUnitId :: Lens' ActivitiesWatch Text
awOrgUnitId
  = lens _awOrgUnitId (\ s a -> s{_awOrgUnitId = a})

instance GoogleRequest ActivitiesWatch where
        type Rs ActivitiesWatch = Channel
        type Scopes ActivitiesWatch =
             '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
        requestClient ActivitiesWatch'{..}
          = go _awUserKey _awApplicationName _awStartTime
              _awFilters
              _awCustomerId
              _awActorIPAddress
              _awEndTime
              _awPageToken
              _awEventName
              _awMaxResults
              (Just _awOrgUnitId)
              (Just AltJSON)
              _awPayload
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy ActivitiesWatchResource)
                      mempty
