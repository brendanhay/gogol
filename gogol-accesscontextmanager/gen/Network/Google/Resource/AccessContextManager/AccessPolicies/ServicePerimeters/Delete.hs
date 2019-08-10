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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an Service Perimeter by resource name. The longrunning operation
-- from this RPC will have a successful status once the Service Perimeter
-- has been removed from long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.delete@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersDeleteResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersDelete
    , AccessPoliciesServicePerimetersDelete

    -- * Request Lenses
    , apspdXgafv
    , apspdUploadProtocol
    , apspdAccessToken
    , apspdUploadType
    , apspdName
    , apspdCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.delete@ method which the
-- 'AccessPoliciesServicePerimetersDelete' request conforms to.
type AccessPoliciesServicePerimetersDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Delete an Service Perimeter by resource name. The longrunning operation
-- from this RPC will have a successful status once the Service Perimeter
-- has been removed from long-lasting storage.
--
-- /See:/ 'accessPoliciesServicePerimetersDelete' smart constructor.
data AccessPoliciesServicePerimetersDelete =
  AccessPoliciesServicePerimetersDelete'
    { _apspdXgafv          :: !(Maybe Xgafv)
    , _apspdUploadProtocol :: !(Maybe Text)
    , _apspdAccessToken    :: !(Maybe Text)
    , _apspdUploadType     :: !(Maybe Text)
    , _apspdName           :: !Text
    , _apspdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesServicePerimetersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apspdXgafv'
--
-- * 'apspdUploadProtocol'
--
-- * 'apspdAccessToken'
--
-- * 'apspdUploadType'
--
-- * 'apspdName'
--
-- * 'apspdCallback'
accessPoliciesServicePerimetersDelete
    :: Text -- ^ 'apspdName'
    -> AccessPoliciesServicePerimetersDelete
accessPoliciesServicePerimetersDelete pApspdName_ =
  AccessPoliciesServicePerimetersDelete'
    { _apspdXgafv = Nothing
    , _apspdUploadProtocol = Nothing
    , _apspdAccessToken = Nothing
    , _apspdUploadType = Nothing
    , _apspdName = pApspdName_
    , _apspdCallback = Nothing
    }


-- | V1 error format.
apspdXgafv :: Lens' AccessPoliciesServicePerimetersDelete (Maybe Xgafv)
apspdXgafv
  = lens _apspdXgafv (\ s a -> s{_apspdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apspdUploadProtocol :: Lens' AccessPoliciesServicePerimetersDelete (Maybe Text)
apspdUploadProtocol
  = lens _apspdUploadProtocol
      (\ s a -> s{_apspdUploadProtocol = a})

-- | OAuth access token.
apspdAccessToken :: Lens' AccessPoliciesServicePerimetersDelete (Maybe Text)
apspdAccessToken
  = lens _apspdAccessToken
      (\ s a -> s{_apspdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apspdUploadType :: Lens' AccessPoliciesServicePerimetersDelete (Maybe Text)
apspdUploadType
  = lens _apspdUploadType
      (\ s a -> s{_apspdUploadType = a})

-- | Required. Resource name for the Service Perimeter. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{service_perimeter_id}\`
apspdName :: Lens' AccessPoliciesServicePerimetersDelete Text
apspdName
  = lens _apspdName (\ s a -> s{_apspdName = a})

-- | JSONP
apspdCallback :: Lens' AccessPoliciesServicePerimetersDelete (Maybe Text)
apspdCallback
  = lens _apspdCallback
      (\ s a -> s{_apspdCallback = a})

instance GoogleRequest
           AccessPoliciesServicePerimetersDelete
         where
        type Rs AccessPoliciesServicePerimetersDelete =
             Operation
        type Scopes AccessPoliciesServicePerimetersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesServicePerimetersDelete'{..}
          = go _apspdName _apspdXgafv _apspdUploadProtocol
              _apspdAccessToken
              _apspdUploadType
              _apspdCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesServicePerimetersDeleteResource)
                      mempty
