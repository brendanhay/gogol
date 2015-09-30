{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesDismiss@.
module Games.TurnBasedMatches.Dismiss
    (
    -- * REST Resource
      TurnBasedMatchesDismissAPI

    -- * Creating a Request
    , turnBasedMatchesDismiss
    , TurnBasedMatchesDismiss

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tOauthToken
    , tMatchId
    , tFields
    , tAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDismiss@ which the
-- 'TurnBasedMatchesDismiss' request conforms to.
type TurnBasedMatchesDismissAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :> "dismiss" :> Put '[JSON] ()

-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ 'turnBasedMatchesDismiss' smart constructor.
data TurnBasedMatchesDismiss = TurnBasedMatchesDismiss
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tOauthToken  :: !(Maybe Text)
    , _tMatchId     :: !Text
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tOauthToken'
--
-- * 'tMatchId'
--
-- * 'tFields'
--
-- * 'tAlt'
turnBasedMatchesDismiss
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDismiss
turnBasedMatchesDismiss pTMatchId_ =
    TurnBasedMatchesDismiss
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tOauthToken = Nothing
    , _tMatchId = pTMatchId_
    , _tFields = Nothing
    , _tAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TurnBasedMatchesDismiss' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | The ID of the match.
tMatchId :: Lens' TurnBasedMatchesDismiss' Text
tMatchId = lens _tMatchId (\ s a -> s{_tMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TurnBasedMatchesDismiss' Text
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TurnBasedMatchesDismiss' where
        type Rs TurnBasedMatchesDismiss' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesDismiss{..}
          = go _tQuotaUser _tPrettyPrint _tUserIp _tKey
              _tOauthToken
              _tMatchId
              _tFields
              _tAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesDismissAPI)
                      r
                      u
