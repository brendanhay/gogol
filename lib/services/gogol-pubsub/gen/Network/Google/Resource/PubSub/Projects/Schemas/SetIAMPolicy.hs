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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.setIamPolicy@.
module Network.Google.Resource.PubSub.Projects.Schemas.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSchemasSetIAMPolicyResource

    -- * Creating a Request
    , projectsSchemasSetIAMPolicy
    , ProjectsSchemasSetIAMPolicy

    -- * Request Lenses
    , pssiampXgafv
    , pssiampUploadProtocol
    , pssiampAccessToken
    , pssiampUploadType
    , pssiampPayload
    , pssiampResource
    , pssiampCallback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.setIamPolicy@ method which the
-- 'ProjectsSchemasSetIAMPolicy' request conforms to.
type ProjectsSchemasSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'projectsSchemasSetIAMPolicy' smart constructor.
data ProjectsSchemasSetIAMPolicy =
  ProjectsSchemasSetIAMPolicy'
    { _pssiampXgafv :: !(Maybe Xgafv)
    , _pssiampUploadProtocol :: !(Maybe Text)
    , _pssiampAccessToken :: !(Maybe Text)
    , _pssiampUploadType :: !(Maybe Text)
    , _pssiampPayload :: !SetIAMPolicyRequest
    , _pssiampResource :: !Text
    , _pssiampCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssiampXgafv'
--
-- * 'pssiampUploadProtocol'
--
-- * 'pssiampAccessToken'
--
-- * 'pssiampUploadType'
--
-- * 'pssiampPayload'
--
-- * 'pssiampResource'
--
-- * 'pssiampCallback'
projectsSchemasSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pssiampPayload'
    -> Text -- ^ 'pssiampResource'
    -> ProjectsSchemasSetIAMPolicy
projectsSchemasSetIAMPolicy pPssiampPayload_ pPssiampResource_ =
  ProjectsSchemasSetIAMPolicy'
    { _pssiampXgafv = Nothing
    , _pssiampUploadProtocol = Nothing
    , _pssiampAccessToken = Nothing
    , _pssiampUploadType = Nothing
    , _pssiampPayload = pPssiampPayload_
    , _pssiampResource = pPssiampResource_
    , _pssiampCallback = Nothing
    }


-- | V1 error format.
pssiampXgafv :: Lens' ProjectsSchemasSetIAMPolicy (Maybe Xgafv)
pssiampXgafv
  = lens _pssiampXgafv (\ s a -> s{_pssiampXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssiampUploadProtocol :: Lens' ProjectsSchemasSetIAMPolicy (Maybe Text)
pssiampUploadProtocol
  = lens _pssiampUploadProtocol
      (\ s a -> s{_pssiampUploadProtocol = a})

-- | OAuth access token.
pssiampAccessToken :: Lens' ProjectsSchemasSetIAMPolicy (Maybe Text)
pssiampAccessToken
  = lens _pssiampAccessToken
      (\ s a -> s{_pssiampAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssiampUploadType :: Lens' ProjectsSchemasSetIAMPolicy (Maybe Text)
pssiampUploadType
  = lens _pssiampUploadType
      (\ s a -> s{_pssiampUploadType = a})

-- | Multipart request metadata.
pssiampPayload :: Lens' ProjectsSchemasSetIAMPolicy SetIAMPolicyRequest
pssiampPayload
  = lens _pssiampPayload
      (\ s a -> s{_pssiampPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pssiampResource :: Lens' ProjectsSchemasSetIAMPolicy Text
pssiampResource
  = lens _pssiampResource
      (\ s a -> s{_pssiampResource = a})

-- | JSONP
pssiampCallback :: Lens' ProjectsSchemasSetIAMPolicy (Maybe Text)
pssiampCallback
  = lens _pssiampCallback
      (\ s a -> s{_pssiampCallback = a})

instance GoogleRequest ProjectsSchemasSetIAMPolicy
         where
        type Rs ProjectsSchemasSetIAMPolicy = Policy
        type Scopes ProjectsSchemasSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasSetIAMPolicy'{..}
          = go _pssiampResource _pssiampXgafv
              _pssiampUploadProtocol
              _pssiampAccessToken
              _pssiampUploadType
              _pssiampCallback
              (Just AltJSON)
              _pssiampPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasSetIAMPolicyResource)
                      mempty
