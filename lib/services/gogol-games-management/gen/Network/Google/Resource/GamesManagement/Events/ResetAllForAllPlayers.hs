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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft events for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
    (
    -- * REST Resource
      EventsResetAllForAllPlayersResource

    -- * Creating a Request
    , eventsResetAllForAllPlayers
    , EventsResetAllForAllPlayers

    -- * Request Lenses
    , erafapXgafv
    , erafapUploadProtocol
    , erafapAccessToken
    , erafapUploadType
    , erafapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetAllForAllPlayers@ method which the
-- 'EventsResetAllForAllPlayers' request conforms to.
type EventsResetAllForAllPlayersResource =
     "games" :>
       "v1management" :>
         "events" :>
           "resetAllForAllPlayers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft events for all players. This method is only available
-- to user accounts for your developer console.
--
-- /See:/ 'eventsResetAllForAllPlayers' smart constructor.
data EventsResetAllForAllPlayers =
  EventsResetAllForAllPlayers'
    { _erafapXgafv :: !(Maybe Xgafv)
    , _erafapUploadProtocol :: !(Maybe Text)
    , _erafapAccessToken :: !(Maybe Text)
    , _erafapUploadType :: !(Maybe Text)
    , _erafapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsResetAllForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erafapXgafv'
--
-- * 'erafapUploadProtocol'
--
-- * 'erafapAccessToken'
--
-- * 'erafapUploadType'
--
-- * 'erafapCallback'
eventsResetAllForAllPlayers
    :: EventsResetAllForAllPlayers
eventsResetAllForAllPlayers =
  EventsResetAllForAllPlayers'
    { _erafapXgafv = Nothing
    , _erafapUploadProtocol = Nothing
    , _erafapAccessToken = Nothing
    , _erafapUploadType = Nothing
    , _erafapCallback = Nothing
    }


-- | V1 error format.
erafapXgafv :: Lens' EventsResetAllForAllPlayers (Maybe Xgafv)
erafapXgafv
  = lens _erafapXgafv (\ s a -> s{_erafapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
erafapUploadProtocol :: Lens' EventsResetAllForAllPlayers (Maybe Text)
erafapUploadProtocol
  = lens _erafapUploadProtocol
      (\ s a -> s{_erafapUploadProtocol = a})

-- | OAuth access token.
erafapAccessToken :: Lens' EventsResetAllForAllPlayers (Maybe Text)
erafapAccessToken
  = lens _erafapAccessToken
      (\ s a -> s{_erafapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
erafapUploadType :: Lens' EventsResetAllForAllPlayers (Maybe Text)
erafapUploadType
  = lens _erafapUploadType
      (\ s a -> s{_erafapUploadType = a})

-- | JSONP
erafapCallback :: Lens' EventsResetAllForAllPlayers (Maybe Text)
erafapCallback
  = lens _erafapCallback
      (\ s a -> s{_erafapCallback = a})

instance GoogleRequest EventsResetAllForAllPlayers
         where
        type Rs EventsResetAllForAllPlayers = ()
        type Scopes EventsResetAllForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsResetAllForAllPlayers'{..}
          = go _erafapXgafv _erafapUploadProtocol
              _erafapAccessToken
              _erafapUploadType
              _erafapCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsResetAllForAllPlayersResource)
                      mempty
