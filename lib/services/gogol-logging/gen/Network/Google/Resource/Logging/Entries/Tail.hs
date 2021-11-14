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
-- Module      : Network.Google.Resource.Logging.Entries.Tail
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streaming read of log entries as they are ingested. Until the stream is
-- terminated, it will continue reading logs.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.entries.tail@.
module Network.Google.Resource.Logging.Entries.Tail
    (
    -- * REST Resource
      EntriesTailResource

    -- * Creating a Request
    , entriesTail
    , EntriesTail

    -- * Request Lenses
    , etXgafv
    , etUploadProtocol
    , etAccessToken
    , etUploadType
    , etPayload
    , etCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.entries.tail@ method which the
-- 'EntriesTail' request conforms to.
type EntriesTailResource =
     "v2" :>
       "entries:tail" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TailLogEntriesRequest :>
                       Post '[JSON] TailLogEntriesResponse

-- | Streaming read of log entries as they are ingested. Until the stream is
-- terminated, it will continue reading logs.
--
-- /See:/ 'entriesTail' smart constructor.
data EntriesTail =
  EntriesTail'
    { _etXgafv :: !(Maybe Xgafv)
    , _etUploadProtocol :: !(Maybe Text)
    , _etAccessToken :: !(Maybe Text)
    , _etUploadType :: !(Maybe Text)
    , _etPayload :: !TailLogEntriesRequest
    , _etCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntriesTail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etXgafv'
--
-- * 'etUploadProtocol'
--
-- * 'etAccessToken'
--
-- * 'etUploadType'
--
-- * 'etPayload'
--
-- * 'etCallback'
entriesTail
    :: TailLogEntriesRequest -- ^ 'etPayload'
    -> EntriesTail
entriesTail pEtPayload_ =
  EntriesTail'
    { _etXgafv = Nothing
    , _etUploadProtocol = Nothing
    , _etAccessToken = Nothing
    , _etUploadType = Nothing
    , _etPayload = pEtPayload_
    , _etCallback = Nothing
    }


-- | V1 error format.
etXgafv :: Lens' EntriesTail (Maybe Xgafv)
etXgafv = lens _etXgafv (\ s a -> s{_etXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
etUploadProtocol :: Lens' EntriesTail (Maybe Text)
etUploadProtocol
  = lens _etUploadProtocol
      (\ s a -> s{_etUploadProtocol = a})

-- | OAuth access token.
etAccessToken :: Lens' EntriesTail (Maybe Text)
etAccessToken
  = lens _etAccessToken
      (\ s a -> s{_etAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
etUploadType :: Lens' EntriesTail (Maybe Text)
etUploadType
  = lens _etUploadType (\ s a -> s{_etUploadType = a})

-- | Multipart request metadata.
etPayload :: Lens' EntriesTail TailLogEntriesRequest
etPayload
  = lens _etPayload (\ s a -> s{_etPayload = a})

-- | JSONP
etCallback :: Lens' EntriesTail (Maybe Text)
etCallback
  = lens _etCallback (\ s a -> s{_etCallback = a})

instance GoogleRequest EntriesTail where
        type Rs EntriesTail = TailLogEntriesResponse
        type Scopes EntriesTail =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient EntriesTail'{..}
          = go _etXgafv _etUploadProtocol _etAccessToken
              _etUploadType
              _etCallback
              (Just AltJSON)
              _etPayload
              loggingService
          where go
                  = buildClient (Proxy :: Proxy EntriesTailResource)
                      mempty
