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
-- Module      : Network.Google.Resource.Logging.Organizations.Sinks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a sink. If the named sink doesn\'t exist, then this method is
-- identical to sinks.create. If the named sink does exist, then this
-- method replaces the following fields in the existing sink with values
-- from the new sink: destination, filter, output_version_format,
-- start_time, and end_time. The updated filter might also have a new
-- writer_identity; see the unique_writer_identity field.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.sinks.update@.
module Network.Google.Resource.Logging.Organizations.Sinks.Update
    (
    -- * REST Resource
      OrganizationsSinksUpdateResource

    -- * Creating a Request
    , organizationsSinksUpdate
    , OrganizationsSinksUpdate

    -- * Request Lenses
    , osuXgafv
    , osuUniqueWriterIdentity
    , osuUploadProtocol
    , osuPp
    , osuAccessToken
    , osuUploadType
    , osuPayload
    , osuBearerToken
    , osuSinkName
    , osuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.update@ method which the
-- 'OrganizationsSinksUpdate' request conforms to.
type OrganizationsSinksUpdateResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "uniqueWriterIdentity" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LogSink :> Put '[JSON] LogSink

-- | Updates a sink. If the named sink doesn\'t exist, then this method is
-- identical to sinks.create. If the named sink does exist, then this
-- method replaces the following fields in the existing sink with values
-- from the new sink: destination, filter, output_version_format,
-- start_time, and end_time. The updated filter might also have a new
-- writer_identity; see the unique_writer_identity field.
--
-- /See:/ 'organizationsSinksUpdate' smart constructor.
data OrganizationsSinksUpdate = OrganizationsSinksUpdate'
    { _osuXgafv                :: !(Maybe Xgafv)
    , _osuUniqueWriterIdentity :: !(Maybe Bool)
    , _osuUploadProtocol       :: !(Maybe Text)
    , _osuPp                   :: !Bool
    , _osuAccessToken          :: !(Maybe Text)
    , _osuUploadType           :: !(Maybe Text)
    , _osuPayload              :: !LogSink
    , _osuBearerToken          :: !(Maybe Text)
    , _osuSinkName             :: !Text
    , _osuCallback             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osuXgafv'
--
-- * 'osuUniqueWriterIdentity'
--
-- * 'osuUploadProtocol'
--
-- * 'osuPp'
--
-- * 'osuAccessToken'
--
-- * 'osuUploadType'
--
-- * 'osuPayload'
--
-- * 'osuBearerToken'
--
-- * 'osuSinkName'
--
-- * 'osuCallback'
organizationsSinksUpdate
    :: LogSink -- ^ 'osuPayload'
    -> Text -- ^ 'osuSinkName'
    -> OrganizationsSinksUpdate
organizationsSinksUpdate pOsuPayload_ pOsuSinkName_ =
    OrganizationsSinksUpdate'
    { _osuXgafv = Nothing
    , _osuUniqueWriterIdentity = Nothing
    , _osuUploadProtocol = Nothing
    , _osuPp = True
    , _osuAccessToken = Nothing
    , _osuUploadType = Nothing
    , _osuPayload = pOsuPayload_
    , _osuBearerToken = Nothing
    , _osuSinkName = pOsuSinkName_
    , _osuCallback = Nothing
    }

-- | V1 error format.
osuXgafv :: Lens' OrganizationsSinksUpdate (Maybe Xgafv)
osuXgafv = lens _osuXgafv (\ s a -> s{_osuXgafv = a})

-- | Optional. See sinks.create for a description of this field. When
-- updating a sink, the effect of this field on the value of
-- writer_identity in the updated sink depends on both the old and new
-- values of this field: If the old and new values of this field are both
-- false or both true, then there is no change to the sink\'s
-- writer_identity. If the old value was false and the new value is true,
-- then writer_identity is changed to a unique service account. It is an
-- error if the old value was true and the new value is false.
osuUniqueWriterIdentity :: Lens' OrganizationsSinksUpdate (Maybe Bool)
osuUniqueWriterIdentity
  = lens _osuUniqueWriterIdentity
      (\ s a -> s{_osuUniqueWriterIdentity = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osuUploadProtocol :: Lens' OrganizationsSinksUpdate (Maybe Text)
osuUploadProtocol
  = lens _osuUploadProtocol
      (\ s a -> s{_osuUploadProtocol = a})

-- | Pretty-print response.
osuPp :: Lens' OrganizationsSinksUpdate Bool
osuPp = lens _osuPp (\ s a -> s{_osuPp = a})

-- | OAuth access token.
osuAccessToken :: Lens' OrganizationsSinksUpdate (Maybe Text)
osuAccessToken
  = lens _osuAccessToken
      (\ s a -> s{_osuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osuUploadType :: Lens' OrganizationsSinksUpdate (Maybe Text)
osuUploadType
  = lens _osuUploadType
      (\ s a -> s{_osuUploadType = a})

-- | Multipart request metadata.
osuPayload :: Lens' OrganizationsSinksUpdate LogSink
osuPayload
  = lens _osuPayload (\ s a -> s{_osuPayload = a})

-- | OAuth bearer token.
osuBearerToken :: Lens' OrganizationsSinksUpdate (Maybe Text)
osuBearerToken
  = lens _osuBearerToken
      (\ s a -> s{_osuBearerToken = a})

-- | Required. The full resource name of the sink to update, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
osuSinkName :: Lens' OrganizationsSinksUpdate Text
osuSinkName
  = lens _osuSinkName (\ s a -> s{_osuSinkName = a})

-- | JSONP
osuCallback :: Lens' OrganizationsSinksUpdate (Maybe Text)
osuCallback
  = lens _osuCallback (\ s a -> s{_osuCallback = a})

instance GoogleRequest OrganizationsSinksUpdate where
        type Rs OrganizationsSinksUpdate = LogSink
        type Scopes OrganizationsSinksUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsSinksUpdate'{..}
          = go _osuSinkName _osuXgafv _osuUniqueWriterIdentity
              _osuUploadProtocol
              (Just _osuPp)
              _osuAccessToken
              _osuUploadType
              _osuBearerToken
              _osuCallback
              (Just AltJSON)
              _osuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksUpdateResource)
                      mempty
