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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commit the dry-run spec for all the Service Perimeters in an Access
-- Policy. A commit operation on a Service Perimeter involves copying its
-- \`spec\` field to that Service Perimeter\'s \`status\` field. Only
-- Service Perimeters with \`use_explicit_dry_run_spec\` field set to true
-- are affected by a commit operation. The longrunning operation from this
-- RPC will have a successful status once the dry-run specs for all the
-- Service Perimeters have been committed. If a commit fails, it will cause
-- the longrunning operation to return an error response and the entire
-- commit operation will be cancelled. When successful, Operation.response
-- field will contain CommitServicePerimetersResponse. The \`dry_run\` and
-- the \`spec\` fields will be cleared after a successful commit operation.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.commit@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersCommitResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersCommit
    , AccessPoliciesServicePerimetersCommit

    -- * Request Lenses
    , aParent
    , aXgafv
    , aUploadProtocol
    , aAccessToken
    , aUploadType
    , aPayload
    , aCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.commit@ method which the
-- 'AccessPoliciesServicePerimetersCommit' request conforms to.
type AccessPoliciesServicePerimetersCommitResource =
     "v1" :>
       Capture "parent" Text :>
         "servicePerimeters:commit" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CommitServicePerimetersRequest :>
                         Post '[JSON] Operation

-- | Commit the dry-run spec for all the Service Perimeters in an Access
-- Policy. A commit operation on a Service Perimeter involves copying its
-- \`spec\` field to that Service Perimeter\'s \`status\` field. Only
-- Service Perimeters with \`use_explicit_dry_run_spec\` field set to true
-- are affected by a commit operation. The longrunning operation from this
-- RPC will have a successful status once the dry-run specs for all the
-- Service Perimeters have been committed. If a commit fails, it will cause
-- the longrunning operation to return an error response and the entire
-- commit operation will be cancelled. When successful, Operation.response
-- field will contain CommitServicePerimetersResponse. The \`dry_run\` and
-- the \`spec\` fields will be cleared after a successful commit operation.
--
-- /See:/ 'accessPoliciesServicePerimetersCommit' smart constructor.
data AccessPoliciesServicePerimetersCommit =
  AccessPoliciesServicePerimetersCommit'
    { _aParent :: !Text
    , _aXgafv :: !(Maybe Xgafv)
    , _aUploadProtocol :: !(Maybe Text)
    , _aAccessToken :: !(Maybe Text)
    , _aUploadType :: !(Maybe Text)
    , _aPayload :: !CommitServicePerimetersRequest
    , _aCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesServicePerimetersCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aParent'
--
-- * 'aXgafv'
--
-- * 'aUploadProtocol'
--
-- * 'aAccessToken'
--
-- * 'aUploadType'
--
-- * 'aPayload'
--
-- * 'aCallback'
accessPoliciesServicePerimetersCommit
    :: Text -- ^ 'aParent'
    -> CommitServicePerimetersRequest -- ^ 'aPayload'
    -> AccessPoliciesServicePerimetersCommit
accessPoliciesServicePerimetersCommit pAParent_ pAPayload_ =
  AccessPoliciesServicePerimetersCommit'
    { _aParent = pAParent_
    , _aXgafv = Nothing
    , _aUploadProtocol = Nothing
    , _aAccessToken = Nothing
    , _aUploadType = Nothing
    , _aPayload = pAPayload_
    , _aCallback = Nothing
    }


-- | Required. Resource name for the parent Access Policy which owns all
-- Service Perimeters in scope for the commit operation. Format:
-- \`accessPolicies\/{policy_id}\`
aParent :: Lens' AccessPoliciesServicePerimetersCommit Text
aParent = lens _aParent (\ s a -> s{_aParent = a})

-- | V1 error format.
aXgafv :: Lens' AccessPoliciesServicePerimetersCommit (Maybe Xgafv)
aXgafv = lens _aXgafv (\ s a -> s{_aXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aUploadProtocol :: Lens' AccessPoliciesServicePerimetersCommit (Maybe Text)
aUploadProtocol
  = lens _aUploadProtocol
      (\ s a -> s{_aUploadProtocol = a})

-- | OAuth access token.
aAccessToken :: Lens' AccessPoliciesServicePerimetersCommit (Maybe Text)
aAccessToken
  = lens _aAccessToken (\ s a -> s{_aAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aUploadType :: Lens' AccessPoliciesServicePerimetersCommit (Maybe Text)
aUploadType
  = lens _aUploadType (\ s a -> s{_aUploadType = a})

-- | Multipart request metadata.
aPayload :: Lens' AccessPoliciesServicePerimetersCommit CommitServicePerimetersRequest
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | JSONP
aCallback :: Lens' AccessPoliciesServicePerimetersCommit (Maybe Text)
aCallback
  = lens _aCallback (\ s a -> s{_aCallback = a})

instance GoogleRequest
           AccessPoliciesServicePerimetersCommit
         where
        type Rs AccessPoliciesServicePerimetersCommit =
             Operation
        type Scopes AccessPoliciesServicePerimetersCommit =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesServicePerimetersCommit'{..}
          = go _aParent _aXgafv _aUploadProtocol _aAccessToken
              _aUploadType
              _aCallback
              (Just AltJSON)
              _aPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesServicePerimetersCommitResource)
                      mempty
