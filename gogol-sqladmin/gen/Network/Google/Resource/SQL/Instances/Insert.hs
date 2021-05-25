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
-- Module      : Network.Google.Resource.SQL.Instances.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.insert@.
module Network.Google.Resource.SQL.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , iiiXgafv
    , iiiUploadProtocol
    , iiiProject
    , iiiAccessToken
    , iiiUploadType
    , iiiPayload
    , iiiCallback
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.insert@ method which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DatabaseInstance :>
                           Post '[JSON] Operation

-- | Creates a new Cloud SQL instance.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert =
  InstancesInsert'
    { _iiiXgafv :: !(Maybe Xgafv)
    , _iiiUploadProtocol :: !(Maybe Text)
    , _iiiProject :: !Text
    , _iiiAccessToken :: !(Maybe Text)
    , _iiiUploadType :: !(Maybe Text)
    , _iiiPayload :: !DatabaseInstance
    , _iiiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiiXgafv'
--
-- * 'iiiUploadProtocol'
--
-- * 'iiiProject'
--
-- * 'iiiAccessToken'
--
-- * 'iiiUploadType'
--
-- * 'iiiPayload'
--
-- * 'iiiCallback'
instancesInsert
    :: Text -- ^ 'iiiProject'
    -> DatabaseInstance -- ^ 'iiiPayload'
    -> InstancesInsert
instancesInsert pIiiProject_ pIiiPayload_ =
  InstancesInsert'
    { _iiiXgafv = Nothing
    , _iiiUploadProtocol = Nothing
    , _iiiProject = pIiiProject_
    , _iiiAccessToken = Nothing
    , _iiiUploadType = Nothing
    , _iiiPayload = pIiiPayload_
    , _iiiCallback = Nothing
    }


-- | V1 error format.
iiiXgafv :: Lens' InstancesInsert (Maybe Xgafv)
iiiXgafv = lens _iiiXgafv (\ s a -> s{_iiiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iiiUploadProtocol :: Lens' InstancesInsert (Maybe Text)
iiiUploadProtocol
  = lens _iiiUploadProtocol
      (\ s a -> s{_iiiUploadProtocol = a})

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
iiiProject :: Lens' InstancesInsert Text
iiiProject
  = lens _iiiProject (\ s a -> s{_iiiProject = a})

-- | OAuth access token.
iiiAccessToken :: Lens' InstancesInsert (Maybe Text)
iiiAccessToken
  = lens _iiiAccessToken
      (\ s a -> s{_iiiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iiiUploadType :: Lens' InstancesInsert (Maybe Text)
iiiUploadType
  = lens _iiiUploadType
      (\ s a -> s{_iiiUploadType = a})

-- | Multipart request metadata.
iiiPayload :: Lens' InstancesInsert DatabaseInstance
iiiPayload
  = lens _iiiPayload (\ s a -> s{_iiiPayload = a})

-- | JSONP
iiiCallback :: Lens' InstancesInsert (Maybe Text)
iiiCallback
  = lens _iiiCallback (\ s a -> s{_iiiCallback = a})

instance GoogleRequest InstancesInsert where
        type Rs InstancesInsert = Operation
        type Scopes InstancesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesInsert'{..}
          = go _iiiProject _iiiXgafv _iiiUploadProtocol
              _iiiAccessToken
              _iiiUploadType
              _iiiCallback
              (Just AltJSON)
              _iiiPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
