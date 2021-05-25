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
-- Module      : Network.Google.Resource.Run.Namespaces.Revisions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.namespaces.revisions.delete@.
module Network.Google.Resource.Run.Namespaces.Revisions.Delete
    (
    -- * REST Resource
      NamespacesRevisionsDeleteResource

    -- * Creating a Request
    , namespacesRevisionsDelete
    , NamespacesRevisionsDelete

    -- * Request Lenses
    , nrdXgafv
    , nrdUploadProtocol
    , nrdAPIVersion
    , nrdKind
    , nrdAccessToken
    , nrdUploadType
    , nrdPropagationPolicy
    , nrdName
    , nrdDryRun
    , nrdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.namespaces.revisions.delete@ method which the
-- 'NamespacesRevisionsDelete' request conforms to.
type NamespacesRevisionsDeleteResource =
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

-- | Delete a revision.
--
-- /See:/ 'namespacesRevisionsDelete' smart constructor.
data NamespacesRevisionsDelete =
  NamespacesRevisionsDelete'
    { _nrdXgafv :: !(Maybe Xgafv)
    , _nrdUploadProtocol :: !(Maybe Text)
    , _nrdAPIVersion :: !(Maybe Text)
    , _nrdKind :: !(Maybe Text)
    , _nrdAccessToken :: !(Maybe Text)
    , _nrdUploadType :: !(Maybe Text)
    , _nrdPropagationPolicy :: !(Maybe Text)
    , _nrdName :: !Text
    , _nrdDryRun :: !(Maybe Text)
    , _nrdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacesRevisionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrdXgafv'
--
-- * 'nrdUploadProtocol'
--
-- * 'nrdAPIVersion'
--
-- * 'nrdKind'
--
-- * 'nrdAccessToken'
--
-- * 'nrdUploadType'
--
-- * 'nrdPropagationPolicy'
--
-- * 'nrdName'
--
-- * 'nrdDryRun'
--
-- * 'nrdCallback'
namespacesRevisionsDelete
    :: Text -- ^ 'nrdName'
    -> NamespacesRevisionsDelete
namespacesRevisionsDelete pNrdName_ =
  NamespacesRevisionsDelete'
    { _nrdXgafv = Nothing
    , _nrdUploadProtocol = Nothing
    , _nrdAPIVersion = Nothing
    , _nrdKind = Nothing
    , _nrdAccessToken = Nothing
    , _nrdUploadType = Nothing
    , _nrdPropagationPolicy = Nothing
    , _nrdName = pNrdName_
    , _nrdDryRun = Nothing
    , _nrdCallback = Nothing
    }


-- | V1 error format.
nrdXgafv :: Lens' NamespacesRevisionsDelete (Maybe Xgafv)
nrdXgafv = lens _nrdXgafv (\ s a -> s{_nrdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nrdUploadProtocol :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdUploadProtocol
  = lens _nrdUploadProtocol
      (\ s a -> s{_nrdUploadProtocol = a})

-- | Cloud Run currently ignores this parameter.
nrdAPIVersion :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdAPIVersion
  = lens _nrdAPIVersion
      (\ s a -> s{_nrdAPIVersion = a})

-- | Cloud Run currently ignores this parameter.
nrdKind :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdKind = lens _nrdKind (\ s a -> s{_nrdKind = a})

-- | OAuth access token.
nrdAccessToken :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdAccessToken
  = lens _nrdAccessToken
      (\ s a -> s{_nrdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nrdUploadType :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdUploadType
  = lens _nrdUploadType
      (\ s a -> s{_nrdUploadType = a})

-- | Specifies the propagation policy of delete. Cloud Run currently ignores
-- this setting, and deletes in the background. Please see
-- kubernetes.io\/docs\/concepts\/workloads\/controllers\/garbage-collection\/
-- for more information.
nrdPropagationPolicy :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdPropagationPolicy
  = lens _nrdPropagationPolicy
      (\ s a -> s{_nrdPropagationPolicy = a})

-- | The name of the revision to delete. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
nrdName :: Lens' NamespacesRevisionsDelete Text
nrdName = lens _nrdName (\ s a -> s{_nrdName = a})

-- | Indicates that the server should validate the request and populate
-- default values without persisting the request. Supported values: \`all\`
nrdDryRun :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdDryRun
  = lens _nrdDryRun (\ s a -> s{_nrdDryRun = a})

-- | JSONP
nrdCallback :: Lens' NamespacesRevisionsDelete (Maybe Text)
nrdCallback
  = lens _nrdCallback (\ s a -> s{_nrdCallback = a})

instance GoogleRequest NamespacesRevisionsDelete
         where
        type Rs NamespacesRevisionsDelete = Status
        type Scopes NamespacesRevisionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient NamespacesRevisionsDelete'{..}
          = go _nrdName _nrdXgafv _nrdUploadProtocol
              _nrdAPIVersion
              _nrdKind
              _nrdAccessToken
              _nrdUploadType
              _nrdPropagationPolicy
              _nrdDryRun
              _nrdCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy NamespacesRevisionsDeleteResource)
                      mempty
