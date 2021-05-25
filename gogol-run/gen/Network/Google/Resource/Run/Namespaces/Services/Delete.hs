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
-- Module      : Network.Google.Resource.Run.Namespaces.Services.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a service. This will cause the Service to stop serving traffic
-- and will delete the child entities like Routes, Configurations and
-- Revisions.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.services.delete@.
module Network.Google.Resource.Run.Namespaces.Services.Delete
    (
    -- * REST Resource
      NamespacesServicesDeleteResource

    -- * Creating a Request
    , namespacesServicesDelete
    , NamespacesServicesDelete

    -- * Request Lenses
    , nsdXgafv
    , nsdUploadProtocol
    , nsdAPIVersion
    , nsdKind
    , nsdAccessToken
    , nsdUploadType
    , nsdPropagationPolicy
    , nsdName
    , nsdDryRun
    , nsdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.services.delete@ method which the
-- 'NamespacesServicesDelete' request conforms to.
type NamespacesServicesDeleteResource =
     "apis" :>
       "serving.knative.dev" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "apiVersion" Text :>
                   QueryParam "kind" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "propagationPolicy" Text :>
                           QueryParam "dryRun" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] Status

-- | Delete a service. This will cause the Service to stop serving traffic
-- and will delete the child entities like Routes, Configurations and
-- Revisions.
--
-- /See:/ 'namespacesServicesDelete' smart constructor.
data NamespacesServicesDelete =
  NamespacesServicesDelete'
    { _nsdXgafv :: !(Maybe Xgafv)
    , _nsdUploadProtocol :: !(Maybe Text)
    , _nsdAPIVersion :: !(Maybe Text)
    , _nsdKind :: !(Maybe Text)
    , _nsdAccessToken :: !(Maybe Text)
    , _nsdUploadType :: !(Maybe Text)
    , _nsdPropagationPolicy :: !(Maybe Text)
    , _nsdName :: !Text
    , _nsdDryRun :: !(Maybe Text)
    , _nsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsdXgafv'
--
-- * 'nsdUploadProtocol'
--
-- * 'nsdAPIVersion'
--
-- * 'nsdKind'
--
-- * 'nsdAccessToken'
--
-- * 'nsdUploadType'
--
-- * 'nsdPropagationPolicy'
--
-- * 'nsdName'
--
-- * 'nsdDryRun'
--
-- * 'nsdCallback'
namespacesServicesDelete
    :: Text -- ^ 'nsdName'
    -> NamespacesServicesDelete
namespacesServicesDelete pNsdName_ =
  NamespacesServicesDelete'
    { _nsdXgafv = Nothing
    , _nsdUploadProtocol = Nothing
    , _nsdAPIVersion = Nothing
    , _nsdKind = Nothing
    , _nsdAccessToken = Nothing
    , _nsdUploadType = Nothing
    , _nsdPropagationPolicy = Nothing
    , _nsdName = pNsdName_
    , _nsdDryRun = Nothing
    , _nsdCallback = Nothing
    }


-- | V1 error format.
nsdXgafv :: Lens' NamespacesServicesDelete (Maybe Xgafv)
nsdXgafv = lens _nsdXgafv (\ s a -> s{_nsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nsdUploadProtocol :: Lens' NamespacesServicesDelete (Maybe Text)
nsdUploadProtocol
  = lens _nsdUploadProtocol
      (\ s a -> s{_nsdUploadProtocol = a})

-- | Cloud Run currently ignores this parameter.
nsdAPIVersion :: Lens' NamespacesServicesDelete (Maybe Text)
nsdAPIVersion
  = lens _nsdAPIVersion
      (\ s a -> s{_nsdAPIVersion = a})

-- | Cloud Run currently ignores this parameter.
nsdKind :: Lens' NamespacesServicesDelete (Maybe Text)
nsdKind = lens _nsdKind (\ s a -> s{_nsdKind = a})

-- | OAuth access token.
nsdAccessToken :: Lens' NamespacesServicesDelete (Maybe Text)
nsdAccessToken
  = lens _nsdAccessToken
      (\ s a -> s{_nsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nsdUploadType :: Lens' NamespacesServicesDelete (Maybe Text)
nsdUploadType
  = lens _nsdUploadType
      (\ s a -> s{_nsdUploadType = a})

-- | Specifies the propagation policy of delete. Cloud Run currently ignores
-- this setting, and deletes in the background. Please see
-- kubernetes.io\/docs\/concepts\/workloads\/controllers\/garbage-collection\/
-- for more information.
nsdPropagationPolicy :: Lens' NamespacesServicesDelete (Maybe Text)
nsdPropagationPolicy
  = lens _nsdPropagationPolicy
      (\ s a -> s{_nsdPropagationPolicy = a})

-- | The name of the service to delete. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
nsdName :: Lens' NamespacesServicesDelete Text
nsdName = lens _nsdName (\ s a -> s{_nsdName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
nsdDryRun :: Lens' NamespacesServicesDelete (Maybe Text)
nsdDryRun
  = lens _nsdDryRun (\ s a -> s{_nsdDryRun = a})

-- | JSONP
nsdCallback :: Lens' NamespacesServicesDelete (Maybe Text)
nsdCallback
  = lens _nsdCallback (\ s a -> s{_nsdCallback = a})

instance GoogleRequest NamespacesServicesDelete where
        type Rs NamespacesServicesDelete = Status
        type Scopes NamespacesServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesServicesDelete'{..}
          = go _nsdName _nsdXgafv _nsdUploadProtocol
              _nsdAPIVersion
              _nsdKind
              _nsdAccessToken
              _nsdUploadType
              _nsdPropagationPolicy
              _nsdDryRun
              _nsdCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesServicesDeleteResource)
                      mempty
