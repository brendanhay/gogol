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
-- Module      : Network.Google.Resource.SQL.SSLCerts.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.sslCerts.insert@.
module Network.Google.Resource.SQL.SSLCerts.Insert
    (
    -- * REST Resource
      SSLCertsInsertResource

    -- * Creating a Request
    , sslCertsInsert
    , SSLCertsInsert

    -- * Request Lenses
    , sciXgafv
    , sciUploadProtocol
    , sciProject
    , sciAccessToken
    , sciUploadType
    , sciPayload
    , sciCallback
    , sciInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.insert@ method which the
-- 'SSLCertsInsert' request conforms to.
type SSLCertsInsertResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "sslCerts" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SSLCertsInsertRequest :>
                               Post '[JSON] SSLCertsInsertResponse

-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ 'sslCertsInsert' smart constructor.
data SSLCertsInsert =
  SSLCertsInsert'
    { _sciXgafv :: !(Maybe Xgafv)
    , _sciUploadProtocol :: !(Maybe Text)
    , _sciProject :: !Text
    , _sciAccessToken :: !(Maybe Text)
    , _sciUploadType :: !(Maybe Text)
    , _sciPayload :: !SSLCertsInsertRequest
    , _sciCallback :: !(Maybe Text)
    , _sciInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciXgafv'
--
-- * 'sciUploadProtocol'
--
-- * 'sciProject'
--
-- * 'sciAccessToken'
--
-- * 'sciUploadType'
--
-- * 'sciPayload'
--
-- * 'sciCallback'
--
-- * 'sciInstance'
sslCertsInsert
    :: Text -- ^ 'sciProject'
    -> SSLCertsInsertRequest -- ^ 'sciPayload'
    -> Text -- ^ 'sciInstance'
    -> SSLCertsInsert
sslCertsInsert pSciProject_ pSciPayload_ pSciInstance_ =
  SSLCertsInsert'
    { _sciXgafv = Nothing
    , _sciUploadProtocol = Nothing
    , _sciProject = pSciProject_
    , _sciAccessToken = Nothing
    , _sciUploadType = Nothing
    , _sciPayload = pSciPayload_
    , _sciCallback = Nothing
    , _sciInstance = pSciInstance_
    }


-- | V1 error format.
sciXgafv :: Lens' SSLCertsInsert (Maybe Xgafv)
sciXgafv = lens _sciXgafv (\ s a -> s{_sciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sciUploadProtocol :: Lens' SSLCertsInsert (Maybe Text)
sciUploadProtocol
  = lens _sciUploadProtocol
      (\ s a -> s{_sciUploadProtocol = a})

-- | Project ID of the project that contains the instance.
sciProject :: Lens' SSLCertsInsert Text
sciProject
  = lens _sciProject (\ s a -> s{_sciProject = a})

-- | OAuth access token.
sciAccessToken :: Lens' SSLCertsInsert (Maybe Text)
sciAccessToken
  = lens _sciAccessToken
      (\ s a -> s{_sciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sciUploadType :: Lens' SSLCertsInsert (Maybe Text)
sciUploadType
  = lens _sciUploadType
      (\ s a -> s{_sciUploadType = a})

-- | Multipart request metadata.
sciPayload :: Lens' SSLCertsInsert SSLCertsInsertRequest
sciPayload
  = lens _sciPayload (\ s a -> s{_sciPayload = a})

-- | JSONP
sciCallback :: Lens' SSLCertsInsert (Maybe Text)
sciCallback
  = lens _sciCallback (\ s a -> s{_sciCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sciInstance :: Lens' SSLCertsInsert Text
sciInstance
  = lens _sciInstance (\ s a -> s{_sciInstance = a})

instance GoogleRequest SSLCertsInsert where
        type Rs SSLCertsInsert = SSLCertsInsertResponse
        type Scopes SSLCertsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsInsert'{..}
          = go _sciProject _sciInstance _sciXgafv
              _sciUploadProtocol
              _sciAccessToken
              _sciUploadType
              _sciCallback
              (Just AltJSON)
              _sciPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsInsertResource)
                      mempty
