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
-- Module      : Network.Google.Resource.GamesManagement.Events.ResetAll
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetAll@.
module Network.Google.Resource.GamesManagement.Events.ResetAll
    (
    -- * REST Resource
      EventsResetAllResource

    -- * Creating a Request
    , eventsResetAll
    , EventsResetAll

    -- * Request Lenses
    , eraXgafv
    , eraUploadProtocol
    , eraAccessToken
    , eraUploadType
    , eraCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.resetAll@ method which the
-- 'EventsResetAll' request conforms to.
type EventsResetAllResource =
     "games" :>
       "v1management" :>
         "events" :>
           "reset" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'eventsResetAll' smart constructor.
data EventsResetAll =
  EventsResetAll'
    { _eraXgafv :: !(Maybe Xgafv)
    , _eraUploadProtocol :: !(Maybe Text)
    , _eraAccessToken :: !(Maybe Text)
    , _eraUploadType :: !(Maybe Text)
    , _eraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsResetAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eraXgafv'
--
-- * 'eraUploadProtocol'
--
-- * 'eraAccessToken'
--
-- * 'eraUploadType'
--
-- * 'eraCallback'
eventsResetAll
    :: EventsResetAll
eventsResetAll =
  EventsResetAll'
    { _eraXgafv = Nothing
    , _eraUploadProtocol = Nothing
    , _eraAccessToken = Nothing
    , _eraUploadType = Nothing
    , _eraCallback = Nothing
    }


-- | V1 error format.
eraXgafv :: Lens' EventsResetAll (Maybe Xgafv)
eraXgafv = lens _eraXgafv (\ s a -> s{_eraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eraUploadProtocol :: Lens' EventsResetAll (Maybe Text)
eraUploadProtocol
  = lens _eraUploadProtocol
      (\ s a -> s{_eraUploadProtocol = a})

-- | OAuth access token.
eraAccessToken :: Lens' EventsResetAll (Maybe Text)
eraAccessToken
  = lens _eraAccessToken
      (\ s a -> s{_eraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eraUploadType :: Lens' EventsResetAll (Maybe Text)
eraUploadType
  = lens _eraUploadType
      (\ s a -> s{_eraUploadType = a})

-- | JSONP
eraCallback :: Lens' EventsResetAll (Maybe Text)
eraCallback
  = lens _eraCallback (\ s a -> s{_eraCallback = a})

instance GoogleRequest EventsResetAll where
        type Rs EventsResetAll = ()
        type Scopes EventsResetAll =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsResetAll'{..}
          = go _eraXgafv _eraUploadProtocol _eraAccessToken
              _eraUploadType
              _eraCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy EventsResetAllResource)
                      mempty
