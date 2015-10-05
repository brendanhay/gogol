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
-- Module      : Network.Google.Resource.Reports.Activities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of activities for a specific customer and application.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @ReportsActivitiesList@.
module Network.Google.Resource.Reports.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList'
    , ActivitiesList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alStartTime
    , alUserIP
    , alFilters
    , alCustomerId
    , alActorIPAddress
    , alKey
    , alEndTime
    , alApplicationName
    , alPageToken
    , alOAuthToken
    , alEventName
    , alUserKey
    , alMaxResults
    , alFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @ReportsActivitiesList@ which the
-- 'ActivitiesList'' request conforms to.
type ActivitiesListResource =
     "activity" :>
       "users" :>
         Capture "userKey" Text :>
           "applications" :>
             Capture "applicationName" Text :>
               QueryParam "startTime" Text :>
                 QueryParam "filters" Text :>
                   QueryParam "customerId" Text :>
                     QueryParam "actorIpAddress" Text :>
                       QueryParam "endTime" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "eventName" Text :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "userIp" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] Activities

-- | Retrieves a list of activities for a specific customer and application.
--
-- /See:/ 'activitiesList'' smart constructor.
data ActivitiesList' = ActivitiesList'
    { _alQuotaUser       :: !(Maybe Text)
    , _alPrettyPrint     :: !Bool
    , _alStartTime       :: !(Maybe Text)
    , _alUserIP          :: !(Maybe Text)
    , _alFilters         :: !(Maybe Text)
    , _alCustomerId      :: !(Maybe Text)
    , _alActorIPAddress  :: !(Maybe Text)
    , _alKey             :: !(Maybe AuthKey)
    , _alEndTime         :: !(Maybe Text)
    , _alApplicationName :: !Text
    , _alPageToken       :: !(Maybe Text)
    , _alOAuthToken      :: !(Maybe OAuthToken)
    , _alEventName       :: !(Maybe Text)
    , _alUserKey         :: !Text
    , _alMaxResults      :: !(Maybe Int32)
    , _alFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'alUserIP'
--
-- * 'alFilters'
--
-- * 'alCustomerId'
--
-- * 'alActorIPAddress'
--
-- * 'alKey'
--
-- * 'alEndTime'
--
-- * 'alApplicationName'
--
-- * 'alPageToken'
--
-- * 'alOAuthToken'
--
-- * 'alEventName'
--
-- * 'alUserKey'
--
-- * 'alMaxResults'
--
-- * 'alFields'
activitiesList'
    :: Text -- ^ 'applicationName'
    -> Text -- ^ 'userKey'
    -> ActivitiesList'
activitiesList' pAlApplicationName_ pAlUserKey_ =
    ActivitiesList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alStartTime = Nothing
    , _alUserIP = Nothing
    , _alFilters = Nothing
    , _alCustomerId = Nothing
    , _alActorIPAddress = Nothing
    , _alKey = Nothing
    , _alEndTime = Nothing
    , _alApplicationName = pAlApplicationName_
    , _alPageToken = Nothing
    , _alOAuthToken = Nothing
    , _alEventName = Nothing
    , _alUserKey = pAlUserKey_
    , _alMaxResults = Nothing
    , _alFields = Nothing
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
alUserIP :: Lens' ActivitiesList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

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
alActorIPAddress :: Lens' ActivitiesList' (Maybe Text)
alActorIPAddress
  = lens _alActorIPAddress
      (\ s a -> s{_alActorIPAddress = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ActivitiesList' (Maybe AuthKey)
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
alOAuthToken :: Lens' ActivitiesList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

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
alMaxResults :: Lens' ActivitiesList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ActivitiesList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth ActivitiesList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = Activities
        request = requestWithRoute defReq reportsURL
        requestWithRoute r u ActivitiesList'{..}
          = go _alUserKey _alApplicationName _alStartTime
              _alFilters
              _alCustomerId
              _alActorIPAddress
              _alEndTime
              _alPageToken
              _alEventName
              _alMaxResults
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesListResource)
                      r
                      u
