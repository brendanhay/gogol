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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Finish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesFinish@.
module Network.Google.Resource.Games.TurnBasedMatches.Finish
    (
    -- * REST Resource
      TurnBasedMatchesFinishResource

    -- * Creating a Request
    , turnBasedMatchesFinish'
    , TurnBasedMatchesFinish'

    -- * Request Lenses
    , tbmfQuotaUser
    , tbmfPrettyPrint
    , tbmfUserIP
    , tbmfPayload
    , tbmfKey
    , tbmfLanguage
    , tbmfOAuthToken
    , tbmfMatchId
    , tbmfFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesFinish@ which the
-- 'TurnBasedMatchesFinish'' request conforms to.
type TurnBasedMatchesFinishResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "finish" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TurnBasedMatchResults :>
                             Put '[JSON] TurnBasedMatch

-- | Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
--
-- /See:/ 'turnBasedMatchesFinish'' smart constructor.
data TurnBasedMatchesFinish' = TurnBasedMatchesFinish'
    { _tbmfQuotaUser   :: !(Maybe Text)
    , _tbmfPrettyPrint :: !Bool
    , _tbmfUserIP      :: !(Maybe Text)
    , _tbmfPayload     :: !TurnBasedMatchResults
    , _tbmfKey         :: !(Maybe AuthKey)
    , _tbmfLanguage    :: !(Maybe Text)
    , _tbmfOAuthToken  :: !(Maybe OAuthToken)
    , _tbmfMatchId     :: !Text
    , _tbmfFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesFinish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmfQuotaUser'
--
-- * 'tbmfPrettyPrint'
--
-- * 'tbmfUserIP'
--
-- * 'tbmfPayload'
--
-- * 'tbmfKey'
--
-- * 'tbmfLanguage'
--
-- * 'tbmfOAuthToken'
--
-- * 'tbmfMatchId'
--
-- * 'tbmfFields'
turnBasedMatchesFinish'
    :: TurnBasedMatchResults -- ^ 'payload'
    -> Text -- ^ 'matchId'
    -> TurnBasedMatchesFinish'
turnBasedMatchesFinish' pTbmfPayload_ pTbmfMatchId_ =
    TurnBasedMatchesFinish'
    { _tbmfQuotaUser = Nothing
    , _tbmfPrettyPrint = True
    , _tbmfUserIP = Nothing
    , _tbmfPayload = pTbmfPayload_
    , _tbmfKey = Nothing
    , _tbmfLanguage = Nothing
    , _tbmfOAuthToken = Nothing
    , _tbmfMatchId = pTbmfMatchId_
    , _tbmfFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmfQuotaUser :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfQuotaUser
  = lens _tbmfQuotaUser
      (\ s a -> s{_tbmfQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmfPrettyPrint :: Lens' TurnBasedMatchesFinish' Bool
tbmfPrettyPrint
  = lens _tbmfPrettyPrint
      (\ s a -> s{_tbmfPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmfUserIP :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfUserIP
  = lens _tbmfUserIP (\ s a -> s{_tbmfUserIP = a})

-- | Multipart request metadata.
tbmfPayload :: Lens' TurnBasedMatchesFinish' TurnBasedMatchResults
tbmfPayload
  = lens _tbmfPayload (\ s a -> s{_tbmfPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmfKey :: Lens' TurnBasedMatchesFinish' (Maybe AuthKey)
tbmfKey = lens _tbmfKey (\ s a -> s{_tbmfKey = a})

-- | The preferred language to use for strings returned by this method.
tbmfLanguage :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfLanguage
  = lens _tbmfLanguage (\ s a -> s{_tbmfLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmfOAuthToken :: Lens' TurnBasedMatchesFinish' (Maybe OAuthToken)
tbmfOAuthToken
  = lens _tbmfOAuthToken
      (\ s a -> s{_tbmfOAuthToken = a})

-- | The ID of the match.
tbmfMatchId :: Lens' TurnBasedMatchesFinish' Text
tbmfMatchId
  = lens _tbmfMatchId (\ s a -> s{_tbmfMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmfFields :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfFields
  = lens _tbmfFields (\ s a -> s{_tbmfFields = a})

instance GoogleAuth TurnBasedMatchesFinish' where
        authKey = tbmfKey . _Just
        authToken = tbmfOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesFinish' where
        type Rs TurnBasedMatchesFinish' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesFinish'{..}
          = go _tbmfMatchId _tbmfLanguage _tbmfQuotaUser
              (Just _tbmfPrettyPrint)
              _tbmfUserIP
              _tbmfFields
              _tbmfKey
              _tbmfOAuthToken
              (Just AltJSON)
              _tbmfPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesFinishResource)
                      rq
