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
-- Module      : Network.Google.Resource.Games.Events.ListByPlayer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesEventsListByPlayer@.
module Network.Google.Resource.Games.Events.ListByPlayer
    (
    -- * REST Resource
      EventsListByPlayerResource

    -- * Creating a Request
    , eventsListByPlayer'
    , EventsListByPlayer'

    -- * Request Lenses
    , elbpQuotaUser
    , elbpPrettyPrint
    , elbpUserIP
    , elbpKey
    , elbpLanguage
    , elbpPageToken
    , elbpOAuthToken
    , elbpMaxResults
    , elbpFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesEventsListByPlayer@ which the
-- 'EventsListByPlayer'' request conforms to.
type EventsListByPlayerResource =
     "events" :>
       QueryParam "language" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] PlayerEventListResponse

-- | Returns a list showing the current progress on events in this
-- application for the currently authenticated user.
--
-- /See:/ 'eventsListByPlayer'' smart constructor.
data EventsListByPlayer' = EventsListByPlayer'
    { _elbpQuotaUser   :: !(Maybe Text)
    , _elbpPrettyPrint :: !Bool
    , _elbpUserIP      :: !(Maybe Text)
    , _elbpKey         :: !(Maybe AuthKey)
    , _elbpLanguage    :: !(Maybe Text)
    , _elbpPageToken   :: !(Maybe Text)
    , _elbpOAuthToken  :: !(Maybe OAuthToken)
    , _elbpMaxResults  :: !(Maybe Int32)
    , _elbpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsListByPlayer'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elbpQuotaUser'
--
-- * 'elbpPrettyPrint'
--
-- * 'elbpUserIP'
--
-- * 'elbpKey'
--
-- * 'elbpLanguage'
--
-- * 'elbpPageToken'
--
-- * 'elbpOAuthToken'
--
-- * 'elbpMaxResults'
--
-- * 'elbpFields'
eventsListByPlayer'
    :: EventsListByPlayer'
eventsListByPlayer' =
    EventsListByPlayer'
    { _elbpQuotaUser = Nothing
    , _elbpPrettyPrint = True
    , _elbpUserIP = Nothing
    , _elbpKey = Nothing
    , _elbpLanguage = Nothing
    , _elbpPageToken = Nothing
    , _elbpOAuthToken = Nothing
    , _elbpMaxResults = Nothing
    , _elbpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elbpQuotaUser :: Lens' EventsListByPlayer' (Maybe Text)
elbpQuotaUser
  = lens _elbpQuotaUser
      (\ s a -> s{_elbpQuotaUser = a})

-- | Returns response with indentations and line breaks.
elbpPrettyPrint :: Lens' EventsListByPlayer' Bool
elbpPrettyPrint
  = lens _elbpPrettyPrint
      (\ s a -> s{_elbpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elbpUserIP :: Lens' EventsListByPlayer' (Maybe Text)
elbpUserIP
  = lens _elbpUserIP (\ s a -> s{_elbpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elbpKey :: Lens' EventsListByPlayer' (Maybe AuthKey)
elbpKey = lens _elbpKey (\ s a -> s{_elbpKey = a})

-- | The preferred language to use for strings returned by this method.
elbpLanguage :: Lens' EventsListByPlayer' (Maybe Text)
elbpLanguage
  = lens _elbpLanguage (\ s a -> s{_elbpLanguage = a})

-- | The token returned by the previous request.
elbpPageToken :: Lens' EventsListByPlayer' (Maybe Text)
elbpPageToken
  = lens _elbpPageToken
      (\ s a -> s{_elbpPageToken = a})

-- | OAuth 2.0 token for the current user.
elbpOAuthToken :: Lens' EventsListByPlayer' (Maybe OAuthToken)
elbpOAuthToken
  = lens _elbpOAuthToken
      (\ s a -> s{_elbpOAuthToken = a})

-- | The maximum number of events to return in the response, used for paging.
-- For any response, the actual number of events to return may be less than
-- the specified maxResults.
elbpMaxResults :: Lens' EventsListByPlayer' (Maybe Int32)
elbpMaxResults
  = lens _elbpMaxResults
      (\ s a -> s{_elbpMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
elbpFields :: Lens' EventsListByPlayer' (Maybe Text)
elbpFields
  = lens _elbpFields (\ s a -> s{_elbpFields = a})

instance GoogleAuth EventsListByPlayer' where
        authKey = elbpKey . _Just
        authToken = elbpOAuthToken . _Just

instance GoogleRequest EventsListByPlayer' where
        type Rs EventsListByPlayer' = PlayerEventListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u EventsListByPlayer'{..}
          = go _elbpLanguage _elbpPageToken _elbpMaxResults
              _elbpQuotaUser
              (Just _elbpPrettyPrint)
              _elbpUserIP
              _elbpFields
              _elbpKey
              _elbpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsListByPlayerResource)
                      r
                      u
