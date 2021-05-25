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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.sinks.patch@.
module Network.Google.Resource.Logging.Projects.Sinks.Patch
    (
    -- * REST Resource
      ProjectsSinksPatchResource

    -- * Creating a Request
    , projectsSinksPatch
    , ProjectsSinksPatch

    -- * Request Lenses
    , pspXgafv
    , pspUniqueWriterIdentity
    , pspUploadProtocol
    , pspUpdateMask
    , pspAccessToken
    , pspUploadType
    , pspPayload
    , pspSinkName
    , pspCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.patch@ method which the
-- 'ProjectsSinksPatch' request conforms to.
type ProjectsSinksPatchResource =
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
-- /See:/ 'projectsSinksPatch' smart constructor.
data ProjectsSinksPatch =
  ProjectsSinksPatch'
    { _pspXgafv :: !(Maybe Xgafv)
    , _pspUniqueWriterIdentity :: !(Maybe Bool)
    , _pspUploadProtocol :: !(Maybe Text)
    , _pspUpdateMask :: !(Maybe GFieldMask)
    , _pspAccessToken :: !(Maybe Text)
    , _pspUploadType :: !(Maybe Text)
    , _pspPayload :: !LogSink
    , _pspSinkName :: !Text
    , _pspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSinksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspXgafv'
--
-- * 'pspUniqueWriterIdentity'
--
-- * 'pspUploadProtocol'
--
-- * 'pspUpdateMask'
--
-- * 'pspAccessToken'
--
-- * 'pspUploadType'
--
-- * 'pspPayload'
--
-- * 'pspSinkName'
--
-- * 'pspCallback'
projectsSinksPatch
    :: LogSink -- ^ 'pspPayload'
    -> Text -- ^ 'pspSinkName'
    -> ProjectsSinksPatch
projectsSinksPatch pPspPayload_ pPspSinkName_ =
  ProjectsSinksPatch'
    { _pspXgafv = Nothing
    , _pspUniqueWriterIdentity = Nothing
    , _pspUploadProtocol = Nothing
    , _pspUpdateMask = Nothing
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspPayload = pPspPayload_
    , _pspSinkName = pPspSinkName_
    , _pspCallback = Nothing
    }


-- | V1 error format.
pspXgafv :: Lens' ProjectsSinksPatch (Maybe Xgafv)
pspXgafv = lens _pspXgafv (\ s a -> s{_pspXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
pspUniqueWriterIdentity :: Lens' ProjectsSinksPatch (Maybe Bool)
pspUniqueWriterIdentity
  = lens _pspUniqueWriterIdentity
      (\ s a -> s{_pspUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pspUploadProtocol :: Lens' ProjectsSinksPatch (Maybe Text)
pspUploadProtocol
  = lens _pspUploadProtocol
      (\ s a -> s{_pspUploadProtocol = a})

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
pspUpdateMask :: Lens' ProjectsSinksPatch (Maybe GFieldMask)
pspUpdateMask
  = lens _pspUpdateMask
      (\ s a -> s{_pspUpdateMask = a})

-- | OAuth access token.
pspAccessToken :: Lens' ProjectsSinksPatch (Maybe Text)
pspAccessToken
  = lens _pspAccessToken
      (\ s a -> s{_pspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pspUploadType :: Lens' ProjectsSinksPatch (Maybe Text)
pspUploadType
  = lens _pspUploadType
      (\ s a -> s{_pspUploadType = a})

-- | Multipart request metadata.
pspPayload :: Lens' ProjectsSinksPatch LogSink
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
pspSinkName :: Lens' ProjectsSinksPatch Text
pspSinkName
  = lens _pspSinkName (\ s a -> s{_pspSinkName = a})

-- | JSONP
pspCallback :: Lens' ProjectsSinksPatch (Maybe Text)
pspCallback
  = lens _pspCallback (\ s a -> s{_pspCallback = a})

instance GoogleRequest ProjectsSinksPatch where
        type Rs ProjectsSinksPatch = LogSink
        type Scopes ProjectsSinksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsSinksPatch'{..}
          = go _pspSinkName _pspXgafv _pspUniqueWriterIdentity
              _pspUploadProtocol
              _pspUpdateMask
              _pspAccessToken
              _pspUploadType
              _pspCallback
              (Just AltJSON)
              _pspPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksPatchResource)
                      mempty
