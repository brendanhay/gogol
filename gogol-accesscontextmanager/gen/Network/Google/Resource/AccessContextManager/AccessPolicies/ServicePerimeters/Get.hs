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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an Service Perimeter by resource name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.get@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Get
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersGetResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersGet
    , AccessPoliciesServicePerimetersGet

    -- * Request Lenses
    , apspgXgafv
    , apspgUploadProtocol
    , apspgAccessToken
    , apspgUploadType
    , apspgName
    , apspgCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.get@ method which the
-- 'AccessPoliciesServicePerimetersGet' request conforms to.
type AccessPoliciesServicePerimetersGetResource =
     "v1beta" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ServicePerimeter

-- | Get an Service Perimeter by resource name.
--
-- /See:/ 'accessPoliciesServicePerimetersGet' smart constructor.
data AccessPoliciesServicePerimetersGet = AccessPoliciesServicePerimetersGet'
    { _apspgXgafv          :: !(Maybe Xgafv)
    , _apspgUploadProtocol :: !(Maybe Text)
    , _apspgAccessToken    :: !(Maybe Text)
    , _apspgUploadType     :: !(Maybe Text)
    , _apspgName           :: !Text
    , _apspgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessPoliciesServicePerimetersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apspgXgafv'
--
-- * 'apspgUploadProtocol'
--
-- * 'apspgAccessToken'
--
-- * 'apspgUploadType'
--
-- * 'apspgName'
--
-- * 'apspgCallback'
accessPoliciesServicePerimetersGet
    :: Text -- ^ 'apspgName'
    -> AccessPoliciesServicePerimetersGet
accessPoliciesServicePerimetersGet pApspgName_ =
    AccessPoliciesServicePerimetersGet'
    { _apspgXgafv = Nothing
    , _apspgUploadProtocol = Nothing
    , _apspgAccessToken = Nothing
    , _apspgUploadType = Nothing
    , _apspgName = pApspgName_
    , _apspgCallback = Nothing
    }

-- | V1 error format.
apspgXgafv :: Lens' AccessPoliciesServicePerimetersGet (Maybe Xgafv)
apspgXgafv
  = lens _apspgXgafv (\ s a -> s{_apspgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apspgUploadProtocol :: Lens' AccessPoliciesServicePerimetersGet (Maybe Text)
apspgUploadProtocol
  = lens _apspgUploadProtocol
      (\ s a -> s{_apspgUploadProtocol = a})

-- | OAuth access token.
apspgAccessToken :: Lens' AccessPoliciesServicePerimetersGet (Maybe Text)
apspgAccessToken
  = lens _apspgAccessToken
      (\ s a -> s{_apspgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apspgUploadType :: Lens' AccessPoliciesServicePerimetersGet (Maybe Text)
apspgUploadType
  = lens _apspgUploadType
      (\ s a -> s{_apspgUploadType = a})

-- | Required. Resource name for the Service Perimeter. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{service_perimeters_id}\`
apspgName :: Lens' AccessPoliciesServicePerimetersGet Text
apspgName
  = lens _apspgName (\ s a -> s{_apspgName = a})

-- | JSONP
apspgCallback :: Lens' AccessPoliciesServicePerimetersGet (Maybe Text)
apspgCallback
  = lens _apspgCallback
      (\ s a -> s{_apspgCallback = a})

instance GoogleRequest
         AccessPoliciesServicePerimetersGet where
        type Rs AccessPoliciesServicePerimetersGet =
             ServicePerimeter
        type Scopes AccessPoliciesServicePerimetersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AccessPoliciesServicePerimetersGet'{..}
          = go _apspgName _apspgXgafv _apspgUploadProtocol
              _apspgAccessToken
              _apspgUploadType
              _apspgCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesServicePerimetersGetResource)
                      mempty
