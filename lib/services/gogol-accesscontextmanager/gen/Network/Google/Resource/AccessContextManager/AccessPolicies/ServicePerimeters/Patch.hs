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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a Service Perimeter. The longrunning operation from this RPC will
-- have a successful status once the changes to the Service Perimeter have
-- propagated to long-lasting storage. Service Perimeter containing errors
-- will result in an error response for the first error encountered.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.patch@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersPatchResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersPatch
    , AccessPoliciesServicePerimetersPatch

    -- * Request Lenses
    , apsppXgafv
    , apsppUploadProtocol
    , apsppUpdateMask
    , apsppAccessToken
    , apsppUploadType
    , apsppPayload
    , apsppName
    , apsppCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.patch@ method which the
-- 'AccessPoliciesServicePerimetersPatch' request conforms to.
type AccessPoliciesServicePerimetersPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ServicePerimeter :>
                         Patch '[JSON] Operation

-- | Update a Service Perimeter. The longrunning operation from this RPC will
-- have a successful status once the changes to the Service Perimeter have
-- propagated to long-lasting storage. Service Perimeter containing errors
-- will result in an error response for the first error encountered.
--
-- /See:/ 'accessPoliciesServicePerimetersPatch' smart constructor.
data AccessPoliciesServicePerimetersPatch =
  AccessPoliciesServicePerimetersPatch'
    { _apsppXgafv :: !(Maybe Xgafv)
    , _apsppUploadProtocol :: !(Maybe Text)
    , _apsppUpdateMask :: !(Maybe GFieldMask)
    , _apsppAccessToken :: !(Maybe Text)
    , _apsppUploadType :: !(Maybe Text)
    , _apsppPayload :: !ServicePerimeter
    , _apsppName :: !Text
    , _apsppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesServicePerimetersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apsppXgafv'
--
-- * 'apsppUploadProtocol'
--
-- * 'apsppUpdateMask'
--
-- * 'apsppAccessToken'
--
-- * 'apsppUploadType'
--
-- * 'apsppPayload'
--
-- * 'apsppName'
--
-- * 'apsppCallback'
accessPoliciesServicePerimetersPatch
    :: ServicePerimeter -- ^ 'apsppPayload'
    -> Text -- ^ 'apsppName'
    -> AccessPoliciesServicePerimetersPatch
accessPoliciesServicePerimetersPatch pApsppPayload_ pApsppName_ =
  AccessPoliciesServicePerimetersPatch'
    { _apsppXgafv = Nothing
    , _apsppUploadProtocol = Nothing
    , _apsppUpdateMask = Nothing
    , _apsppAccessToken = Nothing
    , _apsppUploadType = Nothing
    , _apsppPayload = pApsppPayload_
    , _apsppName = pApsppName_
    , _apsppCallback = Nothing
    }


-- | V1 error format.
apsppXgafv :: Lens' AccessPoliciesServicePerimetersPatch (Maybe Xgafv)
apsppXgafv
  = lens _apsppXgafv (\ s a -> s{_apsppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apsppUploadProtocol :: Lens' AccessPoliciesServicePerimetersPatch (Maybe Text)
apsppUploadProtocol
  = lens _apsppUploadProtocol
      (\ s a -> s{_apsppUploadProtocol = a})

-- | Required. Mask to control which fields get updated. Must be non-empty.
apsppUpdateMask :: Lens' AccessPoliciesServicePerimetersPatch (Maybe GFieldMask)
apsppUpdateMask
  = lens _apsppUpdateMask
      (\ s a -> s{_apsppUpdateMask = a})

-- | OAuth access token.
apsppAccessToken :: Lens' AccessPoliciesServicePerimetersPatch (Maybe Text)
apsppAccessToken
  = lens _apsppAccessToken
      (\ s a -> s{_apsppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apsppUploadType :: Lens' AccessPoliciesServicePerimetersPatch (Maybe Text)
apsppUploadType
  = lens _apsppUploadType
      (\ s a -> s{_apsppUploadType = a})

-- | Multipart request metadata.
apsppPayload :: Lens' AccessPoliciesServicePerimetersPatch ServicePerimeter
apsppPayload
  = lens _apsppPayload (\ s a -> s{_apsppPayload = a})

-- | Required. Resource name for the ServicePerimeter. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{short_name}\`
apsppName :: Lens' AccessPoliciesServicePerimetersPatch Text
apsppName
  = lens _apsppName (\ s a -> s{_apsppName = a})

-- | JSONP
apsppCallback :: Lens' AccessPoliciesServicePerimetersPatch (Maybe Text)
apsppCallback
  = lens _apsppCallback
      (\ s a -> s{_apsppCallback = a})

instance GoogleRequest
           AccessPoliciesServicePerimetersPatch
         where
        type Rs AccessPoliciesServicePerimetersPatch =
             Operation
        type Scopes AccessPoliciesServicePerimetersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesServicePerimetersPatch'{..}
          = go _apsppName _apsppXgafv _apsppUploadProtocol
              _apsppUpdateMask
              _apsppAccessToken
              _apsppUploadType
              _apsppCallback
              (Just AltJSON)
              _apsppPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccessPoliciesServicePerimetersPatchResource)
                      mempty
