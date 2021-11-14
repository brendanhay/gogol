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
-- Module      : Network.Google.Resource.Logging.Sinks.Update
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.sinks.update@.
module Network.Google.Resource.Logging.Sinks.Update
    (
    -- * REST Resource
      SinksUpdateResource

    -- * Creating a Request
    , sinksUpdate
    , SinksUpdate

    -- * Request Lenses
    , suXgafv
    , suUniqueWriterIdentity
    , suUploadProtocol
    , suUpdateMask
    , suAccessToken
    , suUploadType
    , suPayload
    , suSinkName
    , suCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.sinks.update@ method which the
-- 'SinksUpdate' request conforms to.
type SinksUpdateResource =
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
                         ReqBody '[JSON] LogSink :> Put '[JSON] LogSink

-- | Updates a sink. This method replaces the following fields in the
-- existing sink with values from the new sink: destination, and filter.The
-- updated sink might also have a new writer_identity; see the
-- unique_writer_identity field.
--
-- /See:/ 'sinksUpdate' smart constructor.
data SinksUpdate =
  SinksUpdate'
    { _suXgafv :: !(Maybe Xgafv)
    , _suUniqueWriterIdentity :: !(Maybe Bool)
    , _suUploadProtocol :: !(Maybe Text)
    , _suUpdateMask :: !(Maybe GFieldMask)
    , _suAccessToken :: !(Maybe Text)
    , _suUploadType :: !(Maybe Text)
    , _suPayload :: !LogSink
    , _suSinkName :: !Text
    , _suCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suXgafv'
--
-- * 'suUniqueWriterIdentity'
--
-- * 'suUploadProtocol'
--
-- * 'suUpdateMask'
--
-- * 'suAccessToken'
--
-- * 'suUploadType'
--
-- * 'suPayload'
--
-- * 'suSinkName'
--
-- * 'suCallback'
sinksUpdate
    :: LogSink -- ^ 'suPayload'
    -> Text -- ^ 'suSinkName'
    -> SinksUpdate
sinksUpdate pSuPayload_ pSuSinkName_ =
  SinksUpdate'
    { _suXgafv = Nothing
    , _suUniqueWriterIdentity = Nothing
    , _suUploadProtocol = Nothing
    , _suUpdateMask = Nothing
    , _suAccessToken = Nothing
    , _suUploadType = Nothing
    , _suPayload = pSuPayload_
    , _suSinkName = pSuSinkName_
    , _suCallback = Nothing
    }


-- | V1 error format.
suXgafv :: Lens' SinksUpdate (Maybe Xgafv)
suXgafv = lens _suXgafv (\ s a -> s{_suXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
suUniqueWriterIdentity :: Lens' SinksUpdate (Maybe Bool)
suUniqueWriterIdentity
  = lens _suUniqueWriterIdentity
      (\ s a -> s{_suUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
suUploadProtocol :: Lens' SinksUpdate (Maybe Text)
suUploadProtocol
  = lens _suUploadProtocol
      (\ s a -> s{_suUploadProtocol = a})

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
suUpdateMask :: Lens' SinksUpdate (Maybe GFieldMask)
suUpdateMask
  = lens _suUpdateMask (\ s a -> s{_suUpdateMask = a})

-- | OAuth access token.
suAccessToken :: Lens' SinksUpdate (Maybe Text)
suAccessToken
  = lens _suAccessToken
      (\ s a -> s{_suAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
suUploadType :: Lens' SinksUpdate (Maybe Text)
suUploadType
  = lens _suUploadType (\ s a -> s{_suUploadType = a})

-- | Multipart request metadata.
suPayload :: Lens' SinksUpdate LogSink
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
suSinkName :: Lens' SinksUpdate Text
suSinkName
  = lens _suSinkName (\ s a -> s{_suSinkName = a})

-- | JSONP
suCallback :: Lens' SinksUpdate (Maybe Text)
suCallback
  = lens _suCallback (\ s a -> s{_suCallback = a})

instance GoogleRequest SinksUpdate where
        type Rs SinksUpdate = LogSink
        type Scopes SinksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient SinksUpdate'{..}
          = go _suSinkName _suXgafv _suUniqueWriterIdentity
              _suUploadProtocol
              _suUpdateMask
              _suAccessToken
              _suUploadType
              _suCallback
              (Just AltJSON)
              _suPayload
              loggingService
          where go
                  = buildClient (Proxy :: Proxy SinksUpdateResource)
                      mempty
