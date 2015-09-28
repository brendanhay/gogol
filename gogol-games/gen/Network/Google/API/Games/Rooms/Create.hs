{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Rooms.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.create@.
module Network.Google.API.Games.Rooms.Create
    (
    -- * REST Resource
      RoomsCreateAPI

    -- * Creating a Request
    , roomsCreate'
    , RoomsCreate'

    -- * Request Lenses
    , rcQuotaUser
    , rcPrettyPrint
    , rcUserIp
    , rcKey
    , rcLanguage
    , rcOauthToken
    , rcFields
    , rcAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.rooms.create which the
-- 'RoomsCreate'' request conforms to.
type RoomsCreateAPI =
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
    { _rcQuotaUser   :: !(Maybe Text)
    , _rcPrettyPrint :: !Bool
    , _rcUserIp      :: !(Maybe Text)
    , _rcKey         :: !(Maybe Text)
    , _rcLanguage    :: !(Maybe Text)
    , _rcOauthToken  :: !(Maybe Text)
    , _rcFields      :: !(Maybe Text)
    , _rcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcQuotaUser'
--
-- * 'rcPrettyPrint'
--
-- * 'rcUserIp'
--
-- * 'rcKey'
--
-- * 'rcLanguage'
--
-- * 'rcOauthToken'
--
-- * 'rcFields'
--
-- * 'rcAlt'
roomsCreate'
    :: RoomsCreate'
roomsCreate' =
    RoomsCreate'
    { _rcQuotaUser = Nothing
    , _rcPrettyPrint = True
    , _rcUserIp = Nothing
    , _rcKey = Nothing
    , _rcLanguage = Nothing
    , _rcOauthToken = Nothing
    , _rcFields = Nothing
    , _rcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcQuotaUser :: Lens' RoomsCreate' (Maybe Text)
rcQuotaUser
  = lens _rcQuotaUser (\ s a -> s{_rcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcPrettyPrint :: Lens' RoomsCreate' Bool
rcPrettyPrint
  = lens _rcPrettyPrint
      (\ s a -> s{_rcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcUserIp :: Lens' RoomsCreate' (Maybe Text)
rcUserIp = lens _rcUserIp (\ s a -> s{_rcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcKey :: Lens' RoomsCreate' (Maybe Text)
rcKey = lens _rcKey (\ s a -> s{_rcKey = a})

-- | The preferred language to use for strings returned by this method.
rcLanguage :: Lens' RoomsCreate' (Maybe Text)
rcLanguage
  = lens _rcLanguage (\ s a -> s{_rcLanguage = a})

-- | OAuth 2.0 token for the current user.
rcOauthToken :: Lens' RoomsCreate' (Maybe Text)
rcOauthToken
  = lens _rcOauthToken (\ s a -> s{_rcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcFields :: Lens' RoomsCreate' (Maybe Text)
rcFields = lens _rcFields (\ s a -> s{_rcFields = a})

-- | Data format for the response.
rcAlt :: Lens' RoomsCreate' Alt
rcAlt = lens _rcAlt (\ s a -> s{_rcAlt = a})

instance GoogleRequest RoomsCreate' where
        type Rs RoomsCreate' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsCreate'{..}
          = go _rcQuotaUser (Just _rcPrettyPrint) _rcUserIp
              _rcKey
              _rcLanguage
              _rcOauthToken
              _rcFields
              (Just _rcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsCreateAPI) r u
