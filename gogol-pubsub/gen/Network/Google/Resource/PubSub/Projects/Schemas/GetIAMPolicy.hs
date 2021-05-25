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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.getIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Schemas.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsSchemasGetIAMPolicyResource

    -- * Creating a Request
    , projectsSchemasGetIAMPolicy
    , ProjectsSchemasGetIAMPolicy

    -- * Request Lenses
    , psgipOptionsRequestedPolicyVersion
    , psgipXgafv
    , psgipUploadProtocol
    , psgipAccessToken
    , psgipUploadType
    , psgipResource
    , psgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.getIamPolicy@ method which the
-- 'ProjectsSchemasGetIAMPolicy' request conforms to.
type ProjectsSchemasGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsSchemasGetIAMPolicy' smart constructor.
data ProjectsSchemasGetIAMPolicy =
  ProjectsSchemasGetIAMPolicy'
    { _psgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _psgipXgafv :: !(Maybe Xgafv)
    , _psgipUploadProtocol :: !(Maybe Text)
    , _psgipAccessToken :: !(Maybe Text)
    , _psgipUploadType :: !(Maybe Text)
    , _psgipResource :: !Text
    , _psgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgipOptionsRequestedPolicyVersion'
--
-- * 'psgipXgafv'
--
-- * 'psgipUploadProtocol'
--
-- * 'psgipAccessToken'
--
-- * 'psgipUploadType'
--
-- * 'psgipResource'
--
-- * 'psgipCallback'
projectsSchemasGetIAMPolicy
    :: Text -- ^ 'psgipResource'
    -> ProjectsSchemasGetIAMPolicy
projectsSchemasGetIAMPolicy pPsgipResource_ =
  ProjectsSchemasGetIAMPolicy'
    { _psgipOptionsRequestedPolicyVersion = Nothing
    , _psgipXgafv = Nothing
    , _psgipUploadProtocol = Nothing
    , _psgipAccessToken = Nothing
    , _psgipUploadType = Nothing
    , _psgipResource = pPsgipResource_
    , _psgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
psgipOptionsRequestedPolicyVersion :: Lens' ProjectsSchemasGetIAMPolicy (Maybe Int32)
psgipOptionsRequestedPolicyVersion
  = lens _psgipOptionsRequestedPolicyVersion
      (\ s a -> s{_psgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
psgipXgafv :: Lens' ProjectsSchemasGetIAMPolicy (Maybe Xgafv)
psgipXgafv
  = lens _psgipXgafv (\ s a -> s{_psgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgipUploadProtocol :: Lens' ProjectsSchemasGetIAMPolicy (Maybe Text)
psgipUploadProtocol
  = lens _psgipUploadProtocol
      (\ s a -> s{_psgipUploadProtocol = a})

-- | OAuth access token.
psgipAccessToken :: Lens' ProjectsSchemasGetIAMPolicy (Maybe Text)
psgipAccessToken
  = lens _psgipAccessToken
      (\ s a -> s{_psgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgipUploadType :: Lens' ProjectsSchemasGetIAMPolicy (Maybe Text)
psgipUploadType
  = lens _psgipUploadType
      (\ s a -> s{_psgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
psgipResource :: Lens' ProjectsSchemasGetIAMPolicy Text
psgipResource
  = lens _psgipResource
      (\ s a -> s{_psgipResource = a})

-- | JSONP
psgipCallback :: Lens' ProjectsSchemasGetIAMPolicy (Maybe Text)
psgipCallback
  = lens _psgipCallback
      (\ s a -> s{_psgipCallback = a})

instance GoogleRequest ProjectsSchemasGetIAMPolicy
         where
        type Rs ProjectsSchemasGetIAMPolicy = Policy
        type Scopes ProjectsSchemasGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasGetIAMPolicy'{..}
          = go _psgipResource
              _psgipOptionsRequestedPolicyVersion
              _psgipXgafv
              _psgipUploadProtocol
              _psgipAccessToken
              _psgipUploadType
              _psgipCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasGetIAMPolicyResource)
                      mempty
