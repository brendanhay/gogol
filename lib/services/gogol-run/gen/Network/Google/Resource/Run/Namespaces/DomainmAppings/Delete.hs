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
-- Module      : Network.Google.Resource.Run.Namespaces.DomainmAppings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a domain mapping.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.domainmappings.delete@.
module Network.Google.Resource.Run.Namespaces.DomainmAppings.Delete
    (
    -- * REST Resource
      NamespacesDomainmAppingsDeleteResource

    -- * Creating a Request
    , namespacesDomainmAppingsDelete
    , NamespacesDomainmAppingsDelete

    -- * Request Lenses
    , ndadXgafv
    , ndadUploadProtocol
    , ndadAPIVersion
    , ndadKind
    , ndadAccessToken
    , ndadUploadType
    , ndadPropagationPolicy
    , ndadName
    , ndadDryRun
    , ndadCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.domainmappings.delete@ method which the
-- 'NamespacesDomainmAppingsDelete' request conforms to.
type NamespacesDomainmAppingsDeleteResource =
     "apis" :>
       "domains.cloudrun.com" :>
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

-- | Delete a domain mapping.
--
-- /See:/ 'namespacesDomainmAppingsDelete' smart constructor.
data NamespacesDomainmAppingsDelete =
  NamespacesDomainmAppingsDelete'
    { _ndadXgafv :: !(Maybe Xgafv)
    , _ndadUploadProtocol :: !(Maybe Text)
    , _ndadAPIVersion :: !(Maybe Text)
    , _ndadKind :: !(Maybe Text)
    , _ndadAccessToken :: !(Maybe Text)
    , _ndadUploadType :: !(Maybe Text)
    , _ndadPropagationPolicy :: !(Maybe Text)
    , _ndadName :: !Text
    , _ndadDryRun :: !(Maybe Text)
    , _ndadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesDomainmAppingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndadXgafv'
--
-- * 'ndadUploadProtocol'
--
-- * 'ndadAPIVersion'
--
-- * 'ndadKind'
--
-- * 'ndadAccessToken'
--
-- * 'ndadUploadType'
--
-- * 'ndadPropagationPolicy'
--
-- * 'ndadName'
--
-- * 'ndadDryRun'
--
-- * 'ndadCallback'
namespacesDomainmAppingsDelete
    :: Text -- ^ 'ndadName'
    -> NamespacesDomainmAppingsDelete
namespacesDomainmAppingsDelete pNdadName_ =
  NamespacesDomainmAppingsDelete'
    { _ndadXgafv = Nothing
    , _ndadUploadProtocol = Nothing
    , _ndadAPIVersion = Nothing
    , _ndadKind = Nothing
    , _ndadAccessToken = Nothing
    , _ndadUploadType = Nothing
    , _ndadPropagationPolicy = Nothing
    , _ndadName = pNdadName_
    , _ndadDryRun = Nothing
    , _ndadCallback = Nothing
    }


-- | V1 error format.
ndadXgafv :: Lens' NamespacesDomainmAppingsDelete (Maybe Xgafv)
ndadXgafv
  = lens _ndadXgafv (\ s a -> s{_ndadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ndadUploadProtocol :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadUploadProtocol
  = lens _ndadUploadProtocol
      (\ s a -> s{_ndadUploadProtocol = a})

-- | Cloud Run currently ignores this parameter.
ndadAPIVersion :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadAPIVersion
  = lens _ndadAPIVersion
      (\ s a -> s{_ndadAPIVersion = a})

-- | Cloud Run currently ignores this parameter.
ndadKind :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadKind = lens _ndadKind (\ s a -> s{_ndadKind = a})

-- | OAuth access token.
ndadAccessToken :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadAccessToken
  = lens _ndadAccessToken
      (\ s a -> s{_ndadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ndadUploadType :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadUploadType
  = lens _ndadUploadType
      (\ s a -> s{_ndadUploadType = a})

-- | Specifies the propagation policy of delete. Cloud Run currently ignores
-- this setting, and deletes in the background. Please see
-- kubernetes.io\/docs\/concepts\/workloads\/controllers\/garbage-collection\/
-- for more information.
ndadPropagationPolicy :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadPropagationPolicy
  = lens _ndadPropagationPolicy
      (\ s a -> s{_ndadPropagationPolicy = a})

-- | The name of the domain mapping to delete. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
ndadName :: Lens' NamespacesDomainmAppingsDelete Text
ndadName = lens _ndadName (\ s a -> s{_ndadName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
ndadDryRun :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadDryRun
  = lens _ndadDryRun (\ s a -> s{_ndadDryRun = a})

-- | JSONP
ndadCallback :: Lens' NamespacesDomainmAppingsDelete (Maybe Text)
ndadCallback
  = lens _ndadCallback (\ s a -> s{_ndadCallback = a})

instance GoogleRequest NamespacesDomainmAppingsDelete
         where
        type Rs NamespacesDomainmAppingsDelete = Status
        type Scopes NamespacesDomainmAppingsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesDomainmAppingsDelete'{..}
          = go _ndadName _ndadXgafv _ndadUploadProtocol
              _ndadAPIVersion
              _ndadKind
              _ndadAccessToken
              _ndadUploadType
              _ndadPropagationPolicy
              _ndadDryRun
              _ndadCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NamespacesDomainmAppingsDeleteResource)
                      mempty
