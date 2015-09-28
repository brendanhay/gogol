{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Reports.Activities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of activities for a specific customer and application.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @reports.activities.list@.
module Network.Google.API.Reports.Activities.List
    (
    -- * REST Resource
      ActivitiesListAPI

    -- * Creating a Request
    , activitiesList'
    , ActivitiesList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alStartTime
    , alUserIp
    , alFilters
    , alCustomerId
    , alActorIpAddress
    , alKey
    , alEndTime
    , alApplicationName
    , alPageToken
    , alOauthToken
    , alEventName
    , alUserKey
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.Admin.Reports.Types
import           Network.Google.Prelude

-- | A resource alias for reports.activities.list which the
-- 'ActivitiesList'' request conforms to.
type ActivitiesListAPI =
     "activity" :>
       "users" :>
         Capture "userKey" Text :>
           "applications" :>
             Capture "applicationName" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "startTime" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "filters" Text :>
                         QueryParam "customerId" Text :>
                           QueryParam "actorIpAddress" Text :>
                             QueryParam "key" Text :>
                               QueryParam "endTime" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "eventName" Text :>
                                       QueryParam "maxResults" Nat :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Alt :>
                                             Get '[JSON] Activities

-- | Retrieves a list of activities for a specific customer and application.
--
-- /See:/ 'activitiesList'' smart constructor.
data ActivitiesList' = ActivitiesList'
    { _alQuotaUser       :: !(Maybe Text)
    , _alPrettyPrint     :: !Bool
    , _alStartTime       :: !(Maybe Text)
    , _alUserIp          :: !(Maybe Text)
    , _alFilters         :: !(Maybe Text)
    , _alCustomerId      :: !(Maybe Text)
    , _alActorIpAddress  :: !(Maybe Text)
    , _alKey             :: !(Maybe Text)
    , _alEndTime         :: !(Maybe Text)
    , _alApplicationName :: !Text
    , _alPageToken       :: !(Maybe Text)
    , _alOauthToken      :: !(Maybe Text)
    , _alEventName       :: !(Maybe Text)
    , _alUserKey         :: !Text
    , _alMaxResults      :: !(Maybe Nat)
    , _alFields          :: !(Maybe Text)
    , _alAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alStartTime'
--
-- * 'alUserIp'
--
-- * 'alFilters'
--
-- * 'alCustomerId'
--
-- * 'alActorIpAddress'
--
-- * 'alKey'
--
-- * 'alEndTime'
--
-- * 'alApplicationName'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alEventName'
--
-- * 'alUserKey'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
activitiesList'
    :: Text -- ^ 'applicationName'
    -> Text -- ^ 'userKey'
    -> ActivitiesList'
activitiesList' pAlApplicationName_ pAlUserKey_ =
    ActivitiesList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alStartTime = Nothing
    , _alUserIp = Nothing
    , _alFilters = Nothing
    , _alCustomerId = Nothing
    , _alActorIpAddress = Nothing
    , _alKey = Nothing
    , _alEndTime = Nothing
    , _alApplicationName = pAlApplicationName_
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alEventName = Nothing
    , _alUserKey = pAlUserKey_
    , _alMaxResults = Nothing
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' ActivitiesList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' ActivitiesList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | Return events which occured at or after this time.
alStartTime :: Lens' ActivitiesList' (Maybe Text)
alStartTime
  = lens _alStartTime (\ s a -> s{_alStartTime = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' ActivitiesList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | Event parameters in the form [parameter1 name][operator][parameter1
-- value],[parameter2 name][operator][parameter2 value],...
alFilters :: Lens' ActivitiesList' (Maybe Text)
alFilters
  = lens _alFilters (\ s a -> s{_alFilters = a})

-- | Represents the customer for which the data is to be fetched.
alCustomerId :: Lens' ActivitiesList' (Maybe Text)
alCustomerId
  = lens _alCustomerId (\ s a -> s{_alCustomerId = a})

-- | IP Address of host where the event was performed. Supports both IPv4 and
-- IPv6 addresses.
alActorIpAddress :: Lens' ActivitiesList' (Maybe Text)
alActorIpAddress
  = lens _alActorIpAddress
      (\ s a -> s{_alActorIpAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ActivitiesList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Return events which occured at or before this time.
alEndTime :: Lens' ActivitiesList' (Maybe Text)
alEndTime
  = lens _alEndTime (\ s a -> s{_alEndTime = a})

-- | Application name for which the events are to be retrieved.
alApplicationName :: Lens' ActivitiesList' Text
alApplicationName
  = lens _alApplicationName
      (\ s a -> s{_alApplicationName = a})

-- | Token to specify next page.
alPageToken :: Lens' ActivitiesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' ActivitiesList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Name of the event being queried.
alEventName :: Lens' ActivitiesList' (Maybe Text)
alEventName
  = lens _alEventName (\ s a -> s{_alEventName = a})

-- | Represents the profile id or the user email for which the data should be
-- filtered. When \'all\' is specified as the userKey, it returns
-- usageReports for all users.
alUserKey :: Lens' ActivitiesList' Text
alUserKey
  = lens _alUserKey (\ s a -> s{_alUserKey = a})

-- | Number of activity records to be shown in each page.
alMaxResults :: Lens' ActivitiesList' (Maybe Natural)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ActivitiesList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' ActivitiesList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = Activities
        request = requestWithRoute defReq adminReportsURL
        requestWithRoute r u ActivitiesList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alStartTime
              _alUserIp
              _alFilters
              _alCustomerId
              _alActorIpAddress
              _alKey
              _alEndTime
              _alApplicationName
              _alPageToken
              _alOauthToken
              _alEventName
              _alUserKey
              _alMaxResults
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ActivitiesListAPI)
                      r
                      u
