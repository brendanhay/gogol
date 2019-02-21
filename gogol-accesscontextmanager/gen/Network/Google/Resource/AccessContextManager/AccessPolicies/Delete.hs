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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an AccessPolicy by resource name. The longrunning Operation will
-- have a successful status once the AccessPolicy has been removed from
-- long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.delete@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.Delete
    (
    -- * REST Resource
      AccessPoliciesDeleteResource

    -- * Creating a Request
    , accessPoliciesDelete
    , AccessPoliciesDelete

    -- * Request Lenses
    , apdXgafv
    , apdUploadProtocol
    , apdAccessToken
    , apdUploadType
    , apdName
    , apdCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.delete@ method which the
-- 'AccessPoliciesDelete' request conforms to.
type AccessPoliciesDeleteResource =
     "v1beta" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete an AccessPolicy by resource name. The longrunning Operation will
-- have a successful status once the AccessPolicy has been removed from
-- long-lasting storage.
--
-- /See:/ 'accessPoliciesDelete' smart constructor.
data AccessPoliciesDelete =
  AccessPoliciesDelete'
    { _apdXgafv          :: !(Maybe Xgafv)
    , _apdUploadProtocol :: !(Maybe Text)
    , _apdAccessToken    :: !(Maybe Text)
    , _apdUploadType     :: !(Maybe Text)
    , _apdName           :: !Text
    , _apdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdXgafv'
--
-- * 'apdUploadProtocol'
--
-- * 'apdAccessToken'
--
-- * 'apdUploadType'
--
-- * 'apdName'
--
-- * 'apdCallback'
accessPoliciesDelete
    :: Text -- ^ 'apdName'
    -> AccessPoliciesDelete
accessPoliciesDelete pApdName_ =
  AccessPoliciesDelete'
    { _apdXgafv = Nothing
    , _apdUploadProtocol = Nothing
    , _apdAccessToken = Nothing
    , _apdUploadType = Nothing
    , _apdName = pApdName_
    , _apdCallback = Nothing
    }


-- | V1 error format.
apdXgafv :: Lens' AccessPoliciesDelete (Maybe Xgafv)
apdXgafv = lens _apdXgafv (\ s a -> s{_apdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apdUploadProtocol :: Lens' AccessPoliciesDelete (Maybe Text)
apdUploadProtocol
  = lens _apdUploadProtocol
      (\ s a -> s{_apdUploadProtocol = a})

-- | OAuth access token.
apdAccessToken :: Lens' AccessPoliciesDelete (Maybe Text)
apdAccessToken
  = lens _apdAccessToken
      (\ s a -> s{_apdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apdUploadType :: Lens' AccessPoliciesDelete (Maybe Text)
apdUploadType
  = lens _apdUploadType
      (\ s a -> s{_apdUploadType = a})

-- | Required. Resource name for the access policy to delete. Format
-- \`accessPolicies\/{policy_id}\`
apdName :: Lens' AccessPoliciesDelete Text
apdName = lens _apdName (\ s a -> s{_apdName = a})

-- | JSONP
apdCallback :: Lens' AccessPoliciesDelete (Maybe Text)
apdCallback
  = lens _apdCallback (\ s a -> s{_apdCallback = a})

instance GoogleRequest AccessPoliciesDelete where
        type Rs AccessPoliciesDelete = Operation
        type Scopes AccessPoliciesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesDelete'{..}
          = go _apdName _apdXgafv _apdUploadProtocol
              _apdAccessToken
              _apdUploadType
              _apdCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccessPoliciesDeleteResource)
                      mempty
