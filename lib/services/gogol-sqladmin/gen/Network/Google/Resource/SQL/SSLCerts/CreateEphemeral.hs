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
-- Module      : Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
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
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.sslCerts.createEphemeral@.
module Network.Google.Resource.SQL.SSLCerts.CreateEphemeral
    (
    -- * REST Resource
      SSLCertsCreateEphemeralResource

    -- * Creating a Request
    , sslCertsCreateEphemeral
    , SSLCertsCreateEphemeral

    -- * Request Lenses
    , scceXgafv
    , scceUploadProtocol
    , scceProject
    , scceAccessToken
    , scceUploadType
    , sccePayload
    , scceCallback
    , scceInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.createEphemeral@ method which the
-- 'SSLCertsCreateEphemeral' request conforms to.
type SSLCertsCreateEphemeralResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "createEphemeral" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SSLCertsCreateEphemeralRequest :>
                               Post '[JSON] SSLCert

-- | Generates a short-lived X509 certificate containing the provided public
-- key and signed by a private key specific to the target instance. Users
-- may use the certificate to authenticate as themselves when connecting to
-- the database.
--
-- /See:/ 'sslCertsCreateEphemeral' smart constructor.
data SSLCertsCreateEphemeral =
  SSLCertsCreateEphemeral'
    { _scceXgafv :: !(Maybe Xgafv)
    , _scceUploadProtocol :: !(Maybe Text)
    , _scceProject :: !Text
    , _scceAccessToken :: !(Maybe Text)
    , _scceUploadType :: !(Maybe Text)
    , _sccePayload :: !SSLCertsCreateEphemeralRequest
    , _scceCallback :: !(Maybe Text)
    , _scceInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsCreateEphemeral' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scceXgafv'
--
-- * 'scceUploadProtocol'
--
-- * 'scceProject'
--
-- * 'scceAccessToken'
--
-- * 'scceUploadType'
--
-- * 'sccePayload'
--
-- * 'scceCallback'
--
-- * 'scceInstance'
sslCertsCreateEphemeral
    :: Text -- ^ 'scceProject'
    -> SSLCertsCreateEphemeralRequest -- ^ 'sccePayload'
    -> Text -- ^ 'scceInstance'
    -> SSLCertsCreateEphemeral
sslCertsCreateEphemeral pScceProject_ pSccePayload_ pScceInstance_ =
  SSLCertsCreateEphemeral'
    { _scceXgafv = Nothing
    , _scceUploadProtocol = Nothing
    , _scceProject = pScceProject_
    , _scceAccessToken = Nothing
    , _scceUploadType = Nothing
    , _sccePayload = pSccePayload_
    , _scceCallback = Nothing
    , _scceInstance = pScceInstance_
    }


-- | V1 error format.
scceXgafv :: Lens' SSLCertsCreateEphemeral (Maybe Xgafv)
scceXgafv
  = lens _scceXgafv (\ s a -> s{_scceXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scceUploadProtocol :: Lens' SSLCertsCreateEphemeral (Maybe Text)
scceUploadProtocol
  = lens _scceUploadProtocol
      (\ s a -> s{_scceUploadProtocol = a})

-- | Project ID of the Cloud SQL project.
scceProject :: Lens' SSLCertsCreateEphemeral Text
scceProject
  = lens _scceProject (\ s a -> s{_scceProject = a})

-- | OAuth access token.
scceAccessToken :: Lens' SSLCertsCreateEphemeral (Maybe Text)
scceAccessToken
  = lens _scceAccessToken
      (\ s a -> s{_scceAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scceUploadType :: Lens' SSLCertsCreateEphemeral (Maybe Text)
scceUploadType
  = lens _scceUploadType
      (\ s a -> s{_scceUploadType = a})

-- | Multipart request metadata.
sccePayload :: Lens' SSLCertsCreateEphemeral SSLCertsCreateEphemeralRequest
sccePayload
  = lens _sccePayload (\ s a -> s{_sccePayload = a})

-- | JSONP
scceCallback :: Lens' SSLCertsCreateEphemeral (Maybe Text)
scceCallback
  = lens _scceCallback (\ s a -> s{_scceCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scceInstance :: Lens' SSLCertsCreateEphemeral Text
scceInstance
  = lens _scceInstance (\ s a -> s{_scceInstance = a})

instance GoogleRequest SSLCertsCreateEphemeral where
        type Rs SSLCertsCreateEphemeral = SSLCert
        type Scopes SSLCertsCreateEphemeral =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsCreateEphemeral'{..}
          = go _scceProject _scceInstance _scceXgafv
              _scceUploadProtocol
              _scceAccessToken
              _scceUploadType
              _scceCallback
              (Just AltJSON)
              _sccePayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertsCreateEphemeralResource)
                      mempty
