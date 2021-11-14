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
-- Module      : Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the GcpUserAccessBinding with the given name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.get@.
module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Get
    (
    -- * REST Resource
      OrganizationsGcpUserAccessBindingsGetResource

    -- * Creating a Request
    , organizationsGcpUserAccessBindingsGet
    , OrganizationsGcpUserAccessBindingsGet

    -- * Request Lenses
    , oguabgXgafv
    , oguabgUploadProtocol
    , oguabgAccessToken
    , oguabgUploadType
    , oguabgName
    , oguabgCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.get@ method which the
-- 'OrganizationsGcpUserAccessBindingsGet' request conforms to.
type OrganizationsGcpUserAccessBindingsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GcpUserAccessBinding

-- | Gets the GcpUserAccessBinding with the given name.
--
-- /See:/ 'organizationsGcpUserAccessBindingsGet' smart constructor.
data OrganizationsGcpUserAccessBindingsGet =
  OrganizationsGcpUserAccessBindingsGet'
    { _oguabgXgafv :: !(Maybe Xgafv)
    , _oguabgUploadProtocol :: !(Maybe Text)
    , _oguabgAccessToken :: !(Maybe Text)
    , _oguabgUploadType :: !(Maybe Text)
    , _oguabgName :: !Text
    , _oguabgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGcpUserAccessBindingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oguabgXgafv'
--
-- * 'oguabgUploadProtocol'
--
-- * 'oguabgAccessToken'
--
-- * 'oguabgUploadType'
--
-- * 'oguabgName'
--
-- * 'oguabgCallback'
organizationsGcpUserAccessBindingsGet
    :: Text -- ^ 'oguabgName'
    -> OrganizationsGcpUserAccessBindingsGet
organizationsGcpUserAccessBindingsGet pOguabgName_ =
  OrganizationsGcpUserAccessBindingsGet'
    { _oguabgXgafv = Nothing
    , _oguabgUploadProtocol = Nothing
    , _oguabgAccessToken = Nothing
    , _oguabgUploadType = Nothing
    , _oguabgName = pOguabgName_
    , _oguabgCallback = Nothing
    }


-- | V1 error format.
oguabgXgafv :: Lens' OrganizationsGcpUserAccessBindingsGet (Maybe Xgafv)
oguabgXgafv
  = lens _oguabgXgafv (\ s a -> s{_oguabgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oguabgUploadProtocol :: Lens' OrganizationsGcpUserAccessBindingsGet (Maybe Text)
oguabgUploadProtocol
  = lens _oguabgUploadProtocol
      (\ s a -> s{_oguabgUploadProtocol = a})

-- | OAuth access token.
oguabgAccessToken :: Lens' OrganizationsGcpUserAccessBindingsGet (Maybe Text)
oguabgAccessToken
  = lens _oguabgAccessToken
      (\ s a -> s{_oguabgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oguabgUploadType :: Lens' OrganizationsGcpUserAccessBindingsGet (Maybe Text)
oguabgUploadType
  = lens _oguabgUploadType
      (\ s a -> s{_oguabgUploadType = a})

-- | Required. Example:
-- \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
oguabgName :: Lens' OrganizationsGcpUserAccessBindingsGet Text
oguabgName
  = lens _oguabgName (\ s a -> s{_oguabgName = a})

-- | JSONP
oguabgCallback :: Lens' OrganizationsGcpUserAccessBindingsGet (Maybe Text)
oguabgCallback
  = lens _oguabgCallback
      (\ s a -> s{_oguabgCallback = a})

instance GoogleRequest
           OrganizationsGcpUserAccessBindingsGet
         where
        type Rs OrganizationsGcpUserAccessBindingsGet =
             GcpUserAccessBinding
        type Scopes OrganizationsGcpUserAccessBindingsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGcpUserAccessBindingsGet'{..}
          = go _oguabgName _oguabgXgafv _oguabgUploadProtocol
              _oguabgAccessToken
              _oguabgUploadType
              _oguabgCallback
              (Just AltJSON)
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsGcpUserAccessBindingsGetResource)
                      mempty
