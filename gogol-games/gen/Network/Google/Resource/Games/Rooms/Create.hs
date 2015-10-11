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
    , rooUserIP
    , rooPayload
    , rooKey
    , rooLanguage
    , rooOAuthToken
    , rooFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsCreate@ method which the
-- 'RoomsCreate'' request conforms to.
type RoomsCreateResource =
     "rooms" :>
       "create" :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RoomCreateRequest :>
                           Post '[JSON] Room

-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsCreate'' smart constructor.
data RoomsCreate' = RoomsCreate'
    { _rooQuotaUser   :: !(Maybe Text)
    , _rooPrettyPrint :: !Bool
    , _rooUserIP      :: !(Maybe Text)
    , _rooPayload     :: !RoomCreateRequest
    , _rooKey         :: !(Maybe AuthKey)
    , _rooLanguage    :: !(Maybe Text)
    , _rooOAuthToken  :: !(Maybe OAuthToken)
    , _rooFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooQuotaUser'
--
-- * 'rooPrettyPrint'
--
-- * 'rooUserIP'
--
-- * 'rooPayload'
--
-- * 'rooKey'
--
-- * 'rooLanguage'
--
-- * 'rooOAuthToken'
--
-- * 'rooFields'
roomsCreate'
    :: RoomCreateRequest -- ^ 'payload'
    -> RoomsCreate'
roomsCreate' pRooPayload_ =
    RoomsCreate'
    { _rooQuotaUser = Nothing
    , _rooPrettyPrint = True
    , _rooUserIP = Nothing
    , _rooPayload = pRooPayload_
    , _rooKey = Nothing
    , _rooLanguage = Nothing
    , _rooOAuthToken = Nothing
    , _rooFields = Nothing
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
rooUserIP :: Lens' RoomsCreate' (Maybe Text)
rooUserIP
  = lens _rooUserIP (\ s a -> s{_rooUserIP = a})

-- | Multipart request metadata.
rooPayload :: Lens' RoomsCreate' RoomCreateRequest
rooPayload
  = lens _rooPayload (\ s a -> s{_rooPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rooKey :: Lens' RoomsCreate' (Maybe AuthKey)
rooKey = lens _rooKey (\ s a -> s{_rooKey = a})

-- | The preferred language to use for strings returned by this method.
rooLanguage :: Lens' RoomsCreate' (Maybe Text)
rooLanguage
  = lens _rooLanguage (\ s a -> s{_rooLanguage = a})

-- | OAuth 2.0 token for the current user.
rooOAuthToken :: Lens' RoomsCreate' (Maybe OAuthToken)
rooOAuthToken
  = lens _rooOAuthToken
      (\ s a -> s{_rooOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rooFields :: Lens' RoomsCreate' (Maybe Text)
rooFields
  = lens _rooFields (\ s a -> s{_rooFields = a})

instance GoogleAuth RoomsCreate' where
        _AuthKey = rooKey . _Just
        _AuthToken = rooOAuthToken . _Just

instance GoogleRequest RoomsCreate' where
        type Rs RoomsCreate' = Room
        request = requestWith gamesRequest
        requestWith rq RoomsCreate'{..}
          = go _rooLanguage _rooQuotaUser
              (Just _rooPrettyPrint)
              _rooUserIP
              _rooFields
              _rooKey
              _rooOAuthToken
              (Just AltJSON)
              _rooPayload
          where go
                  = clientBuild (Proxy :: Proxy RoomsCreateResource) rq
