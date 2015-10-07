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
-- Module      : Network.Google.Resource.Games.Rooms.ReportStatus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsReportStatus@.
module Network.Google.Resource.Games.Rooms.ReportStatus
    (
    -- * REST Resource
      RoomsReportStatusResource

    -- * Creating a Request
    , roomsReportStatus'
    , RoomsReportStatus'

    -- * Request Lenses
    , rrsQuotaUser
    , rrsPrettyPrint
    , rrsUserIP
    , rrsPayload
    , rrsKey
    , rrsRoomId
    , rrsLanguage
    , rrsOAuthToken
    , rrsFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsReportStatus@ method which the
-- 'RoomsReportStatus'' request conforms to.
type RoomsReportStatusResource =
     "rooms" :>
       Capture "roomId" Text :>
         "reportstatus" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RoomP2PStatuses :>
                             Post '[JSON] RoomStatus

-- | Updates sent by a client reporting the status of peers in a room. For
-- internal use by the Games SDK only. Calling this method directly is
-- unsupported.
--
-- /See:/ 'roomsReportStatus'' smart constructor.
data RoomsReportStatus' = RoomsReportStatus'
    { _rrsQuotaUser   :: !(Maybe Text)
    , _rrsPrettyPrint :: !Bool
    , _rrsUserIP      :: !(Maybe Text)
    , _rrsPayload     :: !RoomP2PStatuses
    , _rrsKey         :: !(Maybe AuthKey)
    , _rrsRoomId      :: !Text
    , _rrsLanguage    :: !(Maybe Text)
    , _rrsOAuthToken  :: !(Maybe OAuthToken)
    , _rrsFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsReportStatus'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsQuotaUser'
--
-- * 'rrsPrettyPrint'
--
-- * 'rrsUserIP'
--
-- * 'rrsPayload'
--
-- * 'rrsKey'
--
-- * 'rrsRoomId'
--
-- * 'rrsLanguage'
--
-- * 'rrsOAuthToken'
--
-- * 'rrsFields'
roomsReportStatus'
    :: RoomP2PStatuses -- ^ 'payload'
    -> Text -- ^ 'roomId'
    -> RoomsReportStatus'
roomsReportStatus' pRrsPayload_ pRrsRoomId_ =
    RoomsReportStatus'
    { _rrsQuotaUser = Nothing
    , _rrsPrettyPrint = True
    , _rrsUserIP = Nothing
    , _rrsPayload = pRrsPayload_
    , _rrsKey = Nothing
    , _rrsRoomId = pRrsRoomId_
    , _rrsLanguage = Nothing
    , _rrsOAuthToken = Nothing
    , _rrsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrsQuotaUser :: Lens' RoomsReportStatus' (Maybe Text)
rrsQuotaUser
  = lens _rrsQuotaUser (\ s a -> s{_rrsQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrsPrettyPrint :: Lens' RoomsReportStatus' Bool
rrsPrettyPrint
  = lens _rrsPrettyPrint
      (\ s a -> s{_rrsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrsUserIP :: Lens' RoomsReportStatus' (Maybe Text)
rrsUserIP
  = lens _rrsUserIP (\ s a -> s{_rrsUserIP = a})

-- | Multipart request metadata.
rrsPayload :: Lens' RoomsReportStatus' RoomP2PStatuses
rrsPayload
  = lens _rrsPayload (\ s a -> s{_rrsPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrsKey :: Lens' RoomsReportStatus' (Maybe AuthKey)
rrsKey = lens _rrsKey (\ s a -> s{_rrsKey = a})

-- | The ID of the room.
rrsRoomId :: Lens' RoomsReportStatus' Text
rrsRoomId
  = lens _rrsRoomId (\ s a -> s{_rrsRoomId = a})

-- | The preferred language to use for strings returned by this method.
rrsLanguage :: Lens' RoomsReportStatus' (Maybe Text)
rrsLanguage
  = lens _rrsLanguage (\ s a -> s{_rrsLanguage = a})

-- | OAuth 2.0 token for the current user.
rrsOAuthToken :: Lens' RoomsReportStatus' (Maybe OAuthToken)
rrsOAuthToken
  = lens _rrsOAuthToken
      (\ s a -> s{_rrsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrsFields :: Lens' RoomsReportStatus' (Maybe Text)
rrsFields
  = lens _rrsFields (\ s a -> s{_rrsFields = a})

instance GoogleAuth RoomsReportStatus' where
        _AuthKey = rrsKey . _Just
        _AuthToken = rrsOAuthToken . _Just

instance GoogleRequest RoomsReportStatus' where
        type Rs RoomsReportStatus' = RoomStatus
        request = requestWith gamesRequest
        requestWith rq RoomsReportStatus'{..}
          = go _rrsRoomId _rrsLanguage _rrsQuotaUser
              (Just _rrsPrettyPrint)
              _rrsUserIP
              _rrsFields
              _rrsKey
              _rrsOAuthToken
              (Just AltJSON)
              _rrsPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy RoomsReportStatusResource)
                      rq
