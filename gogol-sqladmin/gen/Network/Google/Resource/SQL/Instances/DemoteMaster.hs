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
-- Module      : Network.Google.Resource.SQL.Instances.DemoteMaster
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Demotes the stand-alone instance to be a Cloud SQL read replica for an
-- external database server.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.demoteMaster@.
module Network.Google.Resource.SQL.Instances.DemoteMaster
    (
    -- * REST Resource
      InstancesDemoteMasterResource

    -- * Creating a Request
    , instancesDemoteMaster
    , InstancesDemoteMaster

    -- * Request Lenses
    , idmXgafv
    , idmUploadProtocol
    , idmProject
    , idmAccessToken
    , idmUploadType
    , idmPayload
    , idmCallback
    , idmInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.demoteMaster@ method which the
-- 'InstancesDemoteMaster' request conforms to.
type InstancesDemoteMasterResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "demoteMaster" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesDemoteMasterRequest :>
                               Post '[JSON] Operation

-- | Demotes the stand-alone instance to be a Cloud SQL read replica for an
-- external database server.
--
-- /See:/ 'instancesDemoteMaster' smart constructor.
data InstancesDemoteMaster =
  InstancesDemoteMaster'
    { _idmXgafv :: !(Maybe Xgafv)
    , _idmUploadProtocol :: !(Maybe Text)
    , _idmProject :: !Text
    , _idmAccessToken :: !(Maybe Text)
    , _idmUploadType :: !(Maybe Text)
    , _idmPayload :: !InstancesDemoteMasterRequest
    , _idmCallback :: !(Maybe Text)
    , _idmInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesDemoteMaster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idmXgafv'
--
-- * 'idmUploadProtocol'
--
-- * 'idmProject'
--
-- * 'idmAccessToken'
--
-- * 'idmUploadType'
--
-- * 'idmPayload'
--
-- * 'idmCallback'
--
-- * 'idmInstance'
instancesDemoteMaster
    :: Text -- ^ 'idmProject'
    -> InstancesDemoteMasterRequest -- ^ 'idmPayload'
    -> Text -- ^ 'idmInstance'
    -> InstancesDemoteMaster
instancesDemoteMaster pIdmProject_ pIdmPayload_ pIdmInstance_ =
  InstancesDemoteMaster'
    { _idmXgafv = Nothing
    , _idmUploadProtocol = Nothing
    , _idmProject = pIdmProject_
    , _idmAccessToken = Nothing
    , _idmUploadType = Nothing
    , _idmPayload = pIdmPayload_
    , _idmCallback = Nothing
    , _idmInstance = pIdmInstance_
    }


-- | V1 error format.
idmXgafv :: Lens' InstancesDemoteMaster (Maybe Xgafv)
idmXgafv = lens _idmXgafv (\ s a -> s{_idmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idmUploadProtocol :: Lens' InstancesDemoteMaster (Maybe Text)
idmUploadProtocol
  = lens _idmUploadProtocol
      (\ s a -> s{_idmUploadProtocol = a})

-- | ID of the project that contains the instance.
idmProject :: Lens' InstancesDemoteMaster Text
idmProject
  = lens _idmProject (\ s a -> s{_idmProject = a})

-- | OAuth access token.
idmAccessToken :: Lens' InstancesDemoteMaster (Maybe Text)
idmAccessToken
  = lens _idmAccessToken
      (\ s a -> s{_idmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idmUploadType :: Lens' InstancesDemoteMaster (Maybe Text)
idmUploadType
  = lens _idmUploadType
      (\ s a -> s{_idmUploadType = a})

-- | Multipart request metadata.
idmPayload :: Lens' InstancesDemoteMaster InstancesDemoteMasterRequest
idmPayload
  = lens _idmPayload (\ s a -> s{_idmPayload = a})

-- | JSONP
idmCallback :: Lens' InstancesDemoteMaster (Maybe Text)
idmCallback
  = lens _idmCallback (\ s a -> s{_idmCallback = a})

-- | Cloud SQL instance name.
idmInstance :: Lens' InstancesDemoteMaster Text
idmInstance
  = lens _idmInstance (\ s a -> s{_idmInstance = a})

instance GoogleRequest InstancesDemoteMaster where
        type Rs InstancesDemoteMaster = Operation
        type Scopes InstancesDemoteMaster =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesDemoteMaster'{..}
          = go _idmProject _idmInstance _idmXgafv
              _idmUploadProtocol
              _idmAccessToken
              _idmUploadType
              _idmCallback
              (Just AltJSON)
              _idmPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesDemoteMasterResource)
                      mempty
