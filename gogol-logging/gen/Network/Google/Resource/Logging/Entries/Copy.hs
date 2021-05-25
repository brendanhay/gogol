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
-- Module      : Network.Google.Resource.Logging.Entries.Copy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a set of log entries from a logging bucket to a Cloud Storage
-- bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.entries.copy@.
module Network.Google.Resource.Logging.Entries.Copy
    (
    -- * REST Resource
      EntriesCopyResource

    -- * Creating a Request
    , entriesCopy
    , EntriesCopy

    -- * Request Lenses
    , ecXgafv
    , ecUploadProtocol
    , ecAccessToken
    , ecUploadType
    , ecPayload
    , ecCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.entries.copy@ method which the
-- 'EntriesCopy' request conforms to.
type EntriesCopyResource =
     "v2" :>
       "entries:copy" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CopyLogEntriesRequest :>
                       Post '[JSON] Operation

-- | Copies a set of log entries from a logging bucket to a Cloud Storage
-- bucket.
--
-- /See:/ 'entriesCopy' smart constructor.
data EntriesCopy =
  EntriesCopy'
    { _ecXgafv :: !(Maybe Xgafv)
    , _ecUploadProtocol :: !(Maybe Text)
    , _ecAccessToken :: !(Maybe Text)
    , _ecUploadType :: !(Maybe Text)
    , _ecPayload :: !CopyLogEntriesRequest
    , _ecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntriesCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecXgafv'
--
-- * 'ecUploadProtocol'
--
-- * 'ecAccessToken'
--
-- * 'ecUploadType'
--
-- * 'ecPayload'
--
-- * 'ecCallback'
entriesCopy
    :: CopyLogEntriesRequest -- ^ 'ecPayload'
    -> EntriesCopy
entriesCopy pEcPayload_ =
  EntriesCopy'
    { _ecXgafv = Nothing
    , _ecUploadProtocol = Nothing
    , _ecAccessToken = Nothing
    , _ecUploadType = Nothing
    , _ecPayload = pEcPayload_
    , _ecCallback = Nothing
    }


-- | V1 error format.
ecXgafv :: Lens' EntriesCopy (Maybe Xgafv)
ecXgafv = lens _ecXgafv (\ s a -> s{_ecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ecUploadProtocol :: Lens' EntriesCopy (Maybe Text)
ecUploadProtocol
  = lens _ecUploadProtocol
      (\ s a -> s{_ecUploadProtocol = a})

-- | OAuth access token.
ecAccessToken :: Lens' EntriesCopy (Maybe Text)
ecAccessToken
  = lens _ecAccessToken
      (\ s a -> s{_ecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ecUploadType :: Lens' EntriesCopy (Maybe Text)
ecUploadType
  = lens _ecUploadType (\ s a -> s{_ecUploadType = a})

-- | Multipart request metadata.
ecPayload :: Lens' EntriesCopy CopyLogEntriesRequest
ecPayload
  = lens _ecPayload (\ s a -> s{_ecPayload = a})

-- | JSONP
ecCallback :: Lens' EntriesCopy (Maybe Text)
ecCallback
  = lens _ecCallback (\ s a -> s{_ecCallback = a})

instance GoogleRequest EntriesCopy where
        type Rs EntriesCopy = Operation
        type Scopes EntriesCopy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient EntriesCopy'{..}
          = go _ecXgafv _ecUploadProtocol _ecAccessToken
              _ecUploadType
              _ecCallback
              (Just AltJSON)
              _ecPayload
              loggingService
          where go
                  = buildClient (Proxy :: Proxy EntriesCopyResource)
                      mempty
