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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an AccessPolicy. The longrunning Operation from this RPC will
-- have a successful status once the changes to the AccessPolicy have
-- propagated to long-lasting storage. Syntactic and basic semantic errors
-- will be returned in \`metadata\` as a BadRequest proto.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.patch@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.Patch
    (
    -- * REST Resource
      AccessPoliciesPatchResource

    -- * Creating a Request
    , accessPoliciesPatch
    , AccessPoliciesPatch

    -- * Request Lenses
    , appXgafv
    , appUploadProtocol
    , appUpdateMask
    , appAccessToken
    , appUploadType
    , appPayload
    , appName
    , appCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.patch@ method which the
-- 'AccessPoliciesPatch' request conforms to.
type AccessPoliciesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccessPolicy :>
                         Patch '[JSON] Operation

-- | Update an AccessPolicy. The longrunning Operation from this RPC will
-- have a successful status once the changes to the AccessPolicy have
-- propagated to long-lasting storage. Syntactic and basic semantic errors
-- will be returned in \`metadata\` as a BadRequest proto.
--
-- /See:/ 'accessPoliciesPatch' smart constructor.
data AccessPoliciesPatch =
  AccessPoliciesPatch'
    { _appXgafv :: !(Maybe Xgafv)
    , _appUploadProtocol :: !(Maybe Text)
    , _appUpdateMask :: !(Maybe GFieldMask)
    , _appAccessToken :: !(Maybe Text)
    , _appUploadType :: !(Maybe Text)
    , _appPayload :: !AccessPolicy
    , _appName :: !Text
    , _appCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appXgafv'
--
-- * 'appUploadProtocol'
--
-- * 'appUpdateMask'
--
-- * 'appAccessToken'
--
-- * 'appUploadType'
--
-- * 'appPayload'
--
-- * 'appName'
--
-- * 'appCallback'
accessPoliciesPatch
    :: AccessPolicy -- ^ 'appPayload'
    -> Text -- ^ 'appName'
    -> AccessPoliciesPatch
accessPoliciesPatch pAppPayload_ pAppName_ =
  AccessPoliciesPatch'
    { _appXgafv = Nothing
    , _appUploadProtocol = Nothing
    , _appUpdateMask = Nothing
    , _appAccessToken = Nothing
    , _appUploadType = Nothing
    , _appPayload = pAppPayload_
    , _appName = pAppName_
    , _appCallback = Nothing
    }


-- | V1 error format.
appXgafv :: Lens' AccessPoliciesPatch (Maybe Xgafv)
appXgafv = lens _appXgafv (\ s a -> s{_appXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
appUploadProtocol :: Lens' AccessPoliciesPatch (Maybe Text)
appUploadProtocol
  = lens _appUploadProtocol
      (\ s a -> s{_appUploadProtocol = a})

-- | Required. Mask to control which fields get updated. Must be non-empty.
appUpdateMask :: Lens' AccessPoliciesPatch (Maybe GFieldMask)
appUpdateMask
  = lens _appUpdateMask
      (\ s a -> s{_appUpdateMask = a})

-- | OAuth access token.
appAccessToken :: Lens' AccessPoliciesPatch (Maybe Text)
appAccessToken
  = lens _appAccessToken
      (\ s a -> s{_appAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
appUploadType :: Lens' AccessPoliciesPatch (Maybe Text)
appUploadType
  = lens _appUploadType
      (\ s a -> s{_appUploadType = a})

-- | Multipart request metadata.
appPayload :: Lens' AccessPoliciesPatch AccessPolicy
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

-- | Output only. Resource name of the \`AccessPolicy\`. Format:
-- \`accessPolicies\/{policy_id}\`
appName :: Lens' AccessPoliciesPatch Text
appName = lens _appName (\ s a -> s{_appName = a})

-- | JSONP
appCallback :: Lens' AccessPoliciesPatch (Maybe Text)
appCallback
  = lens _appCallback (\ s a -> s{_appCallback = a})

instance GoogleRequest AccessPoliciesPatch where
        type Rs AccessPoliciesPatch = Operation
        type Scopes AccessPoliciesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesPatch'{..}
          = go _appName _appXgafv _appUploadProtocol
              _appUpdateMask
              _appAccessToken
              _appUploadType
              _appCallback
              (Just AltJSON)
              _appPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccessPoliciesPatchResource)
                      mempty
