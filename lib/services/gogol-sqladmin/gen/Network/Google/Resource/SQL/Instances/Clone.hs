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
-- Module      : Network.Google.Resource.SQL.Instances.Clone
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud SQL instance as a clone of the source instance. Using
-- this operation might cause your instance to restart.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.clone@.
module Network.Google.Resource.SQL.Instances.Clone
    (
    -- * REST Resource
      InstancesCloneResource

    -- * Creating a Request
    , instancesClone
    , InstancesClone

    -- * Request Lenses
    , icXgafv
    , icUploadProtocol
    , icProject
    , icAccessToken
    , icUploadType
    , icPayload
    , icCallback
    , icInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.clone@ method which the
-- 'InstancesClone' request conforms to.
type InstancesCloneResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "clone" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesCloneRequest :>
                               Post '[JSON] Operation

-- | Creates a Cloud SQL instance as a clone of the source instance. Using
-- this operation might cause your instance to restart.
--
-- /See:/ 'instancesClone' smart constructor.
data InstancesClone =
  InstancesClone'
    { _icXgafv :: !(Maybe Xgafv)
    , _icUploadProtocol :: !(Maybe Text)
    , _icProject :: !Text
    , _icAccessToken :: !(Maybe Text)
    , _icUploadType :: !(Maybe Text)
    , _icPayload :: !InstancesCloneRequest
    , _icCallback :: !(Maybe Text)
    , _icInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesClone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icXgafv'
--
-- * 'icUploadProtocol'
--
-- * 'icProject'
--
-- * 'icAccessToken'
--
-- * 'icUploadType'
--
-- * 'icPayload'
--
-- * 'icCallback'
--
-- * 'icInstance'
instancesClone
    :: Text -- ^ 'icProject'
    -> InstancesCloneRequest -- ^ 'icPayload'
    -> Text -- ^ 'icInstance'
    -> InstancesClone
instancesClone pIcProject_ pIcPayload_ pIcInstance_ =
  InstancesClone'
    { _icXgafv = Nothing
    , _icUploadProtocol = Nothing
    , _icProject = pIcProject_
    , _icAccessToken = Nothing
    , _icUploadType = Nothing
    , _icPayload = pIcPayload_
    , _icCallback = Nothing
    , _icInstance = pIcInstance_
    }


-- | V1 error format.
icXgafv :: Lens' InstancesClone (Maybe Xgafv)
icXgafv = lens _icXgafv (\ s a -> s{_icXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
icUploadProtocol :: Lens' InstancesClone (Maybe Text)
icUploadProtocol
  = lens _icUploadProtocol
      (\ s a -> s{_icUploadProtocol = a})

-- | Project ID of the source as well as the clone Cloud SQL instance.
icProject :: Lens' InstancesClone Text
icProject
  = lens _icProject (\ s a -> s{_icProject = a})

-- | OAuth access token.
icAccessToken :: Lens' InstancesClone (Maybe Text)
icAccessToken
  = lens _icAccessToken
      (\ s a -> s{_icAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
icUploadType :: Lens' InstancesClone (Maybe Text)
icUploadType
  = lens _icUploadType (\ s a -> s{_icUploadType = a})

-- | Multipart request metadata.
icPayload :: Lens' InstancesClone InstancesCloneRequest
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | JSONP
icCallback :: Lens' InstancesClone (Maybe Text)
icCallback
  = lens _icCallback (\ s a -> s{_icCallback = a})

-- | The ID of the Cloud SQL instance to be cloned (source). This does not
-- include the project ID.
icInstance :: Lens' InstancesClone Text
icInstance
  = lens _icInstance (\ s a -> s{_icInstance = a})

instance GoogleRequest InstancesClone where
        type Rs InstancesClone = Operation
        type Scopes InstancesClone =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesClone'{..}
          = go _icProject _icInstance _icXgafv
              _icUploadProtocol
              _icAccessToken
              _icUploadType
              _icCallback
              (Just AltJSON)
              _icPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy InstancesCloneResource)
                      mempty
