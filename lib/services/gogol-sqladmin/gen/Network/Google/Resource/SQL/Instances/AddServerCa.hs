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
-- Module      : Network.Google.Resource.SQL.Instances.AddServerCa
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new trusted Certificate Authority (CA) version for the specified
-- instance. Required to prepare for a certificate rotation. If a CA
-- version was previously added but never used in a certificate rotation,
-- this operation replaces that version. There cannot be more than one CA
-- version waiting to be rotated in.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.addServerCa@.
module Network.Google.Resource.SQL.Instances.AddServerCa
    (
    -- * REST Resource
      InstancesAddServerCaResource

    -- * Creating a Request
    , instancesAddServerCa
    , InstancesAddServerCa

    -- * Request Lenses
    , iascXgafv
    , iascUploadProtocol
    , iascProject
    , iascAccessToken
    , iascUploadType
    , iascCallback
    , iascInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.addServerCa@ method which the
-- 'InstancesAddServerCa' request conforms to.
type InstancesAddServerCaResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "addServerCa" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Adds a new trusted Certificate Authority (CA) version for the specified
-- instance. Required to prepare for a certificate rotation. If a CA
-- version was previously added but never used in a certificate rotation,
-- this operation replaces that version. There cannot be more than one CA
-- version waiting to be rotated in.
--
-- /See:/ 'instancesAddServerCa' smart constructor.
data InstancesAddServerCa =
  InstancesAddServerCa'
    { _iascXgafv :: !(Maybe Xgafv)
    , _iascUploadProtocol :: !(Maybe Text)
    , _iascProject :: !Text
    , _iascAccessToken :: !(Maybe Text)
    , _iascUploadType :: !(Maybe Text)
    , _iascCallback :: !(Maybe Text)
    , _iascInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesAddServerCa' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iascXgafv'
--
-- * 'iascUploadProtocol'
--
-- * 'iascProject'
--
-- * 'iascAccessToken'
--
-- * 'iascUploadType'
--
-- * 'iascCallback'
--
-- * 'iascInstance'
instancesAddServerCa
    :: Text -- ^ 'iascProject'
    -> Text -- ^ 'iascInstance'
    -> InstancesAddServerCa
instancesAddServerCa pIascProject_ pIascInstance_ =
  InstancesAddServerCa'
    { _iascXgafv = Nothing
    , _iascUploadProtocol = Nothing
    , _iascProject = pIascProject_
    , _iascAccessToken = Nothing
    , _iascUploadType = Nothing
    , _iascCallback = Nothing
    , _iascInstance = pIascInstance_
    }


-- | V1 error format.
iascXgafv :: Lens' InstancesAddServerCa (Maybe Xgafv)
iascXgafv
  = lens _iascXgafv (\ s a -> s{_iascXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iascUploadProtocol :: Lens' InstancesAddServerCa (Maybe Text)
iascUploadProtocol
  = lens _iascUploadProtocol
      (\ s a -> s{_iascUploadProtocol = a})

-- | Project ID of the project that contains the instance.
iascProject :: Lens' InstancesAddServerCa Text
iascProject
  = lens _iascProject (\ s a -> s{_iascProject = a})

-- | OAuth access token.
iascAccessToken :: Lens' InstancesAddServerCa (Maybe Text)
iascAccessToken
  = lens _iascAccessToken
      (\ s a -> s{_iascAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iascUploadType :: Lens' InstancesAddServerCa (Maybe Text)
iascUploadType
  = lens _iascUploadType
      (\ s a -> s{_iascUploadType = a})

-- | JSONP
iascCallback :: Lens' InstancesAddServerCa (Maybe Text)
iascCallback
  = lens _iascCallback (\ s a -> s{_iascCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iascInstance :: Lens' InstancesAddServerCa Text
iascInstance
  = lens _iascInstance (\ s a -> s{_iascInstance = a})

instance GoogleRequest InstancesAddServerCa where
        type Rs InstancesAddServerCa = Operation
        type Scopes InstancesAddServerCa =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesAddServerCa'{..}
          = go _iascProject _iascInstance _iascXgafv
              _iascUploadProtocol
              _iascAccessToken
              _iascUploadType
              _iascCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAddServerCaResource)
                      mempty
