{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancel a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesCancel@.
module Games.TurnBasedMatches.Cancel
    (
    -- * REST Resource
      TurnBasedMatchesCancelAPI

    -- * Creating a Request
    , turnBasedMatchesCancel
    , TurnBasedMatchesCancel

    -- * Request Lenses
    , tbmcbQuotaUser
    , tbmcbPrettyPrint
    , tbmcbUserIp
    , tbmcbKey
    , tbmcbOauthToken
    , tbmcbMatchId
    , tbmcbFields
    , tbmcbAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesCancel@ which the
-- 'TurnBasedMatchesCancel' request conforms to.
type TurnBasedMatchesCancelAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :> "cancel" :> Put '[JSON] ()

-- | Cancel a turn-based match.
--
-- /See:/ 'turnBasedMatchesCancel' smart constructor.
data TurnBasedMatchesCancel = TurnBasedMatchesCancel
    { _tbmcbQuotaUser   :: !(Maybe Text)
    , _tbmcbPrettyPrint :: !Bool
    , _tbmcbUserIp      :: !(Maybe Text)
    , _tbmcbKey         :: !(Maybe Text)
    , _tbmcbOauthToken  :: !(Maybe Text)
    , _tbmcbMatchId     :: !Text
    , _tbmcbFields      :: !(Maybe Text)
    , _tbmcbAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcbQuotaUser'
--
-- * 'tbmcbPrettyPrint'
--
-- * 'tbmcbUserIp'
--
-- * 'tbmcbKey'
--
-- * 'tbmcbOauthToken'
--
-- * 'tbmcbMatchId'
--
-- * 'tbmcbFields'
--
-- * 'tbmcbAlt'
turnBasedMatchesCancel
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesCancel
turnBasedMatchesCancel pTbmcbMatchId_ =
    TurnBasedMatchesCancel
    { _tbmcbQuotaUser = Nothing
    , _tbmcbPrettyPrint = True
    , _tbmcbUserIp = Nothing
    , _tbmcbKey = Nothing
    , _tbmcbOauthToken = Nothing
    , _tbmcbMatchId = pTbmcbMatchId_
    , _tbmcbFields = Nothing
    , _tbmcbAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmcbQuotaUser :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcbQuotaUser
  = lens _tbmcbQuotaUser
      (\ s a -> s{_tbmcbQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmcbPrettyPrint :: Lens' TurnBasedMatchesCancel' Bool
tbmcbPrettyPrint
  = lens _tbmcbPrettyPrint
      (\ s a -> s{_tbmcbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmcbUserIp :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcbUserIp
  = lens _tbmcbUserIp (\ s a -> s{_tbmcbUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmcbKey :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcbKey = lens _tbmcbKey (\ s a -> s{_tbmcbKey = a})

-- | OAuth 2.0 token for the current user.
tbmcbOauthToken :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcbOauthToken
  = lens _tbmcbOauthToken
      (\ s a -> s{_tbmcbOauthToken = a})

-- | The ID of the match.
tbmcbMatchId :: Lens' TurnBasedMatchesCancel' Text
tbmcbMatchId
  = lens _tbmcbMatchId (\ s a -> s{_tbmcbMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmcbFields :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcbFields
  = lens _tbmcbFields (\ s a -> s{_tbmcbFields = a})

-- | Data format for the response.
tbmcbAlt :: Lens' TurnBasedMatchesCancel' Text
tbmcbAlt = lens _tbmcbAlt (\ s a -> s{_tbmcbAlt = a})

instance GoogleRequest TurnBasedMatchesCancel' where
        type Rs TurnBasedMatchesCancel' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesCancel{..}
          = go _tbmcbQuotaUser _tbmcbPrettyPrint _tbmcbUserIp
              _tbmcbKey
              _tbmcbOauthToken
              _tbmcbMatchId
              _tbmcbFields
              _tbmcbAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesCancelAPI)
                      r
                      u
