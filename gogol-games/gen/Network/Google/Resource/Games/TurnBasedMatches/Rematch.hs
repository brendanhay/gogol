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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Rematch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a rematch of a match that was previously completed, with the same
-- participants. This can be called by only one player on a match still in
-- their list; the player must have called Finish first. Returns the newly
-- created match; it will be the caller\'s turn.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesRematch@.
module Network.Google.Resource.Games.TurnBasedMatches.Rematch
    (
    -- * REST Resource
      TurnBasedMatchesRematchResource

    -- * Creating a Request
    , turnBasedMatchesRematch'
    , TurnBasedMatchesRematch'

    -- * Request Lenses
    , tbmrRequestId
    , tbmrQuotaUser
    , tbmrPrettyPrint
    , tbmrUserIP
    , tbmrKey
    , tbmrLanguage
    , tbmrOAuthToken
    , tbmrMatchId
    , tbmrFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesRematch@ which the
-- 'TurnBasedMatchesRematch'' request conforms to.
type TurnBasedMatchesRematchResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "rematch" :>
           QueryParam "requestId" Int64 :>
             QueryParam "language" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] TurnBasedMatchRematch

-- | Create a rematch of a match that was previously completed, with the same
-- participants. This can be called by only one player on a match still in
-- their list; the player must have called Finish first. Returns the newly
-- created match; it will be the caller\'s turn.
--
-- /See:/ 'turnBasedMatchesRematch'' smart constructor.
data TurnBasedMatchesRematch' = TurnBasedMatchesRematch'
    { _tbmrRequestId   :: !(Maybe Int64)
    , _tbmrQuotaUser   :: !(Maybe Text)
    , _tbmrPrettyPrint :: !Bool
    , _tbmrUserIP      :: !(Maybe Text)
    , _tbmrKey         :: !(Maybe AuthKey)
    , _tbmrLanguage    :: !(Maybe Text)
    , _tbmrOAuthToken  :: !(Maybe OAuthToken)
    , _tbmrMatchId     :: !Text
    , _tbmrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesRematch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmrRequestId'
--
-- * 'tbmrQuotaUser'
--
-- * 'tbmrPrettyPrint'
--
-- * 'tbmrUserIP'
--
-- * 'tbmrKey'
--
-- * 'tbmrLanguage'
--
-- * 'tbmrOAuthToken'
--
-- * 'tbmrMatchId'
--
-- * 'tbmrFields'
turnBasedMatchesRematch'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesRematch'
turnBasedMatchesRematch' pTbmrMatchId_ =
    TurnBasedMatchesRematch'
    { _tbmrRequestId = Nothing
    , _tbmrQuotaUser = Nothing
    , _tbmrPrettyPrint = True
    , _tbmrUserIP = Nothing
    , _tbmrKey = Nothing
    , _tbmrLanguage = Nothing
    , _tbmrOAuthToken = Nothing
    , _tbmrMatchId = pTbmrMatchId_
    , _tbmrFields = Nothing
    }

-- | A randomly generated numeric ID for each request specified by the
-- caller. This number is used at the server to ensure that the request is
-- handled correctly across retries.
tbmrRequestId :: Lens' TurnBasedMatchesRematch' (Maybe Int64)
tbmrRequestId
  = lens _tbmrRequestId
      (\ s a -> s{_tbmrRequestId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmrQuotaUser :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrQuotaUser
  = lens _tbmrQuotaUser
      (\ s a -> s{_tbmrQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmrPrettyPrint :: Lens' TurnBasedMatchesRematch' Bool
tbmrPrettyPrint
  = lens _tbmrPrettyPrint
      (\ s a -> s{_tbmrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmrUserIP :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrUserIP
  = lens _tbmrUserIP (\ s a -> s{_tbmrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmrKey :: Lens' TurnBasedMatchesRematch' (Maybe AuthKey)
tbmrKey = lens _tbmrKey (\ s a -> s{_tbmrKey = a})

-- | The preferred language to use for strings returned by this method.
tbmrLanguage :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrLanguage
  = lens _tbmrLanguage (\ s a -> s{_tbmrLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmrOAuthToken :: Lens' TurnBasedMatchesRematch' (Maybe OAuthToken)
tbmrOAuthToken
  = lens _tbmrOAuthToken
      (\ s a -> s{_tbmrOAuthToken = a})

-- | The ID of the match.
tbmrMatchId :: Lens' TurnBasedMatchesRematch' Text
tbmrMatchId
  = lens _tbmrMatchId (\ s a -> s{_tbmrMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmrFields :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrFields
  = lens _tbmrFields (\ s a -> s{_tbmrFields = a})

instance GoogleAuth TurnBasedMatchesRematch' where
        authKey = tbmrKey . _Just
        authToken = tbmrOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesRematch' where
        type Rs TurnBasedMatchesRematch' =
             TurnBasedMatchRematch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesRematch'{..}
          = go _tbmrMatchId _tbmrRequestId _tbmrLanguage
              _tbmrQuotaUser
              (Just _tbmrPrettyPrint)
              _tbmrUserIP
              _tbmrFields
              _tbmrKey
              _tbmrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesRematchResource)
                      r
                      u
