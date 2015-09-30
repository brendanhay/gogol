{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.Applications.ListHidden
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementApplicationsListHidden@.
module Network.Google.Resource.GamesManagement.Applications.ListHidden
    (
    -- * REST Resource
      ApplicationsListHiddenResource

    -- * Creating a Request
    , applicationsListHidden'
    , ApplicationsListHidden'

    -- * Request Lenses
    , alhQuotaUser
    , alhPrettyPrint
    , alhUserIp
    , alhApplicationId
    , alhKey
    , alhPageToken
    , alhOauthToken
    , alhMaxResults
    , alhFields
    , alhAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementApplicationsListHidden@ which the
-- 'ApplicationsListHidden'' request conforms to.
type ApplicationsListHiddenResource =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] HiddenPlayerList

-- | Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ 'applicationsListHidden'' smart constructor.
data ApplicationsListHidden' = ApplicationsListHidden'
    { _alhQuotaUser     :: !(Maybe Text)
    , _alhPrettyPrint   :: !Bool
    , _alhUserIp        :: !(Maybe Text)
    , _alhApplicationId :: !Text
    , _alhKey           :: !(Maybe Text)
    , _alhPageToken     :: !(Maybe Text)
    , _alhOauthToken    :: !(Maybe Text)
    , _alhMaxResults    :: !(Maybe Int32)
    , _alhFields        :: !(Maybe Text)
    , _alhAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsListHidden'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alhQuotaUser'
--
-- * 'alhPrettyPrint'
--
-- * 'alhUserIp'
--
-- * 'alhApplicationId'
--
-- * 'alhKey'
--
-- * 'alhPageToken'
--
-- * 'alhOauthToken'
--
-- * 'alhMaxResults'
--
-- * 'alhFields'
--
-- * 'alhAlt'
applicationsListHidden'
    :: Text -- ^ 'applicationId'
    -> ApplicationsListHidden'
applicationsListHidden' pAlhApplicationId_ =
    ApplicationsListHidden'
    { _alhQuotaUser = Nothing
    , _alhPrettyPrint = True
    , _alhUserIp = Nothing
    , _alhApplicationId = pAlhApplicationId_
    , _alhKey = Nothing
    , _alhPageToken = Nothing
    , _alhOauthToken = Nothing
    , _alhMaxResults = Nothing
    , _alhFields = Nothing
    , _alhAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alhQuotaUser :: Lens' ApplicationsListHidden' (Maybe Text)
alhQuotaUser
  = lens _alhQuotaUser (\ s a -> s{_alhQuotaUser = a})

-- | Returns response with indentations and line breaks.
alhPrettyPrint :: Lens' ApplicationsListHidden' Bool
alhPrettyPrint
  = lens _alhPrettyPrint
      (\ s a -> s{_alhPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alhUserIp :: Lens' ApplicationsListHidden' (Maybe Text)
alhUserIp
  = lens _alhUserIp (\ s a -> s{_alhUserIp = a})

-- | The application ID from the Google Play developer console.
alhApplicationId :: Lens' ApplicationsListHidden' Text
alhApplicationId
  = lens _alhApplicationId
      (\ s a -> s{_alhApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alhKey :: Lens' ApplicationsListHidden' (Maybe Text)
alhKey = lens _alhKey (\ s a -> s{_alhKey = a})

-- | The token returned by the previous request.
alhPageToken :: Lens' ApplicationsListHidden' (Maybe Text)
alhPageToken
  = lens _alhPageToken (\ s a -> s{_alhPageToken = a})

-- | OAuth 2.0 token for the current user.
alhOauthToken :: Lens' ApplicationsListHidden' (Maybe Text)
alhOauthToken
  = lens _alhOauthToken
      (\ s a -> s{_alhOauthToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified maxResults.
alhMaxResults :: Lens' ApplicationsListHidden' (Maybe Int32)
alhMaxResults
  = lens _alhMaxResults
      (\ s a -> s{_alhMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alhFields :: Lens' ApplicationsListHidden' (Maybe Text)
alhFields
  = lens _alhFields (\ s a -> s{_alhFields = a})

-- | Data format for the response.
alhAlt :: Lens' ApplicationsListHidden' Alt
alhAlt = lens _alhAlt (\ s a -> s{_alhAlt = a})

instance GoogleRequest ApplicationsListHidden' where
        type Rs ApplicationsListHidden' = HiddenPlayerList
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ApplicationsListHidden'{..}
          = go _alhQuotaUser (Just _alhPrettyPrint) _alhUserIp
              _alhApplicationId
              _alhKey
              _alhPageToken
              _alhOauthToken
              _alhMaxResults
              _alhFields
              (Just _alhAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ApplicationsListHiddenResource)
                      r
                      u
