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
-- Module      : Network.Google.Resource.SQL.Instances.ResetSSLConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all client certificates and generates a new server SSL
-- certificate for the instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.resetSslConfig@.
module Network.Google.Resource.SQL.Instances.ResetSSLConfig
    (
    -- * REST Resource
      InstancesResetSSLConfigResource

    -- * Creating a Request
    , instancesResetSSLConfig
    , InstancesResetSSLConfig

    -- * Request Lenses
    , irscXgafv
    , irscUploadProtocol
    , irscProject
    , irscAccessToken
    , irscUploadType
    , irscCallback
    , irscInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.resetSslConfig@ method which the
-- 'InstancesResetSSLConfig' request conforms to.
type InstancesResetSSLConfigResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "resetSslConfig" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes all client certificates and generates a new server SSL
-- certificate for the instance.
--
-- /See:/ 'instancesResetSSLConfig' smart constructor.
data InstancesResetSSLConfig =
  InstancesResetSSLConfig'
    { _irscXgafv :: !(Maybe Xgafv)
    , _irscUploadProtocol :: !(Maybe Text)
    , _irscProject :: !Text
    , _irscAccessToken :: !(Maybe Text)
    , _irscUploadType :: !(Maybe Text)
    , _irscCallback :: !(Maybe Text)
    , _irscInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesResetSSLConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irscXgafv'
--
-- * 'irscUploadProtocol'
--
-- * 'irscProject'
--
-- * 'irscAccessToken'
--
-- * 'irscUploadType'
--
-- * 'irscCallback'
--
-- * 'irscInstance'
instancesResetSSLConfig
    :: Text -- ^ 'irscProject'
    -> Text -- ^ 'irscInstance'
    -> InstancesResetSSLConfig
instancesResetSSLConfig pIrscProject_ pIrscInstance_ =
  InstancesResetSSLConfig'
    { _irscXgafv = Nothing
    , _irscUploadProtocol = Nothing
    , _irscProject = pIrscProject_
    , _irscAccessToken = Nothing
    , _irscUploadType = Nothing
    , _irscCallback = Nothing
    , _irscInstance = pIrscInstance_
    }


-- | V1 error format.
irscXgafv :: Lens' InstancesResetSSLConfig (Maybe Xgafv)
irscXgafv
  = lens _irscXgafv (\ s a -> s{_irscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
irscUploadProtocol :: Lens' InstancesResetSSLConfig (Maybe Text)
irscUploadProtocol
  = lens _irscUploadProtocol
      (\ s a -> s{_irscUploadProtocol = a})

-- | Project ID of the project that contains the instance.
irscProject :: Lens' InstancesResetSSLConfig Text
irscProject
  = lens _irscProject (\ s a -> s{_irscProject = a})

-- | OAuth access token.
irscAccessToken :: Lens' InstancesResetSSLConfig (Maybe Text)
irscAccessToken
  = lens _irscAccessToken
      (\ s a -> s{_irscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
irscUploadType :: Lens' InstancesResetSSLConfig (Maybe Text)
irscUploadType
  = lens _irscUploadType
      (\ s a -> s{_irscUploadType = a})

-- | JSONP
irscCallback :: Lens' InstancesResetSSLConfig (Maybe Text)
irscCallback
  = lens _irscCallback (\ s a -> s{_irscCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irscInstance :: Lens' InstancesResetSSLConfig Text
irscInstance
  = lens _irscInstance (\ s a -> s{_irscInstance = a})

instance GoogleRequest InstancesResetSSLConfig where
        type Rs InstancesResetSSLConfig = Operation
        type Scopes InstancesResetSSLConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesResetSSLConfig'{..}
          = go _irscProject _irscInstance _irscXgafv
              _irscUploadProtocol
              _irscAccessToken
              _irscUploadType
              _irscCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesResetSSLConfigResource)
                      mempty
