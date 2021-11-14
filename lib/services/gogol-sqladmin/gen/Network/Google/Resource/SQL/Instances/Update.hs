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
-- Module      : Network.Google.Resource.SQL.Instances.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings of a Cloud SQL instance. Using this operation might
-- cause your instance to restart.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.update@.
module Network.Google.Resource.SQL.Instances.Update
    (
    -- * REST Resource
      InstancesUpdateResource

    -- * Creating a Request
    , instancesUpdate
    , InstancesUpdate

    -- * Request Lenses
    , iuXgafv
    , iuUploadProtocol
    , iuProject
    , iuAccessToken
    , iuUploadType
    , iuPayload
    , iuCallback
    , iuInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.update@ method which the
-- 'InstancesUpdate' request conforms to.
type InstancesUpdateResource =
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
                           ReqBody '[JSON] DatabaseInstance :>
                             Put '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. Using this operation might
-- cause your instance to restart.
--
-- /See:/ 'instancesUpdate' smart constructor.
data InstancesUpdate =
  InstancesUpdate'
    { _iuXgafv :: !(Maybe Xgafv)
    , _iuUploadProtocol :: !(Maybe Text)
    , _iuProject :: !Text
    , _iuAccessToken :: !(Maybe Text)
    , _iuUploadType :: !(Maybe Text)
    , _iuPayload :: !DatabaseInstance
    , _iuCallback :: !(Maybe Text)
    , _iuInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuXgafv'
--
-- * 'iuUploadProtocol'
--
-- * 'iuProject'
--
-- * 'iuAccessToken'
--
-- * 'iuUploadType'
--
-- * 'iuPayload'
--
-- * 'iuCallback'
--
-- * 'iuInstance'
instancesUpdate
    :: Text -- ^ 'iuProject'
    -> DatabaseInstance -- ^ 'iuPayload'
    -> Text -- ^ 'iuInstance'
    -> InstancesUpdate
instancesUpdate pIuProject_ pIuPayload_ pIuInstance_ =
  InstancesUpdate'
    { _iuXgafv = Nothing
    , _iuUploadProtocol = Nothing
    , _iuProject = pIuProject_
    , _iuAccessToken = Nothing
    , _iuUploadType = Nothing
    , _iuPayload = pIuPayload_
    , _iuCallback = Nothing
    , _iuInstance = pIuInstance_
    }


-- | V1 error format.
iuXgafv :: Lens' InstancesUpdate (Maybe Xgafv)
iuXgafv = lens _iuXgafv (\ s a -> s{_iuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iuUploadProtocol :: Lens' InstancesUpdate (Maybe Text)
iuUploadProtocol
  = lens _iuUploadProtocol
      (\ s a -> s{_iuUploadProtocol = a})

-- | Project ID of the project that contains the instance.
iuProject :: Lens' InstancesUpdate Text
iuProject
  = lens _iuProject (\ s a -> s{_iuProject = a})

-- | OAuth access token.
iuAccessToken :: Lens' InstancesUpdate (Maybe Text)
iuAccessToken
  = lens _iuAccessToken
      (\ s a -> s{_iuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iuUploadType :: Lens' InstancesUpdate (Maybe Text)
iuUploadType
  = lens _iuUploadType (\ s a -> s{_iuUploadType = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstancesUpdate DatabaseInstance
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | JSONP
iuCallback :: Lens' InstancesUpdate (Maybe Text)
iuCallback
  = lens _iuCallback (\ s a -> s{_iuCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iuInstance :: Lens' InstancesUpdate Text
iuInstance
  = lens _iuInstance (\ s a -> s{_iuInstance = a})

instance GoogleRequest InstancesUpdate where
        type Rs InstancesUpdate = Operation
        type Scopes InstancesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesUpdate'{..}
          = go _iuProject _iuInstance _iuXgafv
              _iuUploadProtocol
              _iuAccessToken
              _iuUploadType
              _iuCallback
              (Just AltJSON)
              _iuPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesUpdateResource)
                      mempty
