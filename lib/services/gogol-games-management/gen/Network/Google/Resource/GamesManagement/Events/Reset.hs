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
-- Module      : Network.Google.Resource.GamesManagement.Events.Reset
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.reset@.
module Network.Google.Resource.GamesManagement.Events.Reset
    (
    -- * REST Resource
      EventsResetResource

    -- * Creating a Request
    , eventsReset
    , EventsReset

    -- * Request Lenses
    , erXgafv
    , erUploadProtocol
    , erAccessToken
    , erUploadType
    , erEventId
    , erCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.events.reset@ method which the
-- 'EventsReset' request conforms to.
type EventsResetResource =
     "games" :>
       "v1management" :>
         "events" :>
           Capture "eventId" Text :>
             "reset" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
--
-- /See:/ 'eventsReset' smart constructor.
data EventsReset =
  EventsReset'
    { _erXgafv :: !(Maybe Xgafv)
    , _erUploadProtocol :: !(Maybe Text)
    , _erAccessToken :: !(Maybe Text)
    , _erUploadType :: !(Maybe Text)
    , _erEventId :: !Text
    , _erCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erXgafv'
--
-- * 'erUploadProtocol'
--
-- * 'erAccessToken'
--
-- * 'erUploadType'
--
-- * 'erEventId'
--
-- * 'erCallback'
eventsReset
    :: Text -- ^ 'erEventId'
    -> EventsReset
eventsReset pErEventId_ =
  EventsReset'
    { _erXgafv = Nothing
    , _erUploadProtocol = Nothing
    , _erAccessToken = Nothing
    , _erUploadType = Nothing
    , _erEventId = pErEventId_
    , _erCallback = Nothing
    }


-- | V1 error format.
erXgafv :: Lens' EventsReset (Maybe Xgafv)
erXgafv = lens _erXgafv (\ s a -> s{_erXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
erUploadProtocol :: Lens' EventsReset (Maybe Text)
erUploadProtocol
  = lens _erUploadProtocol
      (\ s a -> s{_erUploadProtocol = a})

-- | OAuth access token.
erAccessToken :: Lens' EventsReset (Maybe Text)
erAccessToken
  = lens _erAccessToken
      (\ s a -> s{_erAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
erUploadType :: Lens' EventsReset (Maybe Text)
erUploadType
  = lens _erUploadType (\ s a -> s{_erUploadType = a})

-- | The ID of the event.
erEventId :: Lens' EventsReset Text
erEventId
  = lens _erEventId (\ s a -> s{_erEventId = a})

-- | JSONP
erCallback :: Lens' EventsReset (Maybe Text)
erCallback
  = lens _erCallback (\ s a -> s{_erCallback = a})

instance GoogleRequest EventsReset where
        type Rs EventsReset = ()
        type Scopes EventsReset =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsReset'{..}
          = go _erEventId _erXgafv _erUploadProtocol
              _erAccessToken
              _erUploadType
              _erCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient (Proxy :: Proxy EventsResetResource)
                      mempty
