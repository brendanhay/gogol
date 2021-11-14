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
-- Module      : Network.Google.Resource.SQL.Connect.GenerateEphemeral
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.connect.generateEphemeral@.
module Network.Google.Resource.SQL.Connect.GenerateEphemeral
    (
    -- * REST Resource
      ConnectGenerateEphemeralResource

    -- * Creating a Request
    , connectGenerateEphemeral
    , ConnectGenerateEphemeral

    -- * Request Lenses
    , cgeXgafv
    , cgeUploadProtocol
    , cgeProject
    , cgeAccessToken
    , cgeUploadType
    , cgePayload
    , cgeCallback
    , cgeInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.connect.generateEphemeral@ method which the
-- 'ConnectGenerateEphemeral' request conforms to.
type ConnectGenerateEphemeralResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             CaptureMode "instance" "generateEphemeralCert" Text
               :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GenerateEphemeralCertRequest :>
                             Post '[JSON] GenerateEphemeralCertResponse

-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ 'connectGenerateEphemeral' smart constructor.
data ConnectGenerateEphemeral =
  ConnectGenerateEphemeral'
    { _cgeXgafv :: !(Maybe Xgafv)
    , _cgeUploadProtocol :: !(Maybe Text)
    , _cgeProject :: !Text
    , _cgeAccessToken :: !(Maybe Text)
    , _cgeUploadType :: !(Maybe Text)
    , _cgePayload :: !GenerateEphemeralCertRequest
    , _cgeCallback :: !(Maybe Text)
    , _cgeInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConnectGenerateEphemeral' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgeXgafv'
--
-- * 'cgeUploadProtocol'
--
-- * 'cgeProject'
--
-- * 'cgeAccessToken'
--
-- * 'cgeUploadType'
--
-- * 'cgePayload'
--
-- * 'cgeCallback'
--
-- * 'cgeInstance'
connectGenerateEphemeral
    :: Text -- ^ 'cgeProject'
    -> GenerateEphemeralCertRequest -- ^ 'cgePayload'
    -> Text -- ^ 'cgeInstance'
    -> ConnectGenerateEphemeral
connectGenerateEphemeral pCgeProject_ pCgePayload_ pCgeInstance_ =
  ConnectGenerateEphemeral'
    { _cgeXgafv = Nothing
    , _cgeUploadProtocol = Nothing
    , _cgeProject = pCgeProject_
    , _cgeAccessToken = Nothing
    , _cgeUploadType = Nothing
    , _cgePayload = pCgePayload_
    , _cgeCallback = Nothing
    , _cgeInstance = pCgeInstance_
    }


-- | V1 error format.
cgeXgafv :: Lens' ConnectGenerateEphemeral (Maybe Xgafv)
cgeXgafv = lens _cgeXgafv (\ s a -> s{_cgeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgeUploadProtocol :: Lens' ConnectGenerateEphemeral (Maybe Text)
cgeUploadProtocol
  = lens _cgeUploadProtocol
      (\ s a -> s{_cgeUploadProtocol = a})

-- | Project ID of the project that contains the instance.
cgeProject :: Lens' ConnectGenerateEphemeral Text
cgeProject
  = lens _cgeProject (\ s a -> s{_cgeProject = a})

-- | OAuth access token.
cgeAccessToken :: Lens' ConnectGenerateEphemeral (Maybe Text)
cgeAccessToken
  = lens _cgeAccessToken
      (\ s a -> s{_cgeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgeUploadType :: Lens' ConnectGenerateEphemeral (Maybe Text)
cgeUploadType
  = lens _cgeUploadType
      (\ s a -> s{_cgeUploadType = a})

-- | Multipart request metadata.
cgePayload :: Lens' ConnectGenerateEphemeral GenerateEphemeralCertRequest
cgePayload
  = lens _cgePayload (\ s a -> s{_cgePayload = a})

-- | JSONP
cgeCallback :: Lens' ConnectGenerateEphemeral (Maybe Text)
cgeCallback
  = lens _cgeCallback (\ s a -> s{_cgeCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
cgeInstance :: Lens' ConnectGenerateEphemeral Text
cgeInstance
  = lens _cgeInstance (\ s a -> s{_cgeInstance = a})

instance GoogleRequest ConnectGenerateEphemeral where
        type Rs ConnectGenerateEphemeral =
             GenerateEphemeralCertResponse
        type Scopes ConnectGenerateEphemeral =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient ConnectGenerateEphemeral'{..}
          = go _cgeProject _cgeInstance _cgeXgafv
              _cgeUploadProtocol
              _cgeAccessToken
              _cgeUploadType
              _cgeCallback
              (Just AltJSON)
              _cgePayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ConnectGenerateEphemeralResource)
                      mempty
