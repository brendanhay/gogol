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
-- Module      : Network.Google.Resource.SQL.Instances.Restart
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.restart@.
module Network.Google.Resource.SQL.Instances.Restart
    (
    -- * REST Resource
      InstancesRestartResource

    -- * Creating a Request
    , instancesRestart
    , InstancesRestart

    -- * Request Lenses
    , irXgafv
    , irUploadProtocol
    , irProject
    , irAccessToken
    , irUploadType
    , irCallback
    , irInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.restart@ method which the
-- 'InstancesRestart' request conforms to.
type InstancesRestartResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "restart" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Restarts a Cloud SQL instance.
--
-- /See:/ 'instancesRestart' smart constructor.
data InstancesRestart =
  InstancesRestart'
    { _irXgafv :: !(Maybe Xgafv)
    , _irUploadProtocol :: !(Maybe Text)
    , _irProject :: !Text
    , _irAccessToken :: !(Maybe Text)
    , _irUploadType :: !(Maybe Text)
    , _irCallback :: !(Maybe Text)
    , _irInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesRestart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irXgafv'
--
-- * 'irUploadProtocol'
--
-- * 'irProject'
--
-- * 'irAccessToken'
--
-- * 'irUploadType'
--
-- * 'irCallback'
--
-- * 'irInstance'
instancesRestart
    :: Text -- ^ 'irProject'
    -> Text -- ^ 'irInstance'
    -> InstancesRestart
instancesRestart pIrProject_ pIrInstance_ =
  InstancesRestart'
    { _irXgafv = Nothing
    , _irUploadProtocol = Nothing
    , _irProject = pIrProject_
    , _irAccessToken = Nothing
    , _irUploadType = Nothing
    , _irCallback = Nothing
    , _irInstance = pIrInstance_
    }


-- | V1 error format.
irXgafv :: Lens' InstancesRestart (Maybe Xgafv)
irXgafv = lens _irXgafv (\ s a -> s{_irXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
irUploadProtocol :: Lens' InstancesRestart (Maybe Text)
irUploadProtocol
  = lens _irUploadProtocol
      (\ s a -> s{_irUploadProtocol = a})

-- | Project ID of the project that contains the instance to be restarted.
irProject :: Lens' InstancesRestart Text
irProject
  = lens _irProject (\ s a -> s{_irProject = a})

-- | OAuth access token.
irAccessToken :: Lens' InstancesRestart (Maybe Text)
irAccessToken
  = lens _irAccessToken
      (\ s a -> s{_irAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
irUploadType :: Lens' InstancesRestart (Maybe Text)
irUploadType
  = lens _irUploadType (\ s a -> s{_irUploadType = a})

-- | JSONP
irCallback :: Lens' InstancesRestart (Maybe Text)
irCallback
  = lens _irCallback (\ s a -> s{_irCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irInstance :: Lens' InstancesRestart Text
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance GoogleRequest InstancesRestart where
        type Rs InstancesRestart = Operation
        type Scopes InstancesRestart =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesRestart'{..}
          = go _irProject _irInstance _irXgafv
              _irUploadProtocol
              _irAccessToken
              _irUploadType
              _irCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesRestartResource)
                      mempty
