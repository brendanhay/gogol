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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a sink. This method replaces the following fields in the
-- existing sink with values from the new sink: destination, and filter.
-- The updated sink might also have a new writer_identity; see the
-- unique_writer_identity field.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.sinks.update@.
module Network.Google.Resource.Logging.Projects.Sinks.Update
    (
    -- * REST Resource
      ProjectsSinksUpdateResource

    -- * Creating a Request
    , projectsSinksUpdate
    , ProjectsSinksUpdate

    -- * Request Lenses
    , psuXgafv
    , psuUniqueWriterIdentity
    , psuUploadProtocol
    , psuUpdateMask
    , psuAccessToken
    , psuUploadType
    , psuPayload
    , psuSinkName
    , psuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.update@ method which the
-- 'ProjectsSinksUpdate' request conforms to.
type ProjectsSinksUpdateResource =
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
-- existing sink with values from the new sink: destination, and filter.
-- The updated sink might also have a new writer_identity; see the
-- unique_writer_identity field.
--
-- /See:/ 'projectsSinksUpdate' smart constructor.
data ProjectsSinksUpdate = ProjectsSinksUpdate'
    { _psuXgafv                :: !(Maybe Xgafv)
    , _psuUniqueWriterIdentity :: !(Maybe Bool)
    , _psuUploadProtocol       :: !(Maybe Text)
    , _psuUpdateMask           :: !(Maybe GFieldMask)
    , _psuAccessToken          :: !(Maybe Text)
    , _psuUploadType           :: !(Maybe Text)
    , _psuPayload              :: !LogSink
    , _psuSinkName             :: !Text
    , _psuCallback             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuUniqueWriterIdentity'
--
-- * 'psuUploadProtocol'
--
-- * 'psuUpdateMask'
--
-- * 'psuAccessToken'
--
-- * 'psuUploadType'
--
-- * 'psuPayload'
--
-- * 'psuSinkName'
--
-- * 'psuCallback'
projectsSinksUpdate
    :: LogSink -- ^ 'psuPayload'
    -> Text -- ^ 'psuSinkName'
    -> ProjectsSinksUpdate
projectsSinksUpdate pPsuPayload_ pPsuSinkName_ =
    ProjectsSinksUpdate'
    { _psuXgafv = Nothing
    , _psuUniqueWriterIdentity = Nothing
    , _psuUploadProtocol = Nothing
    , _psuUpdateMask = Nothing
    , _psuAccessToken = Nothing
    , _psuUploadType = Nothing
    , _psuPayload = pPsuPayload_
    , _psuSinkName = pPsuSinkName_
    , _psuCallback = Nothing
    }

-- | V1 error format.
psuXgafv :: Lens' ProjectsSinksUpdate (Maybe Xgafv)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
psuUniqueWriterIdentity :: Lens' ProjectsSinksUpdate (Maybe Bool)
psuUniqueWriterIdentity
  = lens _psuUniqueWriterIdentity
      (\ s a -> s{_psuUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' ProjectsSinksUpdate (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

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
psuUpdateMask :: Lens' ProjectsSinksUpdate (Maybe GFieldMask)
psuUpdateMask
  = lens _psuUpdateMask
      (\ s a -> s{_psuUpdateMask = a})

-- | OAuth access token.
psuAccessToken :: Lens' ProjectsSinksUpdate (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' ProjectsSinksUpdate (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | Multipart request metadata.
psuPayload :: Lens' ProjectsSinksUpdate LogSink
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
psuSinkName :: Lens' ProjectsSinksUpdate Text
psuSinkName
  = lens _psuSinkName (\ s a -> s{_psuSinkName = a})

-- | JSONP
psuCallback :: Lens' ProjectsSinksUpdate (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleRequest ProjectsSinksUpdate where
        type Rs ProjectsSinksUpdate = LogSink
        type Scopes ProjectsSinksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsSinksUpdate'{..}
          = go _psuSinkName _psuXgafv _psuUniqueWriterIdentity
              _psuUploadProtocol
              _psuUpdateMask
              _psuAccessToken
              _psuUploadType
              _psuCallback
              (Just AltJSON)
              _psuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksUpdateResource)
                      mempty
