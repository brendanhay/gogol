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
-- Module      : Network.Google.Resource.Logging.Folders.Sinks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.sinks.delete@.
module Network.Google.Resource.Logging.Folders.Sinks.Delete
    (
    -- * REST Resource
      FoldersSinksDeleteResource

    -- * Creating a Request
    , foldersSinksDelete
    , FoldersSinksDelete

    -- * Request Lenses
    , fsdXgafv
    , fsdUploadProtocol
    , fsdPp
    , fsdAccessToken
    , fsdUploadType
    , fsdBearerToken
    , fsdSinkName
    , fsdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.sinks.delete@ method which the
-- 'FoldersSinksDelete' request conforms to.
type FoldersSinksDeleteResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ 'foldersSinksDelete' smart constructor.
data FoldersSinksDelete = FoldersSinksDelete'
    { _fsdXgafv          :: !(Maybe Xgafv)
    , _fsdUploadProtocol :: !(Maybe Text)
    , _fsdPp             :: !Bool
    , _fsdAccessToken    :: !(Maybe Text)
    , _fsdUploadType     :: !(Maybe Text)
    , _fsdBearerToken    :: !(Maybe Text)
    , _fsdSinkName       :: !Text
    , _fsdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FoldersSinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsdXgafv'
--
-- * 'fsdUploadProtocol'
--
-- * 'fsdPp'
--
-- * 'fsdAccessToken'
--
-- * 'fsdUploadType'
--
-- * 'fsdBearerToken'
--
-- * 'fsdSinkName'
--
-- * 'fsdCallback'
foldersSinksDelete
    :: Text -- ^ 'fsdSinkName'
    -> FoldersSinksDelete
foldersSinksDelete pFsdSinkName_ =
    FoldersSinksDelete'
    { _fsdXgafv = Nothing
    , _fsdUploadProtocol = Nothing
    , _fsdPp = True
    , _fsdAccessToken = Nothing
    , _fsdUploadType = Nothing
    , _fsdBearerToken = Nothing
    , _fsdSinkName = pFsdSinkName_
    , _fsdCallback = Nothing
    }

-- | V1 error format.
fsdXgafv :: Lens' FoldersSinksDelete (Maybe Xgafv)
fsdXgafv = lens _fsdXgafv (\ s a -> s{_fsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fsdUploadProtocol :: Lens' FoldersSinksDelete (Maybe Text)
fsdUploadProtocol
  = lens _fsdUploadProtocol
      (\ s a -> s{_fsdUploadProtocol = a})

-- | Pretty-print response.
fsdPp :: Lens' FoldersSinksDelete Bool
fsdPp = lens _fsdPp (\ s a -> s{_fsdPp = a})

-- | OAuth access token.
fsdAccessToken :: Lens' FoldersSinksDelete (Maybe Text)
fsdAccessToken
  = lens _fsdAccessToken
      (\ s a -> s{_fsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fsdUploadType :: Lens' FoldersSinksDelete (Maybe Text)
fsdUploadType
  = lens _fsdUploadType
      (\ s a -> s{_fsdUploadType = a})

-- | OAuth bearer token.
fsdBearerToken :: Lens' FoldersSinksDelete (Maybe Text)
fsdBearerToken
  = lens _fsdBearerToken
      (\ s a -> s{_fsdBearerToken = a})

-- | Required. The full resource name of the sink to delete, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\" It is an error if
-- the sink does not exist. Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\". It is an error if the
-- sink does not exist.
fsdSinkName :: Lens' FoldersSinksDelete Text
fsdSinkName
  = lens _fsdSinkName (\ s a -> s{_fsdSinkName = a})

-- | JSONP
fsdCallback :: Lens' FoldersSinksDelete (Maybe Text)
fsdCallback
  = lens _fsdCallback (\ s a -> s{_fsdCallback = a})

instance GoogleRequest FoldersSinksDelete where
        type Rs FoldersSinksDelete = Empty
        type Scopes FoldersSinksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersSinksDelete'{..}
          = go _fsdSinkName _fsdXgafv _fsdUploadProtocol
              (Just _fsdPp)
              _fsdAccessToken
              _fsdUploadType
              _fsdBearerToken
              _fsdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSinksDeleteResource)
                      mempty
