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
-- Module      : Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GcpUserAccessBinding. Completion of this long-running
-- operation does not necessarily signify that the binding deletion is
-- deployed onto all affected users, which may take more time.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.delete@.
module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
    (
    -- * REST Resource
      OrganizationsGcpUserAccessBindingsDeleteResource

    -- * Creating a Request
    , organizationsGcpUserAccessBindingsDelete
    , OrganizationsGcpUserAccessBindingsDelete

    -- * Request Lenses
    , oguabdXgafv
    , oguabdUploadProtocol
    , oguabdAccessToken
    , oguabdUploadType
    , oguabdName
    , oguabdCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.delete@ method which the
-- 'OrganizationsGcpUserAccessBindingsDelete' request conforms to.
type OrganizationsGcpUserAccessBindingsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a GcpUserAccessBinding. Completion of this long-running
-- operation does not necessarily signify that the binding deletion is
-- deployed onto all affected users, which may take more time.
--
-- /See:/ 'organizationsGcpUserAccessBindingsDelete' smart constructor.
data OrganizationsGcpUserAccessBindingsDelete =
  OrganizationsGcpUserAccessBindingsDelete'
    { _oguabdXgafv :: !(Maybe Xgafv)
    , _oguabdUploadProtocol :: !(Maybe Text)
    , _oguabdAccessToken :: !(Maybe Text)
    , _oguabdUploadType :: !(Maybe Text)
    , _oguabdName :: !Text
    , _oguabdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGcpUserAccessBindingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oguabdXgafv'
--
-- * 'oguabdUploadProtocol'
--
-- * 'oguabdAccessToken'
--
-- * 'oguabdUploadType'
--
-- * 'oguabdName'
--
-- * 'oguabdCallback'
organizationsGcpUserAccessBindingsDelete
    :: Text -- ^ 'oguabdName'
    -> OrganizationsGcpUserAccessBindingsDelete
organizationsGcpUserAccessBindingsDelete pOguabdName_ =
  OrganizationsGcpUserAccessBindingsDelete'
    { _oguabdXgafv = Nothing
    , _oguabdUploadProtocol = Nothing
    , _oguabdAccessToken = Nothing
    , _oguabdUploadType = Nothing
    , _oguabdName = pOguabdName_
    , _oguabdCallback = Nothing
    }


-- | V1 error format.
oguabdXgafv :: Lens' OrganizationsGcpUserAccessBindingsDelete (Maybe Xgafv)
oguabdXgafv
  = lens _oguabdXgafv (\ s a -> s{_oguabdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oguabdUploadProtocol :: Lens' OrganizationsGcpUserAccessBindingsDelete (Maybe Text)
oguabdUploadProtocol
  = lens _oguabdUploadProtocol
      (\ s a -> s{_oguabdUploadProtocol = a})

-- | OAuth access token.
oguabdAccessToken :: Lens' OrganizationsGcpUserAccessBindingsDelete (Maybe Text)
oguabdAccessToken
  = lens _oguabdAccessToken
      (\ s a -> s{_oguabdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oguabdUploadType :: Lens' OrganizationsGcpUserAccessBindingsDelete (Maybe Text)
oguabdUploadType
  = lens _oguabdUploadType
      (\ s a -> s{_oguabdUploadType = a})

-- | Required. Example:
-- \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
oguabdName :: Lens' OrganizationsGcpUserAccessBindingsDelete Text
oguabdName
  = lens _oguabdName (\ s a -> s{_oguabdName = a})

-- | JSONP
oguabdCallback :: Lens' OrganizationsGcpUserAccessBindingsDelete (Maybe Text)
oguabdCallback
  = lens _oguabdCallback
      (\ s a -> s{_oguabdCallback = a})

instance GoogleRequest
           OrganizationsGcpUserAccessBindingsDelete
         where
        type Rs OrganizationsGcpUserAccessBindingsDelete =
             Operation
        type Scopes OrganizationsGcpUserAccessBindingsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGcpUserAccessBindingsDelete'{..}
          = go _oguabdName _oguabdXgafv _oguabdUploadProtocol
              _oguabdAccessToken
              _oguabdUploadType
              _oguabdCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsGcpUserAccessBindingsDeleteResource)
                      mempty
