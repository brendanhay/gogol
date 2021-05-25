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
-- Module      : Network.Google.Resource.SQL.Instances.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a resource containing information about a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.get@.
module Network.Google.Resource.SQL.Instances.Get
    (
    -- * REST Resource
      InstancesGetResource

    -- * Creating a Request
    , instancesGet
    , InstancesGet

    -- * Request Lenses
    , igXgafv
    , igUploadProtocol
    , igProject
    , igAccessToken
    , igUploadType
    , igCallback
    , igInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.get@ method which the
-- 'InstancesGet' request conforms to.
type InstancesGetResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DatabaseInstance

-- | Retrieves a resource containing information about a Cloud SQL instance.
--
-- /See:/ 'instancesGet' smart constructor.
data InstancesGet =
  InstancesGet'
    { _igXgafv :: !(Maybe Xgafv)
    , _igUploadProtocol :: !(Maybe Text)
    , _igProject :: !Text
    , _igAccessToken :: !(Maybe Text)
    , _igUploadType :: !(Maybe Text)
    , _igCallback :: !(Maybe Text)
    , _igInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igXgafv'
--
-- * 'igUploadProtocol'
--
-- * 'igProject'
--
-- * 'igAccessToken'
--
-- * 'igUploadType'
--
-- * 'igCallback'
--
-- * 'igInstance'
instancesGet
    :: Text -- ^ 'igProject'
    -> Text -- ^ 'igInstance'
    -> InstancesGet
instancesGet pIgProject_ pIgInstance_ =
  InstancesGet'
    { _igXgafv = Nothing
    , _igUploadProtocol = Nothing
    , _igProject = pIgProject_
    , _igAccessToken = Nothing
    , _igUploadType = Nothing
    , _igCallback = Nothing
    , _igInstance = pIgInstance_
    }


-- | V1 error format.
igXgafv :: Lens' InstancesGet (Maybe Xgafv)
igXgafv = lens _igXgafv (\ s a -> s{_igXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
igUploadProtocol :: Lens' InstancesGet (Maybe Text)
igUploadProtocol
  = lens _igUploadProtocol
      (\ s a -> s{_igUploadProtocol = a})

-- | Project ID of the project that contains the instance.
igProject :: Lens' InstancesGet Text
igProject
  = lens _igProject (\ s a -> s{_igProject = a})

-- | OAuth access token.
igAccessToken :: Lens' InstancesGet (Maybe Text)
igAccessToken
  = lens _igAccessToken
      (\ s a -> s{_igAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
igUploadType :: Lens' InstancesGet (Maybe Text)
igUploadType
  = lens _igUploadType (\ s a -> s{_igUploadType = a})

-- | JSONP
igCallback :: Lens' InstancesGet (Maybe Text)
igCallback
  = lens _igCallback (\ s a -> s{_igCallback = a})

-- | Database instance ID. This does not include the project ID.
igInstance :: Lens' InstancesGet Text
igInstance
  = lens _igInstance (\ s a -> s{_igInstance = a})

instance GoogleRequest InstancesGet where
        type Rs InstancesGet = DatabaseInstance
        type Scopes InstancesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesGet'{..}
          = go _igProject _igInstance _igXgafv
              _igUploadProtocol
              _igAccessToken
              _igUploadType
              _igCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy InstancesGetResource)
                      mempty
