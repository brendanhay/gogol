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
-- Module      : Network.Google.Resource.SQL.Instances.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.delete@.
module Network.Google.Resource.SQL.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteResource

    -- * Creating a Request
    , instancesDelete
    , InstancesDelete

    -- * Request Lenses
    , idXgafv
    , idUploadProtocol
    , idProject
    , idAccessToken
    , idUploadType
    , idCallback
    , idInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.delete@ method which the
-- 'InstancesDelete' request conforms to.
type InstancesDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a Cloud SQL instance.
--
-- /See:/ 'instancesDelete' smart constructor.
data InstancesDelete =
  InstancesDelete'
    { _idXgafv :: !(Maybe Xgafv)
    , _idUploadProtocol :: !(Maybe Text)
    , _idProject :: !Text
    , _idAccessToken :: !(Maybe Text)
    , _idUploadType :: !(Maybe Text)
    , _idCallback :: !(Maybe Text)
    , _idInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idXgafv'
--
-- * 'idUploadProtocol'
--
-- * 'idProject'
--
-- * 'idAccessToken'
--
-- * 'idUploadType'
--
-- * 'idCallback'
--
-- * 'idInstance'
instancesDelete
    :: Text -- ^ 'idProject'
    -> Text -- ^ 'idInstance'
    -> InstancesDelete
instancesDelete pIdProject_ pIdInstance_ =
  InstancesDelete'
    { _idXgafv = Nothing
    , _idUploadProtocol = Nothing
    , _idProject = pIdProject_
    , _idAccessToken = Nothing
    , _idUploadType = Nothing
    , _idCallback = Nothing
    , _idInstance = pIdInstance_
    }


-- | V1 error format.
idXgafv :: Lens' InstancesDelete (Maybe Xgafv)
idXgafv = lens _idXgafv (\ s a -> s{_idXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idUploadProtocol :: Lens' InstancesDelete (Maybe Text)
idUploadProtocol
  = lens _idUploadProtocol
      (\ s a -> s{_idUploadProtocol = a})

-- | Project ID of the project that contains the instance to be deleted.
idProject :: Lens' InstancesDelete Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

-- | OAuth access token.
idAccessToken :: Lens' InstancesDelete (Maybe Text)
idAccessToken
  = lens _idAccessToken
      (\ s a -> s{_idAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idUploadType :: Lens' InstancesDelete (Maybe Text)
idUploadType
  = lens _idUploadType (\ s a -> s{_idUploadType = a})

-- | JSONP
idCallback :: Lens' InstancesDelete (Maybe Text)
idCallback
  = lens _idCallback (\ s a -> s{_idCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
idInstance :: Lens' InstancesDelete Text
idInstance
  = lens _idInstance (\ s a -> s{_idInstance = a})

instance GoogleRequest InstancesDelete where
        type Rs InstancesDelete = Operation
        type Scopes InstancesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesDelete'{..}
          = go _idProject _idInstance _idXgafv
              _idUploadProtocol
              _idAccessToken
              _idUploadType
              _idCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDeleteResource)
                      mempty
