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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the SSL certificate. For First Generation instances, the
-- certificate remains valid until the instance is restarted.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.sslCerts.delete@.
module Network.Google.Resource.SQL.SSLCerts.Delete
    (
    -- * REST Resource
      SSLCertsDeleteResource

    -- * Creating a Request
    , sslCertsDelete
    , SSLCertsDelete

    -- * Request Lenses
    , scdXgafv
    , scdUploadProtocol
    , scdProject
    , scdAccessToken
    , scdUploadType
    , scdSha1Fingerprint
    , scdCallback
    , scdInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.delete@ method which the
-- 'SSLCertsDelete' request conforms to.
type SSLCertsDeleteResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "sslCerts" :>
                 Capture "sha1Fingerprint" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes the SSL certificate. For First Generation instances, the
-- certificate remains valid until the instance is restarted.
--
-- /See:/ 'sslCertsDelete' smart constructor.
data SSLCertsDelete =
  SSLCertsDelete'
    { _scdXgafv :: !(Maybe Xgafv)
    , _scdUploadProtocol :: !(Maybe Text)
    , _scdProject :: !Text
    , _scdAccessToken :: !(Maybe Text)
    , _scdUploadType :: !(Maybe Text)
    , _scdSha1Fingerprint :: !Text
    , _scdCallback :: !(Maybe Text)
    , _scdInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdXgafv'
--
-- * 'scdUploadProtocol'
--
-- * 'scdProject'
--
-- * 'scdAccessToken'
--
-- * 'scdUploadType'
--
-- * 'scdSha1Fingerprint'
--
-- * 'scdCallback'
--
-- * 'scdInstance'
sslCertsDelete
    :: Text -- ^ 'scdProject'
    -> Text -- ^ 'scdSha1Fingerprint'
    -> Text -- ^ 'scdInstance'
    -> SSLCertsDelete
sslCertsDelete pScdProject_ pScdSha1Fingerprint_ pScdInstance_ =
  SSLCertsDelete'
    { _scdXgafv = Nothing
    , _scdUploadProtocol = Nothing
    , _scdProject = pScdProject_
    , _scdAccessToken = Nothing
    , _scdUploadType = Nothing
    , _scdSha1Fingerprint = pScdSha1Fingerprint_
    , _scdCallback = Nothing
    , _scdInstance = pScdInstance_
    }


-- | V1 error format.
scdXgafv :: Lens' SSLCertsDelete (Maybe Xgafv)
scdXgafv = lens _scdXgafv (\ s a -> s{_scdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scdUploadProtocol :: Lens' SSLCertsDelete (Maybe Text)
scdUploadProtocol
  = lens _scdUploadProtocol
      (\ s a -> s{_scdUploadProtocol = a})

-- | Project ID of the project that contains the instance.
scdProject :: Lens' SSLCertsDelete Text
scdProject
  = lens _scdProject (\ s a -> s{_scdProject = a})

-- | OAuth access token.
scdAccessToken :: Lens' SSLCertsDelete (Maybe Text)
scdAccessToken
  = lens _scdAccessToken
      (\ s a -> s{_scdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scdUploadType :: Lens' SSLCertsDelete (Maybe Text)
scdUploadType
  = lens _scdUploadType
      (\ s a -> s{_scdUploadType = a})

-- | Sha1 FingerPrint.
scdSha1Fingerprint :: Lens' SSLCertsDelete Text
scdSha1Fingerprint
  = lens _scdSha1Fingerprint
      (\ s a -> s{_scdSha1Fingerprint = a})

-- | JSONP
scdCallback :: Lens' SSLCertsDelete (Maybe Text)
scdCallback
  = lens _scdCallback (\ s a -> s{_scdCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
scdInstance :: Lens' SSLCertsDelete Text
scdInstance
  = lens _scdInstance (\ s a -> s{_scdInstance = a})

instance GoogleRequest SSLCertsDelete where
        type Rs SSLCertsDelete = Operation
        type Scopes SSLCertsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsDelete'{..}
          = go _scdProject _scdInstance _scdSha1Fingerprint
              _scdXgafv
              _scdUploadProtocol
              _scdAccessToken
              _scdUploadType
              _scdCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsDeleteResource)
                      mempty
