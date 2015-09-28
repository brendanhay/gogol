{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Events.Record
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.events.record@.
module Network.Google.API.Games.Events.Record
    (
    -- * REST Resource
      EventsRecordAPI

    -- * Creating a Request
    , eventsRecord'
    , EventsRecord'

    -- * Request Lenses
    , erQuotaUser
    , erPrettyPrint
    , erUserIp
    , erKey
    , erLanguage
    , erOauthToken
    , erFields
    , erAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.events.record which the
-- 'EventsRecord'' request conforms to.
type EventsRecordAPI =
     "events" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "language" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] EventUpdateResponse

-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ 'eventsRecord'' smart constructor.
data EventsRecord' = EventsRecord'
    { _erQuotaUser   :: !(Maybe Text)
    , _erPrettyPrint :: !Bool
    , _erUserIp      :: !(Maybe Text)
    , _erKey         :: !(Maybe Text)
    , _erLanguage    :: !(Maybe Text)
    , _erOauthToken  :: !(Maybe Text)
    , _erFields      :: !(Maybe Text)
    , _erAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsRecord'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erQuotaUser'
--
-- * 'erPrettyPrint'
--
-- * 'erUserIp'
--
-- * 'erKey'
--
-- * 'erLanguage'
--
-- * 'erOauthToken'
--
-- * 'erFields'
--
-- * 'erAlt'
eventsRecord'
    :: EventsRecord'
eventsRecord' =
    EventsRecord'
    { _erQuotaUser = Nothing
    , _erPrettyPrint = True
    , _erUserIp = Nothing
    , _erKey = Nothing
    , _erLanguage = Nothing
    , _erOauthToken = Nothing
    , _erFields = Nothing
    , _erAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
erQuotaUser :: Lens' EventsRecord' (Maybe Text)
erQuotaUser
  = lens _erQuotaUser (\ s a -> s{_erQuotaUser = a})

-- | Returns response with indentations and line breaks.
erPrettyPrint :: Lens' EventsRecord' Bool
erPrettyPrint
  = lens _erPrettyPrint
      (\ s a -> s{_erPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
erUserIp :: Lens' EventsRecord' (Maybe Text)
erUserIp = lens _erUserIp (\ s a -> s{_erUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erKey :: Lens' EventsRecord' (Maybe Text)
erKey = lens _erKey (\ s a -> s{_erKey = a})

-- | The preferred language to use for strings returned by this method.
erLanguage :: Lens' EventsRecord' (Maybe Text)
erLanguage
  = lens _erLanguage (\ s a -> s{_erLanguage = a})

-- | OAuth 2.0 token for the current user.
erOauthToken :: Lens' EventsRecord' (Maybe Text)
erOauthToken
  = lens _erOauthToken (\ s a -> s{_erOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
erFields :: Lens' EventsRecord' (Maybe Text)
erFields = lens _erFields (\ s a -> s{_erFields = a})

-- | Data format for the response.
erAlt :: Lens' EventsRecord' Alt
erAlt = lens _erAlt (\ s a -> s{_erAlt = a})

instance GoogleRequest EventsRecord' where
        type Rs EventsRecord' = EventUpdateResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u EventsRecord'{..}
          = go _erQuotaUser (Just _erPrettyPrint) _erUserIp
              _erKey
              _erLanguage
              _erOauthToken
              _erFields
              (Just _erAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsRecordAPI) r
                      u
