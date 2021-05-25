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
-- Module      : Network.Google.Resource.SQL.Instances.RotateServerCa
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rotates the server certificate to one signed by the Certificate
-- Authority (CA) version previously added with the addServerCA method.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.rotateServerCa@.
module Network.Google.Resource.SQL.Instances.RotateServerCa
    (
    -- * REST Resource
      InstancesRotateServerCaResource

    -- * Creating a Request
    , instancesRotateServerCa
    , InstancesRotateServerCa

    -- * Request Lenses
    , iXgafv
    , iUploadProtocol
    , iProject
    , iAccessToken
    , iUploadType
    , iPayload
    , iCallback
    , iInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.rotateServerCa@ method which the
-- 'InstancesRotateServerCa' request conforms to.
type InstancesRotateServerCaResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "rotateServerCa" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesRotateServerCaRequest :>
                               Post '[JSON] Operation

-- | Rotates the server certificate to one signed by the Certificate
-- Authority (CA) version previously added with the addServerCA method.
--
-- /See:/ 'instancesRotateServerCa' smart constructor.
data InstancesRotateServerCa =
  InstancesRotateServerCa'
    { _iXgafv :: !(Maybe Xgafv)
    , _iUploadProtocol :: !(Maybe Text)
    , _iProject :: !Text
    , _iAccessToken :: !(Maybe Text)
    , _iUploadType :: !(Maybe Text)
    , _iPayload :: !InstancesRotateServerCaRequest
    , _iCallback :: !(Maybe Text)
    , _iInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesRotateServerCa' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iXgafv'
--
-- * 'iUploadProtocol'
--
-- * 'iProject'
--
-- * 'iAccessToken'
--
-- * 'iUploadType'
--
-- * 'iPayload'
--
-- * 'iCallback'
--
-- * 'iInstance'
instancesRotateServerCa
    :: Text -- ^ 'iProject'
    -> InstancesRotateServerCaRequest -- ^ 'iPayload'
    -> Text -- ^ 'iInstance'
    -> InstancesRotateServerCa
instancesRotateServerCa pIProject_ pIPayload_ pIInstance_ =
  InstancesRotateServerCa'
    { _iXgafv = Nothing
    , _iUploadProtocol = Nothing
    , _iProject = pIProject_
    , _iAccessToken = Nothing
    , _iUploadType = Nothing
    , _iPayload = pIPayload_
    , _iCallback = Nothing
    , _iInstance = pIInstance_
    }


-- | V1 error format.
iXgafv :: Lens' InstancesRotateServerCa (Maybe Xgafv)
iXgafv = lens _iXgafv (\ s a -> s{_iXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iUploadProtocol :: Lens' InstancesRotateServerCa (Maybe Text)
iUploadProtocol
  = lens _iUploadProtocol
      (\ s a -> s{_iUploadProtocol = a})

-- | Project ID of the project that contains the instance.
iProject :: Lens' InstancesRotateServerCa Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | OAuth access token.
iAccessToken :: Lens' InstancesRotateServerCa (Maybe Text)
iAccessToken
  = lens _iAccessToken (\ s a -> s{_iAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iUploadType :: Lens' InstancesRotateServerCa (Maybe Text)
iUploadType
  = lens _iUploadType (\ s a -> s{_iUploadType = a})

-- | Multipart request metadata.
iPayload :: Lens' InstancesRotateServerCa InstancesRotateServerCaRequest
iPayload = lens _iPayload (\ s a -> s{_iPayload = a})

-- | JSONP
iCallback :: Lens' InstancesRotateServerCa (Maybe Text)
iCallback
  = lens _iCallback (\ s a -> s{_iCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iInstance :: Lens' InstancesRotateServerCa Text
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance GoogleRequest InstancesRotateServerCa where
        type Rs InstancesRotateServerCa = Operation
        type Scopes InstancesRotateServerCa =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesRotateServerCa'{..}
          = go _iProject _iInstance _iXgafv _iUploadProtocol
              _iAccessToken
              _iUploadType
              _iCallback
              (Just AltJSON)
              _iPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesRotateServerCaResource)
                      mempty
