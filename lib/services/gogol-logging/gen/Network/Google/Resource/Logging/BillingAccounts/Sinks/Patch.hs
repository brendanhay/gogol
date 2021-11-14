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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Sinks.Patch
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.sinks.patch@.
module Network.Google.Resource.Logging.BillingAccounts.Sinks.Patch
    (
    -- * REST Resource
      BillingAccountsSinksPatchResource

    -- * Creating a Request
    , billingAccountsSinksPatch
    , BillingAccountsSinksPatch

    -- * Request Lenses
    , baspXgafv
    , baspUniqueWriterIdentity
    , baspUploadProtocol
    , baspUpdateMask
    , baspAccessToken
    , baspUploadType
    , baspPayload
    , baspSinkName
    , baspCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.sinks.patch@ method which the
-- 'BillingAccountsSinksPatch' request conforms to.
type BillingAccountsSinksPatchResource =
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
-- /See:/ 'billingAccountsSinksPatch' smart constructor.
data BillingAccountsSinksPatch =
  BillingAccountsSinksPatch'
    { _baspXgafv :: !(Maybe Xgafv)
    , _baspUniqueWriterIdentity :: !(Maybe Bool)
    , _baspUploadProtocol :: !(Maybe Text)
    , _baspUpdateMask :: !(Maybe GFieldMask)
    , _baspAccessToken :: !(Maybe Text)
    , _baspUploadType :: !(Maybe Text)
    , _baspPayload :: !LogSink
    , _baspSinkName :: !Text
    , _baspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsSinksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baspXgafv'
--
-- * 'baspUniqueWriterIdentity'
--
-- * 'baspUploadProtocol'
--
-- * 'baspUpdateMask'
--
-- * 'baspAccessToken'
--
-- * 'baspUploadType'
--
-- * 'baspPayload'
--
-- * 'baspSinkName'
--
-- * 'baspCallback'
billingAccountsSinksPatch
    :: LogSink -- ^ 'baspPayload'
    -> Text -- ^ 'baspSinkName'
    -> BillingAccountsSinksPatch
billingAccountsSinksPatch pBaspPayload_ pBaspSinkName_ =
  BillingAccountsSinksPatch'
    { _baspXgafv = Nothing
    , _baspUniqueWriterIdentity = Nothing
    , _baspUploadProtocol = Nothing
    , _baspUpdateMask = Nothing
    , _baspAccessToken = Nothing
    , _baspUploadType = Nothing
    , _baspPayload = pBaspPayload_
    , _baspSinkName = pBaspSinkName_
    , _baspCallback = Nothing
    }


-- | V1 error format.
baspXgafv :: Lens' BillingAccountsSinksPatch (Maybe Xgafv)
baspXgafv
  = lens _baspXgafv (\ s a -> s{_baspXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
baspUniqueWriterIdentity :: Lens' BillingAccountsSinksPatch (Maybe Bool)
baspUniqueWriterIdentity
  = lens _baspUniqueWriterIdentity
      (\ s a -> s{_baspUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baspUploadProtocol :: Lens' BillingAccountsSinksPatch (Maybe Text)
baspUploadProtocol
  = lens _baspUploadProtocol
      (\ s a -> s{_baspUploadProtocol = a})

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
baspUpdateMask :: Lens' BillingAccountsSinksPatch (Maybe GFieldMask)
baspUpdateMask
  = lens _baspUpdateMask
      (\ s a -> s{_baspUpdateMask = a})

-- | OAuth access token.
baspAccessToken :: Lens' BillingAccountsSinksPatch (Maybe Text)
baspAccessToken
  = lens _baspAccessToken
      (\ s a -> s{_baspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baspUploadType :: Lens' BillingAccountsSinksPatch (Maybe Text)
baspUploadType
  = lens _baspUploadType
      (\ s a -> s{_baspUploadType = a})

-- | Multipart request metadata.
baspPayload :: Lens' BillingAccountsSinksPatch LogSink
baspPayload
  = lens _baspPayload (\ s a -> s{_baspPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
baspSinkName :: Lens' BillingAccountsSinksPatch Text
baspSinkName
  = lens _baspSinkName (\ s a -> s{_baspSinkName = a})

-- | JSONP
baspCallback :: Lens' BillingAccountsSinksPatch (Maybe Text)
baspCallback
  = lens _baspCallback (\ s a -> s{_baspCallback = a})

instance GoogleRequest BillingAccountsSinksPatch
         where
        type Rs BillingAccountsSinksPatch = LogSink
        type Scopes BillingAccountsSinksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient BillingAccountsSinksPatch'{..}
          = go _baspSinkName _baspXgafv
              _baspUniqueWriterIdentity
              _baspUploadProtocol
              _baspUpdateMask
              _baspAccessToken
              _baspUploadType
              _baspCallback
              (Just AltJSON)
              _baspPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSinksPatchResource)
                      mempty
