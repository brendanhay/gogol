{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Games.TurnBasedMatches.Dismiss
    (
    -- * REST Resource
      TurnBasedMatchesDismissResource

    -- * Creating a Request
    , turnBasedMatchesDismiss'
    , TurnBasedMatchesDismiss'

    -- * Request Lenses
    , tbmdQuotaUser
    , tbmdPrettyPrint
    , tbmdUserIp
    , tbmdKey
    , tbmdOauthToken
    , tbmdMatchId
    , tbmdFields
    , tbmdAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDismiss@ which the
-- 'TurnBasedMatchesDismiss'' request conforms to.
type TurnBasedMatchesDismissResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "dismiss" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] ()

-- | Dismiss a turn-based match from the match list. The match will no longer
-- show up in the list and will not generate notifications.
--
-- /See:/ 'turnBasedMatchesDismiss'' smart constructor.
data TurnBasedMatchesDismiss' = TurnBasedMatchesDismiss'
    { _tbmdQuotaUser   :: !(Maybe Text)
    , _tbmdPrettyPrint :: !Bool
    , _tbmdUserIp      :: !(Maybe Text)
    , _tbmdKey         :: !(Maybe Text)
    , _tbmdOauthToken  :: !(Maybe Text)
    , _tbmdMatchId     :: !Text
    , _tbmdFields      :: !(Maybe Text)
    , _tbmdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdQuotaUser'
--
-- * 'tbmdPrettyPrint'
--
-- * 'tbmdUserIp'
--
-- * 'tbmdKey'
--
-- * 'tbmdOauthToken'
--
-- * 'tbmdMatchId'
--
-- * 'tbmdFields'
--
-- * 'tbmdAlt'
turnBasedMatchesDismiss'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDismiss'
turnBasedMatchesDismiss' pTbmdMatchId_ =
    TurnBasedMatchesDismiss'
    { _tbmdQuotaUser = Nothing
    , _tbmdPrettyPrint = True
    , _tbmdUserIp = Nothing
    , _tbmdKey = Nothing
    , _tbmdOauthToken = Nothing
    , _tbmdMatchId = pTbmdMatchId_
    , _tbmdFields = Nothing
    , _tbmdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmdQuotaUser :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdQuotaUser
  = lens _tbmdQuotaUser
      (\ s a -> s{_tbmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmdPrettyPrint :: Lens' TurnBasedMatchesDismiss' Bool
tbmdPrettyPrint
  = lens _tbmdPrettyPrint
      (\ s a -> s{_tbmdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmdUserIp :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdUserIp
  = lens _tbmdUserIp (\ s a -> s{_tbmdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmdKey :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdKey = lens _tbmdKey (\ s a -> s{_tbmdKey = a})

-- | OAuth 2.0 token for the current user.
tbmdOauthToken :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdOauthToken
  = lens _tbmdOauthToken
      (\ s a -> s{_tbmdOauthToken = a})

-- | The ID of the match.
tbmdMatchId :: Lens' TurnBasedMatchesDismiss' Text
tbmdMatchId
  = lens _tbmdMatchId (\ s a -> s{_tbmdMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmdFields :: Lens' TurnBasedMatchesDismiss' (Maybe Text)
tbmdFields
  = lens _tbmdFields (\ s a -> s{_tbmdFields = a})

-- | Data format for the response.
tbmdAlt :: Lens' TurnBasedMatchesDismiss' Alt
tbmdAlt = lens _tbmdAlt (\ s a -> s{_tbmdAlt = a})

instance GoogleRequest TurnBasedMatchesDismiss' where
        type Rs TurnBasedMatchesDismiss' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesDismiss'{..}
          = go _tbmdQuotaUser (Just _tbmdPrettyPrint)
              _tbmdUserIp
              _tbmdKey
              _tbmdOauthToken
              _tbmdMatchId
              _tbmdFields
              (Just _tbmdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesDismissResource)
                      r
                      u
