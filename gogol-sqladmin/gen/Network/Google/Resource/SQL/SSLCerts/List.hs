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
-- Module      : Network.Google.Resource.SQL.SSLCerts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the current SSL certificates for the instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.sslCerts.list@.
module Network.Google.Resource.SQL.SSLCerts.List
    (
    -- * REST Resource
      SSLCertsListResource

    -- * Creating a Request
    , sslCertsList
    , SSLCertsList

    -- * Request Lenses
    , sclXgafv
    , sclUploadProtocol
    , sclProject
    , sclAccessToken
    , sclUploadType
    , sclCallback
    , sclInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.sslCerts.list@ method which the
-- 'SSLCertsList' request conforms to.
type SSLCertsListResource =
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
                             Get '[JSON] SSLCertsListResponse

-- | Lists all of the current SSL certificates for the instance.
--
-- /See:/ 'sslCertsList' smart constructor.
data SSLCertsList =
  SSLCertsList'
    { _sclXgafv :: !(Maybe Xgafv)
    , _sclUploadProtocol :: !(Maybe Text)
    , _sclProject :: !Text
    , _sclAccessToken :: !(Maybe Text)
    , _sclUploadType :: !(Maybe Text)
    , _sclCallback :: !(Maybe Text)
    , _sclInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclXgafv'
--
-- * 'sclUploadProtocol'
--
-- * 'sclProject'
--
-- * 'sclAccessToken'
--
-- * 'sclUploadType'
--
-- * 'sclCallback'
--
-- * 'sclInstance'
sslCertsList
    :: Text -- ^ 'sclProject'
    -> Text -- ^ 'sclInstance'
    -> SSLCertsList
sslCertsList pSclProject_ pSclInstance_ =
  SSLCertsList'
    { _sclXgafv = Nothing
    , _sclUploadProtocol = Nothing
    , _sclProject = pSclProject_
    , _sclAccessToken = Nothing
    , _sclUploadType = Nothing
    , _sclCallback = Nothing
    , _sclInstance = pSclInstance_
    }


-- | V1 error format.
sclXgafv :: Lens' SSLCertsList (Maybe Xgafv)
sclXgafv = lens _sclXgafv (\ s a -> s{_sclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sclUploadProtocol :: Lens' SSLCertsList (Maybe Text)
sclUploadProtocol
  = lens _sclUploadProtocol
      (\ s a -> s{_sclUploadProtocol = a})

-- | Project ID of the project that contains the instance.
sclProject :: Lens' SSLCertsList Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

-- | OAuth access token.
sclAccessToken :: Lens' SSLCertsList (Maybe Text)
sclAccessToken
  = lens _sclAccessToken
      (\ s a -> s{_sclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sclUploadType :: Lens' SSLCertsList (Maybe Text)
sclUploadType
  = lens _sclUploadType
      (\ s a -> s{_sclUploadType = a})

-- | JSONP
sclCallback :: Lens' SSLCertsList (Maybe Text)
sclCallback
  = lens _sclCallback (\ s a -> s{_sclCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sclInstance :: Lens' SSLCertsList Text
sclInstance
  = lens _sclInstance (\ s a -> s{_sclInstance = a})

instance GoogleRequest SSLCertsList where
        type Rs SSLCertsList = SSLCertsListResponse
        type Scopes SSLCertsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient SSLCertsList'{..}
          = go _sclProject _sclInstance _sclXgafv
              _sclUploadProtocol
              _sclAccessToken
              _sclUploadType
              _sclCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy SSLCertsListResource)
                      mempty
