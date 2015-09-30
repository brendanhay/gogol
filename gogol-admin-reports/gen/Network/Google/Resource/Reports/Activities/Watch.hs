{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reports.Activities.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Push changes to activities
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @ReportsActivitiesWatch@.
module Reports.Activities.Watch
    (
    -- * REST Resource
      ActivitiesWatchAPI

    -- * Creating a Request
    , activitiesWatch
    , ActivitiesWatch

    -- * Request Lenses
    , awQuotaUser
    , awPrettyPrint
    , awStartTime
    , awUserIp
    , awFilters
    , awCustomerId
    , awActorIpAddress
    , awKey
    , awEndTime
    , awApplicationName
    , awPageToken
    , awOauthToken
    , awEventName
    , awUserKey
    , awMaxResults
    , awFields
    , awAlt
    ) where

import           Network.Google.AdminReports.Types
import           Network.Google.Prelude

-- | A resource alias for @ReportsActivitiesWatch@ which the
-- 'ActivitiesWatch' request conforms to.
type ActivitiesWatchAPI =
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
                               QueryParam "maxResults" Int32 :>
                                 Post '[JSON] Channel

-- | Push changes to activities
--
-- /See:/ 'activitiesWatch' smart constructor.
data ActivitiesWatch = ActivitiesWatch
    { _awQuotaUser       :: !(Maybe Text)
    , _awPrettyPrint     :: !Bool
    , _awStartTime       :: !(Maybe Text)
    , _awUserIp          :: !(Maybe Text)
    , _awFilters         :: !(Maybe Text)
    , _awCustomerId      :: !(Maybe Text)
    , _awActorIpAddress  :: !(Maybe Text)
    , _awKey             :: !(Maybe Text)
    , _awEndTime         :: !(Maybe Text)
    , _awApplicationName :: !Text
    , _awPageToken       :: !(Maybe Text)
    , _awOauthToken      :: !(Maybe Text)
    , _awEventName       :: !(Maybe Text)
    , _awUserKey         :: !Text
    , _awMaxResults      :: !(Maybe Int32)
    , _awFields          :: !(Maybe Text)
    , _awAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awQuotaUser'
--
-- * 'awPrettyPrint'
--
-- * 'awStartTime'
--
-- * 'awUserIp'
--
-- * 'awFilters'
--
-- * 'awCustomerId'
--
-- * 'awActorIpAddress'
--
-- * 'awKey'
--
-- * 'awEndTime'
--
-- * 'awApplicationName'
--
-- * 'awPageToken'
--
-- * 'awOauthToken'
--
-- * 'awEventName'
--
-- * 'awUserKey'
--
-- * 'awMaxResults'
--
-- * 'awFields'
--
-- * 'awAlt'
activitiesWatch
    :: Text -- ^ 'applicationName'
    -> Text -- ^ 'userKey'
    -> ActivitiesWatch
activitiesWatch pAwApplicationName_ pAwUserKey_ =
    ActivitiesWatch
    { _awQuotaUser = Nothing
    , _awPrettyPrint = True
    , _awStartTime = Nothing
    , _awUserIp = Nothing
    , _awFilters = Nothing
    , _awCustomerId = Nothing
    , _awActorIpAddress = Nothing
    , _awKey = Nothing
    , _awEndTime = Nothing
    , _awApplicationName = pAwApplicationName_
    , _awPageToken = Nothing
    , _awOauthToken = Nothing
    , _awEventName = Nothing
    , _awUserKey = pAwUserKey_
    , _awMaxResults = Nothing
    , _awFields = Nothing
    , _awAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
awQuotaUser :: Lens' ActivitiesWatch' (Maybe Text)
awQuotaUser
  = lens _awQuotaUser (\ s a -> s{_awQuotaUser = a})

-- | Returns response with indentations and line breaks.
awPrettyPrint :: Lens' ActivitiesWatch' Bool
awPrettyPrint
  = lens _awPrettyPrint
      (\ s a -> s{_awPrettyPrint = a})

-- | Return events which occured at or after this time.
awStartTime :: Lens' ActivitiesWatch' (Maybe Text)
awStartTime
  = lens _awStartTime (\ s a -> s{_awStartTime = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
awUserIp :: Lens' ActivitiesWatch' (Maybe Text)
awUserIp = lens _awUserIp (\ s a -> s{_awUserIp = a})

-- | Event parameters in the form [parameter1 name][operator][parameter1
-- value],[parameter2 name][operator][parameter2 value],...
awFilters :: Lens' ActivitiesWatch' (Maybe Text)
awFilters
  = lens _awFilters (\ s a -> s{_awFilters = a})

-- | Represents the customer for which the data is to be fetched.
awCustomerId :: Lens' ActivitiesWatch' (Maybe Text)
awCustomerId
  = lens _awCustomerId (\ s a -> s{_awCustomerId = a})

-- | IP Address of host where the event was performed. Supports both IPv4 and
-- IPv6 addresses.
awActorIpAddress :: Lens' ActivitiesWatch' (Maybe Text)
awActorIpAddress
  = lens _awActorIpAddress
      (\ s a -> s{_awActorIpAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
awKey :: Lens' ActivitiesWatch' (Maybe Text)
awKey = lens _awKey (\ s a -> s{_awKey = a})

-- | Return events which occured at or before this time.
awEndTime :: Lens' ActivitiesWatch' (Maybe Text)
awEndTime
  = lens _awEndTime (\ s a -> s{_awEndTime = a})

-- | Application name for which the events are to be retrieved.
awApplicationName :: Lens' ActivitiesWatch' Text
awApplicationName
  = lens _awApplicationName
      (\ s a -> s{_awApplicationName = a})

-- | Token to specify next page.
awPageToken :: Lens' ActivitiesWatch' (Maybe Text)
awPageToken
  = lens _awPageToken (\ s a -> s{_awPageToken = a})

-- | OAuth 2.0 token for the current user.
awOauthToken :: Lens' ActivitiesWatch' (Maybe Text)
awOauthToken
  = lens _awOauthToken (\ s a -> s{_awOauthToken = a})

-- | Name of the event being queried.
awEventName :: Lens' ActivitiesWatch' (Maybe Text)
awEventName
  = lens _awEventName (\ s a -> s{_awEventName = a})

-- | Represents the profile id or the user email for which the data should be
-- filtered. When \'all\' is specified as the userKey, it returns
-- usageReports for all users.
awUserKey :: Lens' ActivitiesWatch' Text
awUserKey
  = lens _awUserKey (\ s a -> s{_awUserKey = a})

-- | Number of activity records to be shown in each page.
awMaxResults :: Lens' ActivitiesWatch' (Maybe Int32)
awMaxResults
  = lens _awMaxResults (\ s a -> s{_awMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
awFields :: Lens' ActivitiesWatch' (Maybe Text)
awFields = lens _awFields (\ s a -> s{_awFields = a})

-- | Data format for the response.
awAlt :: Lens' ActivitiesWatch' Text
awAlt = lens _awAlt (\ s a -> s{_awAlt = a})

instance GoogleRequest ActivitiesWatch' where
        type Rs ActivitiesWatch' = Channel
        request = requestWithRoute defReq adminReportsURL
        requestWithRoute r u ActivitiesWatch{..}
          = go _awQuotaUser _awPrettyPrint _awStartTime
              _awUserIp
              _awFilters
              _awCustomerId
              _awActorIpAddress
              _awKey
              _awEndTime
              _awApplicationName
              _awPageToken
              _awOauthToken
              _awEventName
              _awUserKey
              _awMaxResults
              _awFields
              _awAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ActivitiesWatchAPI)
                      r
                      u
