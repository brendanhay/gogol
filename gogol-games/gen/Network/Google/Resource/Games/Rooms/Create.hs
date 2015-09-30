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
-- Module      : Network.Google.Resource.Games.Rooms.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsCreate@.
module Network.Google.Resource.Games.Rooms.Create
    (
    -- * REST Resource
      RoomsCreateResource

    -- * Creating a Request
    , roomsCreate'
    , RoomsCreate'

    -- * Request Lenses
    , rooQuotaUser
    , rooPrettyPrint
    , rooUserIp
    , rooKey
    , rooLanguage
    , rooOauthToken
    , rooFields
    , rooAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsCreate@ which the
-- 'RoomsCreate'' request conforms to.
type RoomsCreateResource =
     "rooms" :>
       "create" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Room

-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsCreate'' smart constructor.
data RoomsCreate' = RoomsCreate'
    { _rooQuotaUser   :: !(Maybe Text)
    , _rooPrettyPrint :: !Bool
    , _rooUserIp      :: !(Maybe Text)
    , _rooKey         :: !(Maybe Text)
    , _rooLanguage    :: !(Maybe Text)
    , _rooOauthToken  :: !(Maybe Text)
    , _rooFields      :: !(Maybe Text)
    , _rooAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooQuotaUser'
--
-- * 'rooPrettyPrint'
--
-- * 'rooUserIp'
--
-- * 'rooKey'
--
-- * 'rooLanguage'
--
-- * 'rooOauthToken'
--
-- * 'rooFields'
--
-- * 'rooAlt'
roomsCreate'
    :: RoomsCreate'
roomsCreate' =
    RoomsCreate'
    { _rooQuotaUser = Nothing
    , _rooPrettyPrint = True
    , _rooUserIp = Nothing
    , _rooKey = Nothing
    , _rooLanguage = Nothing
    , _rooOauthToken = Nothing
    , _rooFields = Nothing
    , _rooAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rooQuotaUser :: Lens' RoomsCreate' (Maybe Text)
rooQuotaUser
  = lens _rooQuotaUser (\ s a -> s{_rooQuotaUser = a})

-- | Returns response with indentations and line breaks.
rooPrettyPrint :: Lens' RoomsCreate' Bool
rooPrettyPrint
  = lens _rooPrettyPrint
      (\ s a -> s{_rooPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rooUserIp :: Lens' RoomsCreate' (Maybe Text)
rooUserIp
  = lens _rooUserIp (\ s a -> s{_rooUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rooKey :: Lens' RoomsCreate' (Maybe Text)
rooKey = lens _rooKey (\ s a -> s{_rooKey = a})

-- | The preferred language to use for strings returned by this method.
rooLanguage :: Lens' RoomsCreate' (Maybe Text)
rooLanguage
  = lens _rooLanguage (\ s a -> s{_rooLanguage = a})

-- | OAuth 2.0 token for the current user.
rooOauthToken :: Lens' RoomsCreate' (Maybe Text)
rooOauthToken
  = lens _rooOauthToken
      (\ s a -> s{_rooOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rooFields :: Lens' RoomsCreate' (Maybe Text)
rooFields
  = lens _rooFields (\ s a -> s{_rooFields = a})

-- | Data format for the response.
rooAlt :: Lens' RoomsCreate' Alt
rooAlt = lens _rooAlt (\ s a -> s{_rooAlt = a})

instance GoogleRequest RoomsCreate' where
        type Rs RoomsCreate' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsCreate'{..}
          = go _rooQuotaUser (Just _rooPrettyPrint) _rooUserIp
              _rooKey
              _rooLanguage
              _rooOauthToken
              _rooFields
              (Just _rooAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoomsCreateResource)
                      r
                      u
