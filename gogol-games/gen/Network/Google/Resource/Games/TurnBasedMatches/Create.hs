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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesCreate@.
module Network.Google.Resource.Games.TurnBasedMatches.Create
    (
    -- * REST Resource
      TurnBasedMatchesCreateResource

    -- * Creating a Request
    , turnBasedMatchesCreate'
    , TurnBasedMatchesCreate'

    -- * Request Lenses
    , turQuotaUser
    , turPrettyPrint
    , turUserIP
    , turPayload
    , turKey
    , turLanguage
    , turOAuthToken
    , turFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesCreate@ which the
-- 'TurnBasedMatchesCreate'' request conforms to.
type TurnBasedMatchesCreateResource =
     "turnbasedmatches" :>
       "create" :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TurnBasedMatchCreateRequest :>
                           Post '[JSON] TurnBasedMatch

-- | Create a turn-based match.
--
-- /See:/ 'turnBasedMatchesCreate'' smart constructor.
data TurnBasedMatchesCreate' = TurnBasedMatchesCreate'
    { _turQuotaUser   :: !(Maybe Text)
    , _turPrettyPrint :: !Bool
    , _turUserIP      :: !(Maybe Text)
    , _turPayload     :: !TurnBasedMatchCreateRequest
    , _turKey         :: !(Maybe AuthKey)
    , _turLanguage    :: !(Maybe Text)
    , _turOAuthToken  :: !(Maybe OAuthToken)
    , _turFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'turQuotaUser'
--
-- * 'turPrettyPrint'
--
-- * 'turUserIP'
--
-- * 'turPayload'
--
-- * 'turKey'
--
-- * 'turLanguage'
--
-- * 'turOAuthToken'
--
-- * 'turFields'
turnBasedMatchesCreate'
    :: TurnBasedMatchCreateRequest -- ^ 'payload'
    -> TurnBasedMatchesCreate'
turnBasedMatchesCreate' pTurPayload_ =
    TurnBasedMatchesCreate'
    { _turQuotaUser = Nothing
    , _turPrettyPrint = True
    , _turUserIP = Nothing
    , _turPayload = pTurPayload_
    , _turKey = Nothing
    , _turLanguage = Nothing
    , _turOAuthToken = Nothing
    , _turFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
turQuotaUser :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turQuotaUser
  = lens _turQuotaUser (\ s a -> s{_turQuotaUser = a})

-- | Returns response with indentations and line breaks.
turPrettyPrint :: Lens' TurnBasedMatchesCreate' Bool
turPrettyPrint
  = lens _turPrettyPrint
      (\ s a -> s{_turPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
turUserIP :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turUserIP
  = lens _turUserIP (\ s a -> s{_turUserIP = a})

-- | Multipart request metadata.
turPayload :: Lens' TurnBasedMatchesCreate' TurnBasedMatchCreateRequest
turPayload
  = lens _turPayload (\ s a -> s{_turPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
turKey :: Lens' TurnBasedMatchesCreate' (Maybe AuthKey)
turKey = lens _turKey (\ s a -> s{_turKey = a})

-- | The preferred language to use for strings returned by this method.
turLanguage :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turLanguage
  = lens _turLanguage (\ s a -> s{_turLanguage = a})

-- | OAuth 2.0 token for the current user.
turOAuthToken :: Lens' TurnBasedMatchesCreate' (Maybe OAuthToken)
turOAuthToken
  = lens _turOAuthToken
      (\ s a -> s{_turOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
turFields :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turFields
  = lens _turFields (\ s a -> s{_turFields = a})

instance GoogleAuth TurnBasedMatchesCreate' where
        authKey = turKey . _Just
        authToken = turOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesCreate' where
        type Rs TurnBasedMatchesCreate' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesCreate'{..}
          = go _turLanguage _turQuotaUser
              (Just _turPrettyPrint)
              _turUserIP
              _turFields
              _turKey
              _turOAuthToken
              (Just AltJSON)
              _turPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesCreateResource)
                      rq
