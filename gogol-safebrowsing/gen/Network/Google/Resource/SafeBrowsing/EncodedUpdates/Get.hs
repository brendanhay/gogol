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
-- Module      : Network.Google.Resource.SafeBrowsing.EncodedUpdates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- |
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.encodedUpdates.get@.
module Network.Google.Resource.SafeBrowsing.EncodedUpdates.Get
    (
    -- * REST Resource
      EncodedUpdatesGetResource

    -- * Creating a Request
    , encodedUpdatesGet
    , EncodedUpdatesGet

    -- * Request Lenses
    , eugClientId
    , eugXgafv
    , eugUploadProtocol
    , eugAccessToken
    , eugEncodedRequest
    , eugUploadType
    , eugClientVersion
    , eugCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.encodedUpdates.get@ method which the
-- 'EncodedUpdatesGet' request conforms to.
type EncodedUpdatesGetResource =
     "v4" :>
       "encodedUpdates" :>
         Capture "encodedRequest" Bytes :>
           QueryParam "clientId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "clientVersion" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] FetchThreatListUpdatesResponse

-- |
--
-- /See:/ 'encodedUpdatesGet' smart constructor.
data EncodedUpdatesGet =
  EncodedUpdatesGet'
    { _eugClientId       :: !(Maybe Text)
    , _eugXgafv          :: !(Maybe Xgafv)
    , _eugUploadProtocol :: !(Maybe Text)
    , _eugAccessToken    :: !(Maybe Text)
    , _eugEncodedRequest :: !Bytes
    , _eugUploadType     :: !(Maybe Text)
    , _eugClientVersion  :: !(Maybe Text)
    , _eugCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncodedUpdatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eugClientId'
--
-- * 'eugXgafv'
--
-- * 'eugUploadProtocol'
--
-- * 'eugAccessToken'
--
-- * 'eugEncodedRequest'
--
-- * 'eugUploadType'
--
-- * 'eugClientVersion'
--
-- * 'eugCallback'
encodedUpdatesGet
    :: ByteString -- ^ 'eugEncodedRequest'
    -> EncodedUpdatesGet
encodedUpdatesGet pEugEncodedRequest_ =
  EncodedUpdatesGet'
    { _eugClientId = Nothing
    , _eugXgafv = Nothing
    , _eugUploadProtocol = Nothing
    , _eugAccessToken = Nothing
    , _eugEncodedRequest = _Bytes # pEugEncodedRequest_
    , _eugUploadType = Nothing
    , _eugClientVersion = Nothing
    , _eugCallback = Nothing
    }


-- | A client ID that uniquely identifies the client implementation of the
-- Safe Browsing API.
eugClientId :: Lens' EncodedUpdatesGet (Maybe Text)
eugClientId
  = lens _eugClientId (\ s a -> s{_eugClientId = a})

-- | V1 error format.
eugXgafv :: Lens' EncodedUpdatesGet (Maybe Xgafv)
eugXgafv = lens _eugXgafv (\ s a -> s{_eugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eugUploadProtocol :: Lens' EncodedUpdatesGet (Maybe Text)
eugUploadProtocol
  = lens _eugUploadProtocol
      (\ s a -> s{_eugUploadProtocol = a})

-- | OAuth access token.
eugAccessToken :: Lens' EncodedUpdatesGet (Maybe Text)
eugAccessToken
  = lens _eugAccessToken
      (\ s a -> s{_eugAccessToken = a})

-- | A serialized FetchThreatListUpdatesRequest proto.
eugEncodedRequest :: Lens' EncodedUpdatesGet ByteString
eugEncodedRequest
  = lens _eugEncodedRequest
      (\ s a -> s{_eugEncodedRequest = a})
      . _Bytes

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eugUploadType :: Lens' EncodedUpdatesGet (Maybe Text)
eugUploadType
  = lens _eugUploadType
      (\ s a -> s{_eugUploadType = a})

-- | The version of the client implementation.
eugClientVersion :: Lens' EncodedUpdatesGet (Maybe Text)
eugClientVersion
  = lens _eugClientVersion
      (\ s a -> s{_eugClientVersion = a})

-- | JSONP
eugCallback :: Lens' EncodedUpdatesGet (Maybe Text)
eugCallback
  = lens _eugCallback (\ s a -> s{_eugCallback = a})

instance GoogleRequest EncodedUpdatesGet where
        type Rs EncodedUpdatesGet =
             FetchThreatListUpdatesResponse
        type Scopes EncodedUpdatesGet = '[]
        requestClient EncodedUpdatesGet'{..}
          = go _eugEncodedRequest _eugClientId _eugXgafv
              _eugUploadProtocol
              _eugAccessToken
              _eugUploadType
              _eugClientVersion
              _eugCallback
              (Just AltJSON)
              safeBrowsingService
          where go
                  = buildClient
                      (Proxy :: Proxy EncodedUpdatesGetResource)
                      mempty
