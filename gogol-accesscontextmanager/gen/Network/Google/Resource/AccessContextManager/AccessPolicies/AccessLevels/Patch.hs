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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an Access Level. The longrunning operation from this RPC will
-- have a successful status once the changes to the Access Level have
-- propagated to long-lasting storage. Access Levels containing errors will
-- result in an error response for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.patch@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Patch
    (
    -- * REST Resource
      AccessPoliciesAccessLevelsPatchResource

    -- * Creating a Request
    , accessPoliciesAccessLevelsPatch
    , AccessPoliciesAccessLevelsPatch

    -- * Request Lenses
    , apalpXgafv
    , apalpUploadProtocol
    , apalpUpdateMask
    , apalpAccessToken
    , apalpUploadType
    , apalpPayload
    , apalpName
    , apalpCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.patch@ method which the
-- 'AccessPoliciesAccessLevelsPatch' request conforms to.
type AccessPoliciesAccessLevelsPatchResource =
     "v1beta" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccessLevel :>
                         Patch '[JSON] Operation

-- | Update an Access Level. The longrunning operation from this RPC will
-- have a successful status once the changes to the Access Level have
-- propagated to long-lasting storage. Access Levels containing errors will
-- result in an error response for the first error encountered.
--
-- /See:/ 'accessPoliciesAccessLevelsPatch' smart constructor.
data AccessPoliciesAccessLevelsPatch = AccessPoliciesAccessLevelsPatch'
    { _apalpXgafv          :: !(Maybe Xgafv)
    , _apalpUploadProtocol :: !(Maybe Text)
    , _apalpUpdateMask     :: !(Maybe GFieldMask)
    , _apalpAccessToken    :: !(Maybe Text)
    , _apalpUploadType     :: !(Maybe Text)
    , _apalpPayload        :: !AccessLevel
    , _apalpName           :: !Text
    , _apalpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessPoliciesAccessLevelsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apalpXgafv'
--
-- * 'apalpUploadProtocol'
--
-- * 'apalpUpdateMask'
--
-- * 'apalpAccessToken'
--
-- * 'apalpUploadType'
--
-- * 'apalpPayload'
--
-- * 'apalpName'
--
-- * 'apalpCallback'
accessPoliciesAccessLevelsPatch
    :: AccessLevel -- ^ 'apalpPayload'
    -> Text -- ^ 'apalpName'
    -> AccessPoliciesAccessLevelsPatch
accessPoliciesAccessLevelsPatch pApalpPayload_ pApalpName_ =
    AccessPoliciesAccessLevelsPatch'
    { _apalpXgafv = Nothing
    , _apalpUploadProtocol = Nothing
    , _apalpUpdateMask = Nothing
    , _apalpAccessToken = Nothing
    , _apalpUploadType = Nothing
    , _apalpPayload = pApalpPayload_
    , _apalpName = pApalpName_
    , _apalpCallback = Nothing
    }

-- | V1 error format.
apalpXgafv :: Lens' AccessPoliciesAccessLevelsPatch (Maybe Xgafv)
apalpXgafv
  = lens _apalpXgafv (\ s a -> s{_apalpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apalpUploadProtocol :: Lens' AccessPoliciesAccessLevelsPatch (Maybe Text)
apalpUploadProtocol
  = lens _apalpUploadProtocol
      (\ s a -> s{_apalpUploadProtocol = a})

-- | Required. Mask to control which fields get updated. Must be non-empty.
apalpUpdateMask :: Lens' AccessPoliciesAccessLevelsPatch (Maybe GFieldMask)
apalpUpdateMask
  = lens _apalpUpdateMask
      (\ s a -> s{_apalpUpdateMask = a})

-- | OAuth access token.
apalpAccessToken :: Lens' AccessPoliciesAccessLevelsPatch (Maybe Text)
apalpAccessToken
  = lens _apalpAccessToken
      (\ s a -> s{_apalpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apalpUploadType :: Lens' AccessPoliciesAccessLevelsPatch (Maybe Text)
apalpUploadType
  = lens _apalpUploadType
      (\ s a -> s{_apalpUploadType = a})

-- | Multipart request metadata.
apalpPayload :: Lens' AccessPoliciesAccessLevelsPatch AccessLevel
apalpPayload
  = lens _apalpPayload (\ s a -> s{_apalpPayload = a})

-- | Required. Resource name for the Access Level. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{short_name}\`
apalpName :: Lens' AccessPoliciesAccessLevelsPatch Text
apalpName
  = lens _apalpName (\ s a -> s{_apalpName = a})

-- | JSONP
apalpCallback :: Lens' AccessPoliciesAccessLevelsPatch (Maybe Text)
apalpCallback
  = lens _apalpCallback
      (\ s a -> s{_apalpCallback = a})

instance GoogleRequest
         AccessPoliciesAccessLevelsPatch where
        type Rs AccessPoliciesAccessLevelsPatch = Operation
        type Scopes AccessPoliciesAccessLevelsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesAccessLevelsPatch'{..}
          = go _apalpName _apalpXgafv _apalpUploadProtocol
              _apalpUpdateMask
              _apalpAccessToken
              _apalpUploadType
              _apalpCallback
              (Just AltJSON)
              _apalpPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesAccessLevelsPatchResource)
                      mempty
