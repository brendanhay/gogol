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
-- Module      : Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers
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
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementRoomsResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers
    (
    -- * REST Resource
      RoomsResetForAllPlayersResource

    -- * Creating a Request
    , roomsResetForAllPlayers'
    , RoomsResetForAllPlayers'

    -- * Request Lenses
    , rrfapQuotaUser
    , rrfapPrettyPrint
    , rrfapUserIP
    , rrfapKey
    , rrfapOAuthToken
    , rrfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementRoomsResetForAllPlayers@ which the
-- 'RoomsResetForAllPlayers'' request conforms to.
type RoomsResetForAllPlayersResource =
     "rooms" :>
       "resetForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Deletes rooms where the only room participants are from whitelisted
-- tester accounts for your application. This method is only available to
-- user accounts for your developer console.
--
-- /See:/ 'roomsResetForAllPlayers'' smart constructor.
data RoomsResetForAllPlayers' = RoomsResetForAllPlayers'
    { _rrfapQuotaUser   :: !(Maybe Text)
    , _rrfapPrettyPrint :: !Bool
    , _rrfapUserIP      :: !(Maybe Text)
    , _rrfapKey         :: !(Maybe AuthKey)
    , _rrfapOAuthToken  :: !(Maybe OAuthToken)
    , _rrfapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrfapQuotaUser'
--
-- * 'rrfapPrettyPrint'
--
-- * 'rrfapUserIP'
--
-- * 'rrfapKey'
--
-- * 'rrfapOAuthToken'
--
-- * 'rrfapFields'
roomsResetForAllPlayers'
    :: RoomsResetForAllPlayers'
roomsResetForAllPlayers' =
    RoomsResetForAllPlayers'
    { _rrfapQuotaUser = Nothing
    , _rrfapPrettyPrint = True
    , _rrfapUserIP = Nothing
    , _rrfapKey = Nothing
    , _rrfapOAuthToken = Nothing
    , _rrfapFields = Nothing
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
rrfapUserIP :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapUserIP
  = lens _rrfapUserIP (\ s a -> s{_rrfapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrfapKey :: Lens' RoomsResetForAllPlayers' (Maybe AuthKey)
rrfapKey = lens _rrfapKey (\ s a -> s{_rrfapKey = a})

-- | OAuth 2.0 token for the current user.
rrfapOAuthToken :: Lens' RoomsResetForAllPlayers' (Maybe OAuthToken)
rrfapOAuthToken
  = lens _rrfapOAuthToken
      (\ s a -> s{_rrfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrfapFields :: Lens' RoomsResetForAllPlayers' (Maybe Text)
rrfapFields
  = lens _rrfapFields (\ s a -> s{_rrfapFields = a})

instance GoogleAuth RoomsResetForAllPlayers' where
        authKey = rrfapKey . _Just
        authToken = rrfapOAuthToken . _Just

instance GoogleRequest RoomsResetForAllPlayers' where
        type Rs RoomsResetForAllPlayers' = ()
        request = requestWith gamesManagementRequest
        requestWith rq RoomsResetForAllPlayers'{..}
          = go _rrfapQuotaUser (Just _rrfapPrettyPrint)
              _rrfapUserIP
              _rrfapFields
              _rrfapKey
              _rrfapOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy RoomsResetForAllPlayersResource)
                      rq
