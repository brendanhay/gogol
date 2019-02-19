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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an Service Perimeter. The longrunning operation from this RPC
-- will have a successful status once the Service Perimeter has propagated
-- to long-lasting storage. Service Perimeters containing errors will
-- result in an error response for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.create@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Create
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersCreateResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersCreate
    , AccessPoliciesServicePerimetersCreate

    -- * Request Lenses
    , apspcParent
    , apspcXgafv
    , apspcUploadProtocol
    , apspcAccessToken
    , apspcUploadType
    , apspcPayload
    , apspcCallback
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.create@ method which the
-- 'AccessPoliciesServicePerimetersCreate' request conforms to.
type AccessPoliciesServicePerimetersCreateResource =
     "v1beta" :>
       Capture "parent" Text :>
         "servicePerimeters" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ServicePerimeter :>
                         Post '[JSON] Operation

-- | Create an Service Perimeter. The longrunning operation from this RPC
-- will have a successful status once the Service Perimeter has propagated
-- to long-lasting storage. Service Perimeters containing errors will
-- result in an error response for the first error encountered.
--
-- /See:/ 'accessPoliciesServicePerimetersCreate' smart constructor.
data AccessPoliciesServicePerimetersCreate =
  AccessPoliciesServicePerimetersCreate'
    { _apspcParent         :: !Text
    , _apspcXgafv          :: !(Maybe Xgafv)
    , _apspcUploadProtocol :: !(Maybe Text)
    , _apspcAccessToken    :: !(Maybe Text)
    , _apspcUploadType     :: !(Maybe Text)
    , _apspcPayload        :: !ServicePerimeter
    , _apspcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesServicePerimetersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apspcParent'
--
-- * 'apspcXgafv'
--
-- * 'apspcUploadProtocol'
--
-- * 'apspcAccessToken'
--
-- * 'apspcUploadType'
--
-- * 'apspcPayload'
--
-- * 'apspcCallback'
accessPoliciesServicePerimetersCreate
    :: Text -- ^ 'apspcParent'
    -> ServicePerimeter -- ^ 'apspcPayload'
    -> AccessPoliciesServicePerimetersCreate
accessPoliciesServicePerimetersCreate pApspcParent_ pApspcPayload_ =
  AccessPoliciesServicePerimetersCreate'
    { _apspcParent = pApspcParent_
    , _apspcXgafv = Nothing
    , _apspcUploadProtocol = Nothing
    , _apspcAccessToken = Nothing
    , _apspcUploadType = Nothing
    , _apspcPayload = pApspcPayload_
    , _apspcCallback = Nothing
    }


-- | Required. Resource name for the access policy which owns this Service
-- Perimeter. Format: \`accessPolicies\/{policy_id}\`
apspcParent :: Lens' AccessPoliciesServicePerimetersCreate Text
apspcParent
  = lens _apspcParent (\ s a -> s{_apspcParent = a})

-- | V1 error format.
apspcXgafv :: Lens' AccessPoliciesServicePerimetersCreate (Maybe Xgafv)
apspcXgafv
  = lens _apspcXgafv (\ s a -> s{_apspcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apspcUploadProtocol :: Lens' AccessPoliciesServicePerimetersCreate (Maybe Text)
apspcUploadProtocol
  = lens _apspcUploadProtocol
      (\ s a -> s{_apspcUploadProtocol = a})

-- | OAuth access token.
apspcAccessToken :: Lens' AccessPoliciesServicePerimetersCreate (Maybe Text)
apspcAccessToken
  = lens _apspcAccessToken
      (\ s a -> s{_apspcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apspcUploadType :: Lens' AccessPoliciesServicePerimetersCreate (Maybe Text)
apspcUploadType
  = lens _apspcUploadType
      (\ s a -> s{_apspcUploadType = a})

-- | Multipart request metadata.
apspcPayload :: Lens' AccessPoliciesServicePerimetersCreate ServicePerimeter
apspcPayload
  = lens _apspcPayload (\ s a -> s{_apspcPayload = a})

-- | JSONP
apspcCallback :: Lens' AccessPoliciesServicePerimetersCreate (Maybe Text)
apspcCallback
  = lens _apspcCallback
      (\ s a -> s{_apspcCallback = a})

instance GoogleRequest
           AccessPoliciesServicePerimetersCreate
         where
        type Rs AccessPoliciesServicePerimetersCreate =
             Operation
        type Scopes AccessPoliciesServicePerimetersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesServicePerimetersCreate'{..}
          = go _apspcParent _apspcXgafv _apspcUploadProtocol
              _apspcAccessToken
              _apspcUploadType
              _apspcCallback
              (Just AltJSON)
              _apspcPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesServicePerimetersCreateResource)
                      mempty
