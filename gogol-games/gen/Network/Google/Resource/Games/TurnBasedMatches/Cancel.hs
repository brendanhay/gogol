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
module Network.Google.Resource.Games.TurnBasedMatches.Cancel
    (
    -- * REST Resource
      TurnBasedMatchesCancelResource

    -- * Creating a Request
    , turnBasedMatchesCancel'
    , TurnBasedMatchesCancel'

    -- * Request Lenses
    , tbmcQuotaUser
    , tbmcPrettyPrint
    , tbmcUserIp
    , tbmcKey
    , tbmcOauthToken
    , tbmcMatchId
    , tbmcFields
    , tbmcAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesCancel@ which the
-- 'TurnBasedMatchesCancel'' request conforms to.
type TurnBasedMatchesCancelResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "cancel" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] ()

-- | Cancel a turn-based match.
--
-- /See:/ 'turnBasedMatchesCancel'' smart constructor.
data TurnBasedMatchesCancel' = TurnBasedMatchesCancel'
    { _tbmcQuotaUser   :: !(Maybe Text)
    , _tbmcPrettyPrint :: !Bool
    , _tbmcUserIp      :: !(Maybe Text)
    , _tbmcKey         :: !(Maybe Text)
    , _tbmcOauthToken  :: !(Maybe Text)
    , _tbmcMatchId     :: !Text
    , _tbmcFields      :: !(Maybe Text)
    , _tbmcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcQuotaUser'
--
-- * 'tbmcPrettyPrint'
--
-- * 'tbmcUserIp'
--
-- * 'tbmcKey'
--
-- * 'tbmcOauthToken'
--
-- * 'tbmcMatchId'
--
-- * 'tbmcFields'
--
-- * 'tbmcAlt'
turnBasedMatchesCancel'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesCancel'
turnBasedMatchesCancel' pTbmcMatchId_ =
    TurnBasedMatchesCancel'
    { _tbmcQuotaUser = Nothing
    , _tbmcPrettyPrint = True
    , _tbmcUserIp = Nothing
    , _tbmcKey = Nothing
    , _tbmcOauthToken = Nothing
    , _tbmcMatchId = pTbmcMatchId_
    , _tbmcFields = Nothing
    , _tbmcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmcQuotaUser :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcQuotaUser
  = lens _tbmcQuotaUser
      (\ s a -> s{_tbmcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmcPrettyPrint :: Lens' TurnBasedMatchesCancel' Bool
tbmcPrettyPrint
  = lens _tbmcPrettyPrint
      (\ s a -> s{_tbmcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmcUserIp :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcUserIp
  = lens _tbmcUserIp (\ s a -> s{_tbmcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmcKey :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcKey = lens _tbmcKey (\ s a -> s{_tbmcKey = a})

-- | OAuth 2.0 token for the current user.
tbmcOauthToken :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcOauthToken
  = lens _tbmcOauthToken
      (\ s a -> s{_tbmcOauthToken = a})

-- | The ID of the match.
tbmcMatchId :: Lens' TurnBasedMatchesCancel' Text
tbmcMatchId
  = lens _tbmcMatchId (\ s a -> s{_tbmcMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmcFields :: Lens' TurnBasedMatchesCancel' (Maybe Text)
tbmcFields
  = lens _tbmcFields (\ s a -> s{_tbmcFields = a})

-- | Data format for the response.
tbmcAlt :: Lens' TurnBasedMatchesCancel' Alt
tbmcAlt = lens _tbmcAlt (\ s a -> s{_tbmcAlt = a})

instance GoogleRequest TurnBasedMatchesCancel' where
        type Rs TurnBasedMatchesCancel' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesCancel'{..}
          = go _tbmcQuotaUser (Just _tbmcPrettyPrint)
              _tbmcUserIp
              _tbmcKey
              _tbmcOauthToken
              _tbmcMatchId
              _tbmcFields
              (Just _tbmcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesCancelResource)
                      r
                      u
