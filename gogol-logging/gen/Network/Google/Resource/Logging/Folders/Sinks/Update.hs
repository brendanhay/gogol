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
-- Module      : Network.Google.Resource.Logging.Folders.Sinks.Update
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.sinks.update@.
module Network.Google.Resource.Logging.Folders.Sinks.Update
    (
    -- * REST Resource
      FoldersSinksUpdateResource

    -- * Creating a Request
    , foldersSinksUpdate
    , FoldersSinksUpdate

    -- * Request Lenses
    , fsuXgafv
    , fsuUniqueWriterIdentity
    , fsuUploadProtocol
    , fsuUpdateMask
    , fsuAccessToken
    , fsuUploadType
    , fsuPayload
    , fsuSinkName
    , fsuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.sinks.update@ method which the
-- 'FoldersSinksUpdate' request conforms to.
type FoldersSinksUpdateResource =
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
-- /See:/ 'foldersSinksUpdate' smart constructor.
data FoldersSinksUpdate =
  FoldersSinksUpdate'
    { _fsuXgafv                :: !(Maybe Xgafv)
    , _fsuUniqueWriterIdentity :: !(Maybe Bool)
    , _fsuUploadProtocol       :: !(Maybe Text)
    , _fsuUpdateMask           :: !(Maybe GFieldMask)
    , _fsuAccessToken          :: !(Maybe Text)
    , _fsuUploadType           :: !(Maybe Text)
    , _fsuPayload              :: !LogSink
    , _fsuSinkName             :: !Text
    , _fsuCallback             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersSinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsuXgafv'
--
-- * 'fsuUniqueWriterIdentity'
--
-- * 'fsuUploadProtocol'
--
-- * 'fsuUpdateMask'
--
-- * 'fsuAccessToken'
--
-- * 'fsuUploadType'
--
-- * 'fsuPayload'
--
-- * 'fsuSinkName'
--
-- * 'fsuCallback'
foldersSinksUpdate
    :: LogSink -- ^ 'fsuPayload'
    -> Text -- ^ 'fsuSinkName'
    -> FoldersSinksUpdate
foldersSinksUpdate pFsuPayload_ pFsuSinkName_ =
  FoldersSinksUpdate'
    { _fsuXgafv = Nothing
    , _fsuUniqueWriterIdentity = Nothing
    , _fsuUploadProtocol = Nothing
    , _fsuUpdateMask = Nothing
    , _fsuAccessToken = Nothing
    , _fsuUploadType = Nothing
    , _fsuPayload = pFsuPayload_
    , _fsuSinkName = pFsuSinkName_
    , _fsuCallback = Nothing
    }


-- | V1 error format.
fsuXgafv :: Lens' FoldersSinksUpdate (Maybe Xgafv)
fsuXgafv = lens _fsuXgafv (\ s a -> s{_fsuXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
fsuUniqueWriterIdentity :: Lens' FoldersSinksUpdate (Maybe Bool)
fsuUniqueWriterIdentity
  = lens _fsuUniqueWriterIdentity
      (\ s a -> s{_fsuUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fsuUploadProtocol :: Lens' FoldersSinksUpdate (Maybe Text)
fsuUploadProtocol
  = lens _fsuUploadProtocol
      (\ s a -> s{_fsuUploadProtocol = a})

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
fsuUpdateMask :: Lens' FoldersSinksUpdate (Maybe GFieldMask)
fsuUpdateMask
  = lens _fsuUpdateMask
      (\ s a -> s{_fsuUpdateMask = a})

-- | OAuth access token.
fsuAccessToken :: Lens' FoldersSinksUpdate (Maybe Text)
fsuAccessToken
  = lens _fsuAccessToken
      (\ s a -> s{_fsuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fsuUploadType :: Lens' FoldersSinksUpdate (Maybe Text)
fsuUploadType
  = lens _fsuUploadType
      (\ s a -> s{_fsuUploadType = a})

-- | Multipart request metadata.
fsuPayload :: Lens' FoldersSinksUpdate LogSink
fsuPayload
  = lens _fsuPayload (\ s a -> s{_fsuPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
fsuSinkName :: Lens' FoldersSinksUpdate Text
fsuSinkName
  = lens _fsuSinkName (\ s a -> s{_fsuSinkName = a})

-- | JSONP
fsuCallback :: Lens' FoldersSinksUpdate (Maybe Text)
fsuCallback
  = lens _fsuCallback (\ s a -> s{_fsuCallback = a})

instance GoogleRequest FoldersSinksUpdate where
        type Rs FoldersSinksUpdate = LogSink
        type Scopes FoldersSinksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersSinksUpdate'{..}
          = go _fsuSinkName _fsuXgafv _fsuUniqueWriterIdentity
              _fsuUploadProtocol
              _fsuUpdateMask
              _fsuAccessToken
              _fsuUploadType
              _fsuCallback
              (Just AltJSON)
              _fsuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSinksUpdateResource)
                      mempty
