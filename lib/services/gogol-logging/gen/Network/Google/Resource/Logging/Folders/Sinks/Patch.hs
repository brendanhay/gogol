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
-- Module      : Network.Google.Resource.Logging.Folders.Sinks.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a sink. This method replaces the following fields in the
-- existing sink with values from the new sink: destination, and filter.The
-- updated sink might also have a new writer_identity; see the
-- unique_writer_identity field.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.sinks.patch@.
module Network.Google.Resource.Logging.Folders.Sinks.Patch
    (
    -- * REST Resource
      FoldersSinksPatchResource

    -- * Creating a Request
    , foldersSinksPatch
    , FoldersSinksPatch

    -- * Request Lenses
    , fspXgafv
    , fspUniqueWriterIdentity
    , fspUploadProtocol
    , fspUpdateMask
    , fspAccessToken
    , fspUploadType
    , fspPayload
    , fspSinkName
    , fspCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.sinks.patch@ method which the
-- 'FoldersSinksPatch' request conforms to.
type FoldersSinksPatchResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "uniqueWriterIdentity" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogSink :> Patch '[JSON] LogSink

-- | Updates a sink. This method replaces the following fields in the
-- existing sink with values from the new sink: destination, and filter.The
-- updated sink might also have a new writer_identity; see the
-- unique_writer_identity field.
--
-- /See:/ 'foldersSinksPatch' smart constructor.
data FoldersSinksPatch =
  FoldersSinksPatch'
    { _fspXgafv :: !(Maybe Xgafv)
    , _fspUniqueWriterIdentity :: !(Maybe Bool)
    , _fspUploadProtocol :: !(Maybe Text)
    , _fspUpdateMask :: !(Maybe GFieldMask)
    , _fspAccessToken :: !(Maybe Text)
    , _fspUploadType :: !(Maybe Text)
    , _fspPayload :: !LogSink
    , _fspSinkName :: !Text
    , _fspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersSinksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fspXgafv'
--
-- * 'fspUniqueWriterIdentity'
--
-- * 'fspUploadProtocol'
--
-- * 'fspUpdateMask'
--
-- * 'fspAccessToken'
--
-- * 'fspUploadType'
--
-- * 'fspPayload'
--
-- * 'fspSinkName'
--
-- * 'fspCallback'
foldersSinksPatch
    :: LogSink -- ^ 'fspPayload'
    -> Text -- ^ 'fspSinkName'
    -> FoldersSinksPatch
foldersSinksPatch pFspPayload_ pFspSinkName_ =
  FoldersSinksPatch'
    { _fspXgafv = Nothing
    , _fspUniqueWriterIdentity = Nothing
    , _fspUploadProtocol = Nothing
    , _fspUpdateMask = Nothing
    , _fspAccessToken = Nothing
    , _fspUploadType = Nothing
    , _fspPayload = pFspPayload_
    , _fspSinkName = pFspSinkName_
    , _fspCallback = Nothing
    }


-- | V1 error format.
fspXgafv :: Lens' FoldersSinksPatch (Maybe Xgafv)
fspXgafv = lens _fspXgafv (\ s a -> s{_fspXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
fspUniqueWriterIdentity :: Lens' FoldersSinksPatch (Maybe Bool)
fspUniqueWriterIdentity
  = lens _fspUniqueWriterIdentity
      (\ s a -> s{_fspUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fspUploadProtocol :: Lens' FoldersSinksPatch (Maybe Text)
fspUploadProtocol
  = lens _fspUploadProtocol
      (\ s a -> s{_fspUploadProtocol = a})

-- | Optional. Field mask that specifies the fields in sink that need an
-- update. A sink field will be overwritten if, and only if, it is in the
-- update mask. name and output only fields cannot be updated.An empty
-- updateMask is temporarily treated as using the following mask for
-- backwards compatibility purposes: destination,filter,includeChildren At
-- some point in the future, behavior will be removed and specifying an
-- empty updateMask will be an error.For a detailed FieldMask definition,
-- see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskExample:
-- updateMask=filter.
fspUpdateMask :: Lens' FoldersSinksPatch (Maybe GFieldMask)
fspUpdateMask
  = lens _fspUpdateMask
      (\ s a -> s{_fspUpdateMask = a})

-- | OAuth access token.
fspAccessToken :: Lens' FoldersSinksPatch (Maybe Text)
fspAccessToken
  = lens _fspAccessToken
      (\ s a -> s{_fspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fspUploadType :: Lens' FoldersSinksPatch (Maybe Text)
fspUploadType
  = lens _fspUploadType
      (\ s a -> s{_fspUploadType = a})

-- | Multipart request metadata.
fspPayload :: Lens' FoldersSinksPatch LogSink
fspPayload
  = lens _fspPayload (\ s a -> s{_fspPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
fspSinkName :: Lens' FoldersSinksPatch Text
fspSinkName
  = lens _fspSinkName (\ s a -> s{_fspSinkName = a})

-- | JSONP
fspCallback :: Lens' FoldersSinksPatch (Maybe Text)
fspCallback
  = lens _fspCallback (\ s a -> s{_fspCallback = a})

instance GoogleRequest FoldersSinksPatch where
        type Rs FoldersSinksPatch = LogSink
        type Scopes FoldersSinksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersSinksPatch'{..}
          = go _fspSinkName _fspXgafv _fspUniqueWriterIdentity
              _fspUploadProtocol
              _fspUpdateMask
              _fspAccessToken
              _fspUploadType
              _fspCallback
              (Just AltJSON)
              _fspPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSinksPatchResource)
                      mempty
