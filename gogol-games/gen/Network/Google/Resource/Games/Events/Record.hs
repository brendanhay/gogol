{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Events.Record
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesEventsRecord@.
module Network.Google.Resource.Games.Events.Record
    (
    -- * REST Resource
      EventsRecordResource

    -- * Creating a Request
    , eventsRecord'
    , EventsRecord'

    -- * Request Lenses
    , erQuotaUser
    , erPrettyPrint
    , erUserIP
    , erPayload
    , erKey
    , erLanguage
    , erOAuthToken
    , erFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesEventsRecord@ which the
-- 'EventsRecord'' request conforms to.
type EventsRecordResource =
     "events" :>
       QueryParam "language" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] EventRecordRequest :>
                         Post '[JSON] EventUpdateResponse

-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ 'eventsRecord'' smart constructor.
data EventsRecord' = EventsRecord'
    { _erQuotaUser   :: !(Maybe Text)
    , _erPrettyPrint :: !Bool
    , _erUserIP      :: !(Maybe Text)
    , _erPayload     :: !EventRecordRequest
    , _erKey         :: !(Maybe Key)
    , _erLanguage    :: !(Maybe Text)
    , _erOAuthToken  :: !(Maybe OAuthToken)
    , _erFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsRecord'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erQuotaUser'
--
-- * 'erPrettyPrint'
--
-- * 'erUserIP'
--
-- * 'erPayload'
--
-- * 'erKey'
--
-- * 'erLanguage'
--
-- * 'erOAuthToken'
--
-- * 'erFields'
eventsRecord'
    :: EventRecordRequest -- ^ 'payload'
    -> EventsRecord'
eventsRecord' pErPayload_ =
    EventsRecord'
    { _erQuotaUser = Nothing
    , _erPrettyPrint = True
    , _erUserIP = Nothing
    , _erPayload = pErPayload_
    , _erKey = Nothing
    , _erLanguage = Nothing
    , _erOAuthToken = Nothing
    , _erFields = Nothing
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
erUserIP :: Lens' EventsRecord' (Maybe Text)
erUserIP = lens _erUserIP (\ s a -> s{_erUserIP = a})

-- | Multipart request metadata.
erPayload :: Lens' EventsRecord' EventRecordRequest
erPayload
  = lens _erPayload (\ s a -> s{_erPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
erKey :: Lens' EventsRecord' (Maybe Key)
erKey = lens _erKey (\ s a -> s{_erKey = a})

-- | The preferred language to use for strings returned by this method.
erLanguage :: Lens' EventsRecord' (Maybe Text)
erLanguage
  = lens _erLanguage (\ s a -> s{_erLanguage = a})

-- | OAuth 2.0 token for the current user.
erOAuthToken :: Lens' EventsRecord' (Maybe OAuthToken)
erOAuthToken
  = lens _erOAuthToken (\ s a -> s{_erOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
erFields :: Lens' EventsRecord' (Maybe Text)
erFields = lens _erFields (\ s a -> s{_erFields = a})

instance GoogleAuth EventsRecord' where
        authKey = erKey . _Just
        authToken = erOAuthToken . _Just

instance GoogleRequest EventsRecord' where
        type Rs EventsRecord' = EventUpdateResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u EventsRecord'{..}
          = go _erLanguage _erQuotaUser (Just _erPrettyPrint)
              _erUserIP
              _erFields
              _erKey
              _erOAuthToken
              (Just AltJSON)
              _erPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsRecordResource)
                      r
                      u
