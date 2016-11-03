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
-- Updates or creates a sink.
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
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LogSink :> Put '[JSON] LogSink

-- | Updates or creates a sink.
--
-- /See:/ 'organizationsSinksUpdate' smart constructor.
data OrganizationsSinksUpdate = OrganizationsSinksUpdate'
    { _osuXgafv          :: !(Maybe Xgafv)
    , _osuUploadProtocol :: !(Maybe Text)
    , _osuPp             :: !Bool
    , _osuAccessToken    :: !(Maybe Text)
    , _osuUploadType     :: !(Maybe Text)
    , _osuPayload        :: !LogSink
    , _osuBearerToken    :: !(Maybe Text)
    , _osuSinkName       :: !Text
    , _osuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osuXgafv'
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

-- | Required. The resource name of the sink to update, including the parent
-- resource and the sink identifier. If the sink does not exist, this
-- method creates the sink. Example:
-- \`\"projects\/my-project-id\/sinks\/my-sink-id\"\`.
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
          = go _osuSinkName _osuXgafv _osuUploadProtocol
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
