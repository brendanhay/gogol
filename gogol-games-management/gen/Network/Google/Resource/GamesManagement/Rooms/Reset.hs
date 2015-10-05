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
-- Module      : Network.Google.Resource.GamesManagement.Rooms.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reset all rooms for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementRoomsReset@.
module Network.Google.Resource.GamesManagement.Rooms.Reset
    (
    -- * REST Resource
      RoomsResetResource

    -- * Creating a Request
    , roomsReset'
    , RoomsReset'

    -- * Request Lenses
    , rrQuotaUser
    , rrPrettyPrint
    , rrUserIP
    , rrKey
    , rrOAuthToken
    , rrFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementRoomsReset@ which the
-- 'RoomsReset'' request conforms to.
type RoomsResetResource =
     "rooms" :>
       "reset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Reset all rooms for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ 'roomsReset'' smart constructor.
data RoomsReset' = RoomsReset'
    { _rrQuotaUser   :: !(Maybe Text)
    , _rrPrettyPrint :: !Bool
    , _rrUserIP      :: !(Maybe Text)
    , _rrKey         :: !(Maybe AuthKey)
    , _rrOAuthToken  :: !(Maybe OAuthToken)
    , _rrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrQuotaUser'
--
-- * 'rrPrettyPrint'
--
-- * 'rrUserIP'
--
-- * 'rrKey'
--
-- * 'rrOAuthToken'
--
-- * 'rrFields'
roomsReset'
    :: RoomsReset'
roomsReset' =
    RoomsReset'
    { _rrQuotaUser = Nothing
    , _rrPrettyPrint = True
    , _rrUserIP = Nothing
    , _rrKey = Nothing
    , _rrOAuthToken = Nothing
    , _rrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrQuotaUser :: Lens' RoomsReset' (Maybe Text)
rrQuotaUser
  = lens _rrQuotaUser (\ s a -> s{_rrQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrPrettyPrint :: Lens' RoomsReset' Bool
rrPrettyPrint
  = lens _rrPrettyPrint
      (\ s a -> s{_rrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrUserIP :: Lens' RoomsReset' (Maybe Text)
rrUserIP = lens _rrUserIP (\ s a -> s{_rrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrKey :: Lens' RoomsReset' (Maybe AuthKey)
rrKey = lens _rrKey (\ s a -> s{_rrKey = a})

-- | OAuth 2.0 token for the current user.
rrOAuthToken :: Lens' RoomsReset' (Maybe OAuthToken)
rrOAuthToken
  = lens _rrOAuthToken (\ s a -> s{_rrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrFields :: Lens' RoomsReset' (Maybe Text)
rrFields = lens _rrFields (\ s a -> s{_rrFields = a})

instance GoogleAuth RoomsReset' where
        authKey = rrKey . _Just
        authToken = rrOAuthToken . _Just

instance GoogleRequest RoomsReset' where
        type Rs RoomsReset' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u RoomsReset'{..}
          = go _rrQuotaUser (Just _rrPrettyPrint) _rrUserIP
              _rrFields
              _rrKey
              _rrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsResetResource)
                      r
                      u
