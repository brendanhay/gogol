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
    , alhUserIP
    , alhApplicationId
    , alhKey
    , alhPageToken
    , alhOAuthToken
    , alhMaxResults
    , alhFields
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
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] HiddenPlayerList

-- | Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
--
-- /See:/ 'applicationsListHidden'' smart constructor.
data ApplicationsListHidden' = ApplicationsListHidden'
    { _alhQuotaUser     :: !(Maybe Text)
    , _alhPrettyPrint   :: !Bool
    , _alhUserIP        :: !(Maybe Text)
    , _alhApplicationId :: !Text
    , _alhKey           :: !(Maybe Key)
    , _alhPageToken     :: !(Maybe Text)
    , _alhOAuthToken    :: !(Maybe OAuthToken)
    , _alhMaxResults    :: !(Maybe Int32)
    , _alhFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsListHidden'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alhQuotaUser'
--
-- * 'alhPrettyPrint'
--
-- * 'alhUserIP'
--
-- * 'alhApplicationId'
--
-- * 'alhKey'
--
-- * 'alhPageToken'
--
-- * 'alhOAuthToken'
--
-- * 'alhMaxResults'
--
-- * 'alhFields'
applicationsListHidden'
    :: Text -- ^ 'applicationId'
    -> ApplicationsListHidden'
applicationsListHidden' pAlhApplicationId_ =
    ApplicationsListHidden'
    { _alhQuotaUser = Nothing
    , _alhPrettyPrint = True
    , _alhUserIP = Nothing
    , _alhApplicationId = pAlhApplicationId_
    , _alhKey = Nothing
    , _alhPageToken = Nothing
    , _alhOAuthToken = Nothing
    , _alhMaxResults = Nothing
    , _alhFields = Nothing
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
alhUserIP :: Lens' ApplicationsListHidden' (Maybe Text)
alhUserIP
  = lens _alhUserIP (\ s a -> s{_alhUserIP = a})

-- | The application ID from the Google Play developer console.
alhApplicationId :: Lens' ApplicationsListHidden' Text
alhApplicationId
  = lens _alhApplicationId
      (\ s a -> s{_alhApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alhKey :: Lens' ApplicationsListHidden' (Maybe Key)
alhKey = lens _alhKey (\ s a -> s{_alhKey = a})

-- | The token returned by the previous request.
alhPageToken :: Lens' ApplicationsListHidden' (Maybe Text)
alhPageToken
  = lens _alhPageToken (\ s a -> s{_alhPageToken = a})

-- | OAuth 2.0 token for the current user.
alhOAuthToken :: Lens' ApplicationsListHidden' (Maybe OAuthToken)
alhOAuthToken
  = lens _alhOAuthToken
      (\ s a -> s{_alhOAuthToken = a})

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

instance GoogleAuth ApplicationsListHidden' where
        authKey = alhKey . _Just
        authToken = alhOAuthToken . _Just

instance GoogleRequest ApplicationsListHidden' where
        type Rs ApplicationsListHidden' = HiddenPlayerList
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u ApplicationsListHidden'{..}
          = go _alhApplicationId _alhPageToken _alhMaxResults
              _alhQuotaUser
              (Just _alhPrettyPrint)
              _alhUserIP
              _alhFields
              _alhKey
              _alhOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ApplicationsListHiddenResource)
                      r
                      u
