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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an AccessPolicy by name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.get@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.Get
    (
    -- * REST Resource
      AccessPoliciesGetResource

    -- * Creating a Request
    , accessPoliciesGet
    , AccessPoliciesGet

    -- * Request Lenses
    , apgXgafv
    , apgUploadProtocol
    , apgAccessToken
    , apgUploadType
    , apgName
    , apgCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.get@ method which the
-- 'AccessPoliciesGet' request conforms to.
type AccessPoliciesGetResource =
     "v1beta" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AccessPolicy

-- | Get an AccessPolicy by name.
--
-- /See:/ 'accessPoliciesGet' smart constructor.
data AccessPoliciesGet =
  AccessPoliciesGet'
    { _apgXgafv          :: !(Maybe Xgafv)
    , _apgUploadProtocol :: !(Maybe Text)
    , _apgAccessToken    :: !(Maybe Text)
    , _apgUploadType     :: !(Maybe Text)
    , _apgName           :: !Text
    , _apgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgXgafv'
--
-- * 'apgUploadProtocol'
--
-- * 'apgAccessToken'
--
-- * 'apgUploadType'
--
-- * 'apgName'
--
-- * 'apgCallback'
accessPoliciesGet
    :: Text -- ^ 'apgName'
    -> AccessPoliciesGet
accessPoliciesGet pApgName_ =
  AccessPoliciesGet'
    { _apgXgafv = Nothing
    , _apgUploadProtocol = Nothing
    , _apgAccessToken = Nothing
    , _apgUploadType = Nothing
    , _apgName = pApgName_
    , _apgCallback = Nothing
    }


-- | V1 error format.
apgXgafv :: Lens' AccessPoliciesGet (Maybe Xgafv)
apgXgafv = lens _apgXgafv (\ s a -> s{_apgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apgUploadProtocol :: Lens' AccessPoliciesGet (Maybe Text)
apgUploadProtocol
  = lens _apgUploadProtocol
      (\ s a -> s{_apgUploadProtocol = a})

-- | OAuth access token.
apgAccessToken :: Lens' AccessPoliciesGet (Maybe Text)
apgAccessToken
  = lens _apgAccessToken
      (\ s a -> s{_apgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apgUploadType :: Lens' AccessPoliciesGet (Maybe Text)
apgUploadType
  = lens _apgUploadType
      (\ s a -> s{_apgUploadType = a})

-- | Required. Resource name for the access policy to get. Format
-- \`accessPolicies\/{policy_id}\`
apgName :: Lens' AccessPoliciesGet Text
apgName = lens _apgName (\ s a -> s{_apgName = a})

-- | JSONP
apgCallback :: Lens' AccessPoliciesGet (Maybe Text)
apgCallback
  = lens _apgCallback (\ s a -> s{_apgCallback = a})

instance GoogleRequest AccessPoliciesGet where
        type Rs AccessPoliciesGet = AccessPolicy
        type Scopes AccessPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesGet'{..}
          = go _apgName _apgXgafv _apgUploadProtocol
              _apgAccessToken
              _apgUploadType
              _apgCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccessPoliciesGetResource)
                      mempty
