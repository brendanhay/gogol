{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesManagement.Rooms.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes rooms where the only room participants are from whitelisted
-- tester accounts for your application. This method is only available to
-- user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @gamesManagement.rooms.resetForAllPlayers@.
module Network.Google.API.GamesManagement.Rooms.ResetForAllPlayers
    (
    -- * REST Resource
      RoomsResetForAllPlayersAPI

    -- * Creating a Request
    , roomsResetForAllPlayers'
    , RoomsResetForAllPlayers'

    -- * Request Lenses
    , rrfapQuotaUser
    , rrfapPrettyPrint
    , rrfapUserIp
    , rrfapKey
    , rrfapOauthToken
    , rrfapFields
    , rrfapAlt
    ) where

import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

-- | A resource alias for gamesManagement.rooms.resetForAllPlayers which the
-- 'RoomsResetForAllPlayers'' request conforms to.
type RoomsResetForAllPlayersAPI =
     "rooms" :>
       "resetForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Deletes rooms where the only room participants are from whitelisted
-- tester accounts for your application. This method is only available to
-- user accounts for your developer console.
--
-- /See:/ 'roomsResetForAllPlayers'' smart constructor.
data RoomsResetForAllPlayers' = RoomsResetForAllPlayers'
    { _rrfapQuotaUser   :: !(Maybe Text)
    , _rrfapPrettyPrint :: !Bool
    , _rrfapUserIp      :: !(Maybe Text)
    , _rrfapKey         :: !(Maybe Text)
    , _rrfapOauthToken  :: !(Maybe Text)
    , _rrfapFields      :: !(Maybe Text)
    , _rrfapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrfapQuotaUser'
--
-- * 'rrfapPrettyPrint'
--
-- * 'rrfapUserIp'
--
-- * 'rrfapKey'
--
-- * 'rrfapOauthToken'
--
-- * 'rrfapFields'
--
-- * 'rrfapAlt'
roomsResetForAllPlayers'
    :: RoomsResetForAllPlayers'
roomsResetForAllPlayers' =
    RoomsResetForAllPlayers'
    { _rrfapQuotaUser = Nothing
    , _rrfapPrettyPrint = True
    , _rrfapUserIp = Nothing
    , _rrfapKey = Nothing
    , _rrfapOauthToken = Nothing
    , _rrfapFields = Nothing
    , _rrfapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrfapQuotaUser :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapQuotaUser
  = lens _rrfapQuotaUser
      (\ s a -> s{_rrfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrfapPrettyPrint :: Lens' RoomsResetForAllPlayers' Bool
rrfapPrettyPrint
  = lens _rrfapPrettyPrint
      (\ s a -> s{_rrfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrfapUserIp :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapUserIp
  = lens _rrfapUserIp (\ s a -> s{_rrfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrfapKey :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapKey = lens _rrfapKey (\ s a -> s{_rrfapKey = a})

-- | OAuth 2.0 token for the current user.
rrfapOauthToken :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapOauthToken
  = lens _rrfapOauthToken
      (\ s a -> s{_rrfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrfapFields :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapFields
  = lens _rrfapFields (\ s a -> s{_rrfapFields = a})

-- | Data format for the response.
rrfapAlt :: Lens' RoomsResetForAllPlayers' Alt
rrfapAlt = lens _rrfapAlt (\ s a -> s{_rrfapAlt = a})

instance GoogleRequest RoomsResetForAllPlayers' where
        type Rs RoomsResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u RoomsResetForAllPlayers'{..}
          = go _rrfapQuotaUser (Just _rrfapPrettyPrint)
              _rrfapUserIp
              _rrfapKey
              _rrfapOauthToken
              _rrfapFields
              (Just _rrfapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoomsResetForAllPlayersAPI)
                      r
                      u
