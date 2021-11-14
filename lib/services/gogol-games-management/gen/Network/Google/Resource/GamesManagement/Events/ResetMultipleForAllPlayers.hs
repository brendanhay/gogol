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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      EventsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , eventsResetMultipleForAllPlayers
    , EventsResetMultipleForAllPlayers

    -- * Request Lenses
    , ermfapXgafv
    , ermfapUploadProtocol
    , ermfapAccessToken
    , ermfapUploadType
    , ermfapPayload
    , ermfapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetMultipleForAllPlayers@ method which the
-- 'EventsResetMultipleForAllPlayers' request conforms to.
type EventsResetMultipleForAllPlayersResource =
     "games" :>
       "v1management" :>
         "events" :>
           "resetMultipleForAllPlayers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EventsResetMultipleForAllRequest :>
                           Post '[JSON] ()

-- | Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset.
--
-- /See:/ 'eventsResetMultipleForAllPlayers' smart constructor.
data EventsResetMultipleForAllPlayers =
  EventsResetMultipleForAllPlayers'
    { _ermfapXgafv :: !(Maybe Xgafv)
    , _ermfapUploadProtocol :: !(Maybe Text)
    , _ermfapAccessToken :: !(Maybe Text)
    , _ermfapUploadType :: !(Maybe Text)
    , _ermfapPayload :: !EventsResetMultipleForAllRequest
    , _ermfapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsResetMultipleForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermfapXgafv'
--
-- * 'ermfapUploadProtocol'
--
-- * 'ermfapAccessToken'
--
-- * 'ermfapUploadType'
--
-- * 'ermfapPayload'
--
-- * 'ermfapCallback'
eventsResetMultipleForAllPlayers
    :: EventsResetMultipleForAllRequest -- ^ 'ermfapPayload'
    -> EventsResetMultipleForAllPlayers
eventsResetMultipleForAllPlayers pErmfapPayload_ =
  EventsResetMultipleForAllPlayers'
    { _ermfapXgafv = Nothing
    , _ermfapUploadProtocol = Nothing
    , _ermfapAccessToken = Nothing
    , _ermfapUploadType = Nothing
    , _ermfapPayload = pErmfapPayload_
    , _ermfapCallback = Nothing
    }


-- | V1 error format.
ermfapXgafv :: Lens' EventsResetMultipleForAllPlayers (Maybe Xgafv)
ermfapXgafv
  = lens _ermfapXgafv (\ s a -> s{_ermfapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ermfapUploadProtocol :: Lens' EventsResetMultipleForAllPlayers (Maybe Text)
ermfapUploadProtocol
  = lens _ermfapUploadProtocol
      (\ s a -> s{_ermfapUploadProtocol = a})

-- | OAuth access token.
ermfapAccessToken :: Lens' EventsResetMultipleForAllPlayers (Maybe Text)
ermfapAccessToken
  = lens _ermfapAccessToken
      (\ s a -> s{_ermfapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ermfapUploadType :: Lens' EventsResetMultipleForAllPlayers (Maybe Text)
ermfapUploadType
  = lens _ermfapUploadType
      (\ s a -> s{_ermfapUploadType = a})

-- | Multipart request metadata.
ermfapPayload :: Lens' EventsResetMultipleForAllPlayers EventsResetMultipleForAllRequest
ermfapPayload
  = lens _ermfapPayload
      (\ s a -> s{_ermfapPayload = a})

-- | JSONP
ermfapCallback :: Lens' EventsResetMultipleForAllPlayers (Maybe Text)
ermfapCallback
  = lens _ermfapCallback
      (\ s a -> s{_ermfapCallback = a})

instance GoogleRequest
           EventsResetMultipleForAllPlayers
         where
        type Rs EventsResetMultipleForAllPlayers = ()
        type Scopes EventsResetMultipleForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsResetMultipleForAllPlayers'{..}
          = go _ermfapXgafv _ermfapUploadProtocol
              _ermfapAccessToken
              _ermfapUploadType
              _ermfapCallback
              (Just AltJSON)
              _ermfapPayload
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EventsResetMultipleForAllPlayersResource)
                      mempty
