{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Events.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application. All quests for this
-- player that use the event will also be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.events.reset@.
module Network.Google.API.GamesManagement.Events.Reset
    (
    -- * REST Resource
      EventsResetAPI

    -- * Creating a Request
    , eventsReset'
    , EventsReset'

    -- * Request Lenses
    , erQuotaUser
    , erPrettyPrint
    , erUserIp
    , erKey
    , erOauthToken
    , erEventId
    , erFields
    , erAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.events.reset which the
-- 'EventsReset'' request conforms to.
type EventsResetAPI =
     "events" :>
       Capture "eventId" Text :>
         "reset" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application. All quests for this
-- player that use the event will also be reset.
--
-- /See:/ 'eventsReset'' smart constructor.
data EventsReset' = EventsReset'
    { _erQuotaUser   :: !(Maybe Text)
    , _erPrettyPrint :: !Bool
    , _erUserIp      :: !(Maybe Text)
    , _erKey         :: !(Maybe Text)
    , _erOauthToken  :: !(Maybe Text)
    , _erEventId     :: !Text
    , _erFields      :: !(Maybe Text)
    , _erAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsReset'' with the minimum fields required to make a request.
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
-- * 'erOauthToken'
--
-- * 'erEventId'
--
-- * 'erFields'
--
-- * 'erAlt'
eventsReset'
    :: Text -- ^ 'eventId'
    -> EventsReset'
eventsReset' pErEventId_ =
    EventsReset'
    { _erQuotaUser = Nothing
    , _erPrettyPrint = True
    , _erUserIp = Nothing
    , _erKey = Nothing
    , _erOauthToken = Nothing
    , _erEventId = pErEventId_
    , _erFields = Nothing
    , _erAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
erQuotaUser :: Lens' EventsReset' (Maybe Text)
erQuotaUser
  = lens _erQuotaUser (\ s a -> s{_erQuotaUser = a})

-- | Returns response with indentations and line breaks.
erPrettyPrint :: Lens' EventsReset' Bool
erPrettyPrint
  = lens _erPrettyPrint
      (\ s a -> s{_erPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
erUserIp :: Lens' EventsReset' (Maybe Text)
erUserIp = lens _erUserIp (\ s a -> s{_erUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erKey :: Lens' EventsReset' (Maybe Text)
erKey = lens _erKey (\ s a -> s{_erKey = a})

-- | OAuth 2.0 token for the current user.
erOauthToken :: Lens' EventsReset' (Maybe Text)
erOauthToken
  = lens _erOauthToken (\ s a -> s{_erOauthToken = a})

-- | The ID of the event.
erEventId :: Lens' EventsReset' Text
erEventId
  = lens _erEventId (\ s a -> s{_erEventId = a})

-- | Selector specifying which fields to include in a partial response.
erFields :: Lens' EventsReset' (Maybe Text)
erFields = lens _erFields (\ s a -> s{_erFields = a})

-- | Data format for the response.
erAlt :: Lens' EventsReset' Alt
erAlt = lens _erAlt (\ s a -> s{_erAlt = a})

instance GoogleRequest EventsReset' where
        type Rs EventsReset' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u EventsReset'{..}
          = go _erQuotaUser (Just _erPrettyPrint) _erUserIp
              _erKey
              _erOauthToken
              _erEventId
              _erFields
              (Just _erAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EventsResetAPI) r u
