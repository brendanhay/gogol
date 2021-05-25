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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace all existing Access Levels in an Access Policy with the Access
-- Levels provided. This is done atomically. The longrunning operation from
-- this RPC will have a successful status once all replacements have
-- propagated to long-lasting storage. Replacements containing errors will
-- result in an error response for the first error encountered. Replacement
-- will be cancelled on error, existing Access Levels will not be affected.
-- Operation.response field will contain ReplaceAccessLevelsResponse.
-- Removing Access Levels contained in existing Service Perimeters will
-- result in error.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.replaceAll@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
    (
    -- * REST Resource
      AccessPoliciesAccessLevelsReplaceAllResource

    -- * Creating a Request
    , accessPoliciesAccessLevelsReplaceAll
    , AccessPoliciesAccessLevelsReplaceAll

    -- * Request Lenses
    , apalraParent
    , apalraXgafv
    , apalraUploadProtocol
    , apalraAccessToken
    , apalraUploadType
    , apalraPayload
    , apalraCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.replaceAll@ method which the
-- 'AccessPoliciesAccessLevelsReplaceAll' request conforms to.
type AccessPoliciesAccessLevelsReplaceAllResource =
     "v1" :>
       Capture "parent" Text :>
         "accessLevels:replaceAll" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReplaceAccessLevelsRequest :>
                         Post '[JSON] Operation

-- | Replace all existing Access Levels in an Access Policy with the Access
-- Levels provided. This is done atomically. The longrunning operation from
-- this RPC will have a successful status once all replacements have
-- propagated to long-lasting storage. Replacements containing errors will
-- result in an error response for the first error encountered. Replacement
-- will be cancelled on error, existing Access Levels will not be affected.
-- Operation.response field will contain ReplaceAccessLevelsResponse.
-- Removing Access Levels contained in existing Service Perimeters will
-- result in error.
--
-- /See:/ 'accessPoliciesAccessLevelsReplaceAll' smart constructor.
data AccessPoliciesAccessLevelsReplaceAll =
  AccessPoliciesAccessLevelsReplaceAll'
    { _apalraParent :: !Text
    , _apalraXgafv :: !(Maybe Xgafv)
    , _apalraUploadProtocol :: !(Maybe Text)
    , _apalraAccessToken :: !(Maybe Text)
    , _apalraUploadType :: !(Maybe Text)
    , _apalraPayload :: !ReplaceAccessLevelsRequest
    , _apalraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesAccessLevelsReplaceAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apalraParent'
--
-- * 'apalraXgafv'
--
-- * 'apalraUploadProtocol'
--
-- * 'apalraAccessToken'
--
-- * 'apalraUploadType'
--
-- * 'apalraPayload'
--
-- * 'apalraCallback'
accessPoliciesAccessLevelsReplaceAll
    :: Text -- ^ 'apalraParent'
    -> ReplaceAccessLevelsRequest -- ^ 'apalraPayload'
    -> AccessPoliciesAccessLevelsReplaceAll
accessPoliciesAccessLevelsReplaceAll pApalraParent_ pApalraPayload_ =
  AccessPoliciesAccessLevelsReplaceAll'
    { _apalraParent = pApalraParent_
    , _apalraXgafv = Nothing
    , _apalraUploadProtocol = Nothing
    , _apalraAccessToken = Nothing
    , _apalraUploadType = Nothing
    , _apalraPayload = pApalraPayload_
    , _apalraCallback = Nothing
    }


-- | Required. Resource name for the access policy which owns these Access
-- Levels. Format: \`accessPolicies\/{policy_id}\`
apalraParent :: Lens' AccessPoliciesAccessLevelsReplaceAll Text
apalraParent
  = lens _apalraParent (\ s a -> s{_apalraParent = a})

-- | V1 error format.
apalraXgafv :: Lens' AccessPoliciesAccessLevelsReplaceAll (Maybe Xgafv)
apalraXgafv
  = lens _apalraXgafv (\ s a -> s{_apalraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apalraUploadProtocol :: Lens' AccessPoliciesAccessLevelsReplaceAll (Maybe Text)
apalraUploadProtocol
  = lens _apalraUploadProtocol
      (\ s a -> s{_apalraUploadProtocol = a})

-- | OAuth access token.
apalraAccessToken :: Lens' AccessPoliciesAccessLevelsReplaceAll (Maybe Text)
apalraAccessToken
  = lens _apalraAccessToken
      (\ s a -> s{_apalraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apalraUploadType :: Lens' AccessPoliciesAccessLevelsReplaceAll (Maybe Text)
apalraUploadType
  = lens _apalraUploadType
      (\ s a -> s{_apalraUploadType = a})

-- | Multipart request metadata.
apalraPayload :: Lens' AccessPoliciesAccessLevelsReplaceAll ReplaceAccessLevelsRequest
apalraPayload
  = lens _apalraPayload
      (\ s a -> s{_apalraPayload = a})

-- | JSONP
apalraCallback :: Lens' AccessPoliciesAccessLevelsReplaceAll (Maybe Text)
apalraCallback
  = lens _apalraCallback
      (\ s a -> s{_apalraCallback = a})

instance GoogleRequest
           AccessPoliciesAccessLevelsReplaceAll
         where
        type Rs AccessPoliciesAccessLevelsReplaceAll =
             Operation
        type Scopes AccessPoliciesAccessLevelsReplaceAll =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesAccessLevelsReplaceAll'{..}
          = go _apalraParent _apalraXgafv _apalraUploadProtocol
              _apalraAccessToken
              _apalraUploadType
              _apalraCallback
              (Just AltJSON)
              _apalraPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesAccessLevelsReplaceAllResource)
                      mempty
