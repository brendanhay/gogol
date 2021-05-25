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
-- Module      : Network.Google.Resource.Games.Events.Record
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.events.record@.
module Network.Google.Resource.Games.Events.Record
    (
    -- * REST Resource
      EventsRecordResource

    -- * Creating a Request
    , eventsRecord
    , EventsRecord

    -- * Request Lenses
    , erXgafv
    , erUploadProtocol
    , erAccessToken
    , erUploadType
    , erPayload
    , erLanguage
    , erCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.events.record@ method which the
-- 'EventsRecord' request conforms to.
type EventsRecordResource =
     "games" :>
       "v1" :>
         "events" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "language" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EventRecordRequest :>
                           Post '[JSON] EventUpdateResponse

-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ 'eventsRecord' smart constructor.
data EventsRecord =
  EventsRecord'
    { _erXgafv :: !(Maybe Xgafv)
    , _erUploadProtocol :: !(Maybe Text)
    , _erAccessToken :: !(Maybe Text)
    , _erUploadType :: !(Maybe Text)
    , _erPayload :: !EventRecordRequest
    , _erLanguage :: !(Maybe Text)
    , _erCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventsRecord' with the minimum fields required to make a request.
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
-- * 'erPayload'
--
-- * 'erLanguage'
--
-- * 'erCallback'
eventsRecord
    :: EventRecordRequest -- ^ 'erPayload'
    -> EventsRecord
eventsRecord pErPayload_ =
  EventsRecord'
    { _erXgafv = Nothing
    , _erUploadProtocol = Nothing
    , _erAccessToken = Nothing
    , _erUploadType = Nothing
    , _erPayload = pErPayload_
    , _erLanguage = Nothing
    , _erCallback = Nothing
    }


-- | V1 error format.
erXgafv :: Lens' EventsRecord (Maybe Xgafv)
erXgafv = lens _erXgafv (\ s a -> s{_erXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
erUploadProtocol :: Lens' EventsRecord (Maybe Text)
erUploadProtocol
  = lens _erUploadProtocol
      (\ s a -> s{_erUploadProtocol = a})

-- | OAuth access token.
erAccessToken :: Lens' EventsRecord (Maybe Text)
erAccessToken
  = lens _erAccessToken
      (\ s a -> s{_erAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
erUploadType :: Lens' EventsRecord (Maybe Text)
erUploadType
  = lens _erUploadType (\ s a -> s{_erUploadType = a})

-- | Multipart request metadata.
erPayload :: Lens' EventsRecord EventRecordRequest
erPayload
  = lens _erPayload (\ s a -> s{_erPayload = a})

-- | The preferred language to use for strings returned by this method.
erLanguage :: Lens' EventsRecord (Maybe Text)
erLanguage
  = lens _erLanguage (\ s a -> s{_erLanguage = a})

-- | JSONP
erCallback :: Lens' EventsRecord (Maybe Text)
erCallback
  = lens _erCallback (\ s a -> s{_erCallback = a})

instance GoogleRequest EventsRecord where
        type Rs EventsRecord = EventUpdateResponse
        type Scopes EventsRecord =
             '["https://www.googleapis.com/auth/games"]
        requestClient EventsRecord'{..}
          = go _erXgafv _erUploadProtocol _erAccessToken
              _erUploadType
              _erLanguage
              _erCallback
              (Just AltJSON)
              _erPayload
              gamesService
          where go
                  = buildClient (Proxy :: Proxy EventsRecordResource)
                      mempty
