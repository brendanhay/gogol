{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Games.TurnBasedMatches.Rematch
    (
    -- * REST Resource
      TurnBasedMatchesRematchAPI

    -- * Creating a Request
    , turnBasedMatchesRematch
    , TurnBasedMatchesRematch

    -- * Request Lenses
    , tbmrRequestId
    , tbmrQuotaUser
    , tbmrPrettyPrint
    , tbmrUserIp
    , tbmrKey
    , tbmrLanguage
    , tbmrOauthToken
    , tbmrMatchId
    , tbmrFields
    , tbmrAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesRematch@ which the
-- 'TurnBasedMatchesRematch' request conforms to.
type TurnBasedMatchesRematchAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "rematch" :>
           QueryParam "requestId" Int64 :>
             QueryParam "language" Text :>
               Post '[JSON] TurnBasedMatchRematch

-- | Create a rematch of a match that was previously completed, with the same
-- participants. This can be called by only one player on a match still in
-- their list; the player must have called Finish first. Returns the newly
-- created match; it will be the caller\'s turn.
--
-- /See:/ 'turnBasedMatchesRematch' smart constructor.
data TurnBasedMatchesRematch = TurnBasedMatchesRematch
    { _tbmrRequestId   :: !(Maybe Int64)
    , _tbmrQuotaUser   :: !(Maybe Text)
    , _tbmrPrettyPrint :: !Bool
    , _tbmrUserIp      :: !(Maybe Text)
    , _tbmrKey         :: !(Maybe Text)
    , _tbmrLanguage    :: !(Maybe Text)
    , _tbmrOauthToken  :: !(Maybe Text)
    , _tbmrMatchId     :: !Text
    , _tbmrFields      :: !(Maybe Text)
    , _tbmrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tbmrUserIp'
--
-- * 'tbmrKey'
--
-- * 'tbmrLanguage'
--
-- * 'tbmrOauthToken'
--
-- * 'tbmrMatchId'
--
-- * 'tbmrFields'
--
-- * 'tbmrAlt'
turnBasedMatchesRematch
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesRematch
turnBasedMatchesRematch pTbmrMatchId_ =
    TurnBasedMatchesRematch
    { _tbmrRequestId = Nothing
    , _tbmrQuotaUser = Nothing
    , _tbmrPrettyPrint = True
    , _tbmrUserIp = Nothing
    , _tbmrKey = Nothing
    , _tbmrLanguage = Nothing
    , _tbmrOauthToken = Nothing
    , _tbmrMatchId = pTbmrMatchId_
    , _tbmrFields = Nothing
    , _tbmrAlt = "json"
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
tbmrUserIp :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrUserIp
  = lens _tbmrUserIp (\ s a -> s{_tbmrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmrKey :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrKey = lens _tbmrKey (\ s a -> s{_tbmrKey = a})

-- | The preferred language to use for strings returned by this method.
tbmrLanguage :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrLanguage
  = lens _tbmrLanguage (\ s a -> s{_tbmrLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmrOauthToken :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrOauthToken
  = lens _tbmrOauthToken
      (\ s a -> s{_tbmrOauthToken = a})

-- | The ID of the match.
tbmrMatchId :: Lens' TurnBasedMatchesRematch' Text
tbmrMatchId
  = lens _tbmrMatchId (\ s a -> s{_tbmrMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmrFields :: Lens' TurnBasedMatchesRematch' (Maybe Text)
tbmrFields
  = lens _tbmrFields (\ s a -> s{_tbmrFields = a})

-- | Data format for the response.
tbmrAlt :: Lens' TurnBasedMatchesRematch' Text
tbmrAlt = lens _tbmrAlt (\ s a -> s{_tbmrAlt = a})

instance GoogleRequest TurnBasedMatchesRematch' where
        type Rs TurnBasedMatchesRematch' =
             TurnBasedMatchRematch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesRematch{..}
          = go _tbmrRequestId _tbmrQuotaUser _tbmrPrettyPrint
              _tbmrUserIp
              _tbmrKey
              _tbmrLanguage
              _tbmrOauthToken
              _tbmrMatchId
              _tbmrFields
              _tbmrAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesRematchAPI)
                      r
                      u
