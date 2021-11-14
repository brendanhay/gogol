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
-- Module      : Network.Google.Resource.SQL.Instances.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings of a Cloud SQL instance. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.patch@.
module Network.Google.Resource.SQL.Instances.Patch
    (
    -- * REST Resource
      InstancesPatchResource

    -- * Creating a Request
    , instancesPatch
    , InstancesPatch

    -- * Request Lenses
    , ipXgafv
    , ipUploadProtocol
    , ipProject
    , ipAccessToken
    , ipUploadType
    , ipPayload
    , ipCallback
    , ipInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.patch@ method which the
-- 'InstancesPatch' request conforms to.
type InstancesPatchResource =
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
                             Patch '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. This method supports patch
-- semantics.
--
-- /See:/ 'instancesPatch' smart constructor.
data InstancesPatch =
  InstancesPatch'
    { _ipXgafv :: !(Maybe Xgafv)
    , _ipUploadProtocol :: !(Maybe Text)
    , _ipProject :: !Text
    , _ipAccessToken :: !(Maybe Text)
    , _ipUploadType :: !(Maybe Text)
    , _ipPayload :: !DatabaseInstance
    , _ipCallback :: !(Maybe Text)
    , _ipInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipXgafv'
--
-- * 'ipUploadProtocol'
--
-- * 'ipProject'
--
-- * 'ipAccessToken'
--
-- * 'ipUploadType'
--
-- * 'ipPayload'
--
-- * 'ipCallback'
--
-- * 'ipInstance'
instancesPatch
    :: Text -- ^ 'ipProject'
    -> DatabaseInstance -- ^ 'ipPayload'
    -> Text -- ^ 'ipInstance'
    -> InstancesPatch
instancesPatch pIpProject_ pIpPayload_ pIpInstance_ =
  InstancesPatch'
    { _ipXgafv = Nothing
    , _ipUploadProtocol = Nothing
    , _ipProject = pIpProject_
    , _ipAccessToken = Nothing
    , _ipUploadType = Nothing
    , _ipPayload = pIpPayload_
    , _ipCallback = Nothing
    , _ipInstance = pIpInstance_
    }


-- | V1 error format.
ipXgafv :: Lens' InstancesPatch (Maybe Xgafv)
ipXgafv = lens _ipXgafv (\ s a -> s{_ipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ipUploadProtocol :: Lens' InstancesPatch (Maybe Text)
ipUploadProtocol
  = lens _ipUploadProtocol
      (\ s a -> s{_ipUploadProtocol = a})

-- | Project ID of the project that contains the instance.
ipProject :: Lens' InstancesPatch Text
ipProject
  = lens _ipProject (\ s a -> s{_ipProject = a})

-- | OAuth access token.
ipAccessToken :: Lens' InstancesPatch (Maybe Text)
ipAccessToken
  = lens _ipAccessToken
      (\ s a -> s{_ipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ipUploadType :: Lens' InstancesPatch (Maybe Text)
ipUploadType
  = lens _ipUploadType (\ s a -> s{_ipUploadType = a})

-- | Multipart request metadata.
ipPayload :: Lens' InstancesPatch DatabaseInstance
ipPayload
  = lens _ipPayload (\ s a -> s{_ipPayload = a})

-- | JSONP
ipCallback :: Lens' InstancesPatch (Maybe Text)
ipCallback
  = lens _ipCallback (\ s a -> s{_ipCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ipInstance :: Lens' InstancesPatch Text
ipInstance
  = lens _ipInstance (\ s a -> s{_ipInstance = a})

instance GoogleRequest InstancesPatch where
        type Rs InstancesPatch = Operation
        type Scopes InstancesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesPatch'{..}
          = go _ipProject _ipInstance _ipXgafv
              _ipUploadProtocol
              _ipAccessToken
              _ipUploadType
              _ipCallback
              (Just AltJSON)
              _ipPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy InstancesPatchResource)
                      mempty
