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
-- Module      : Network.Google.Resource.Logging.Organizations.Sinks.Patch
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.sinks.patch@.
module Network.Google.Resource.Logging.Organizations.Sinks.Patch
    (
    -- * REST Resource
      OrganizationsSinksPatchResource

    -- * Creating a Request
    , organizationsSinksPatch
    , OrganizationsSinksPatch

    -- * Request Lenses
    , ospXgafv
    , ospUniqueWriterIdentity
    , ospUploadProtocol
    , ospUpdateMask
    , ospAccessToken
    , ospUploadType
    , ospPayload
    , ospSinkName
    , ospCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.patch@ method which the
-- 'OrganizationsSinksPatch' request conforms to.
type OrganizationsSinksPatchResource =
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
-- /See:/ 'organizationsSinksPatch' smart constructor.
data OrganizationsSinksPatch =
  OrganizationsSinksPatch'
    { _ospXgafv                :: !(Maybe Xgafv)
    , _ospUniqueWriterIdentity :: !(Maybe Bool)
    , _ospUploadProtocol       :: !(Maybe Text)
    , _ospUpdateMask           :: !(Maybe GFieldMask)
    , _ospAccessToken          :: !(Maybe Text)
    , _ospUploadType           :: !(Maybe Text)
    , _ospPayload              :: !LogSink
    , _ospSinkName             :: !Text
    , _ospCallback             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSinksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ospXgafv'
--
-- * 'ospUniqueWriterIdentity'
--
-- * 'ospUploadProtocol'
--
-- * 'ospUpdateMask'
--
-- * 'ospAccessToken'
--
-- * 'ospUploadType'
--
-- * 'ospPayload'
--
-- * 'ospSinkName'
--
-- * 'ospCallback'
organizationsSinksPatch
    :: LogSink -- ^ 'ospPayload'
    -> Text -- ^ 'ospSinkName'
    -> OrganizationsSinksPatch
organizationsSinksPatch pOspPayload_ pOspSinkName_ =
  OrganizationsSinksPatch'
    { _ospXgafv = Nothing
    , _ospUniqueWriterIdentity = Nothing
    , _ospUploadProtocol = Nothing
    , _ospUpdateMask = Nothing
    , _ospAccessToken = Nothing
    , _ospUploadType = Nothing
    , _ospPayload = pOspPayload_
    , _ospSinkName = pOspSinkName_
    , _ospCallback = Nothing
    }


-- | V1 error format.
ospXgafv :: Lens' OrganizationsSinksPatch (Maybe Xgafv)
ospXgafv = lens _ospXgafv (\ s a -> s{_ospXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value is false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value is true and the new value is set to false or
-- defaulted to false.
ospUniqueWriterIdentity :: Lens' OrganizationsSinksPatch (Maybe Bool)
ospUniqueWriterIdentity
  = lens _ospUniqueWriterIdentity
      (\ s a -> s{_ospUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ospUploadProtocol :: Lens' OrganizationsSinksPatch (Maybe Text)
ospUploadProtocol
  = lens _ospUploadProtocol
      (\ s a -> s{_ospUploadProtocol = a})

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
ospUpdateMask :: Lens' OrganizationsSinksPatch (Maybe GFieldMask)
ospUpdateMask
  = lens _ospUpdateMask
      (\ s a -> s{_ospUpdateMask = a})

-- | OAuth access token.
ospAccessToken :: Lens' OrganizationsSinksPatch (Maybe Text)
ospAccessToken
  = lens _ospAccessToken
      (\ s a -> s{_ospAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ospUploadType :: Lens' OrganizationsSinksPatch (Maybe Text)
ospUploadType
  = lens _ospUploadType
      (\ s a -> s{_ospUploadType = a})

-- | Multipart request metadata.
ospPayload :: Lens' OrganizationsSinksPatch LogSink
ospPayload
  = lens _ospPayload (\ s a -> s{_ospPayload = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
ospSinkName :: Lens' OrganizationsSinksPatch Text
ospSinkName
  = lens _ospSinkName (\ s a -> s{_ospSinkName = a})

-- | JSONP
ospCallback :: Lens' OrganizationsSinksPatch (Maybe Text)
ospCallback
  = lens _ospCallback (\ s a -> s{_ospCallback = a})

instance GoogleRequest OrganizationsSinksPatch where
        type Rs OrganizationsSinksPatch = LogSink
        type Scopes OrganizationsSinksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsSinksPatch'{..}
          = go _ospSinkName _ospXgafv _ospUniqueWriterIdentity
              _ospUploadProtocol
              _ospUpdateMask
              _ospAccessToken
              _ospUploadType
              _ospCallback
              (Just AltJSON)
              _ospPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksPatchResource)
                      mempty
