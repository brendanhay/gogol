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
-- Module      : Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GcpUserAccessBinding. Completion of this long-running
-- operation does not necessarily signify that the changed binding is
-- deployed onto all affected users, which may take more time.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.patch@.
module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Patch
    (
    -- * REST Resource
      OrganizationsGcpUserAccessBindingsPatchResource

    -- * Creating a Request
    , organizationsGcpUserAccessBindingsPatch
    , OrganizationsGcpUserAccessBindingsPatch

    -- * Request Lenses
    , oguabpXgafv
    , oguabpUploadProtocol
    , oguabpUpdateMask
    , oguabpAccessToken
    , oguabpUploadType
    , oguabpPayload
    , oguabpName
    , oguabpCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.patch@ method which the
-- 'OrganizationsGcpUserAccessBindingsPatch' request conforms to.
type OrganizationsGcpUserAccessBindingsPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GcpUserAccessBinding :>
                         Patch '[JSON] Operation

-- | Updates a GcpUserAccessBinding. Completion of this long-running
-- operation does not necessarily signify that the changed binding is
-- deployed onto all affected users, which may take more time.
--
-- /See:/ 'organizationsGcpUserAccessBindingsPatch' smart constructor.
data OrganizationsGcpUserAccessBindingsPatch =
  OrganizationsGcpUserAccessBindingsPatch'
    { _oguabpXgafv :: !(Maybe Xgafv)
    , _oguabpUploadProtocol :: !(Maybe Text)
    , _oguabpUpdateMask :: !(Maybe GFieldMask)
    , _oguabpAccessToken :: !(Maybe Text)
    , _oguabpUploadType :: !(Maybe Text)
    , _oguabpPayload :: !GcpUserAccessBinding
    , _oguabpName :: !Text
    , _oguabpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGcpUserAccessBindingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oguabpXgafv'
--
-- * 'oguabpUploadProtocol'
--
-- * 'oguabpUpdateMask'
--
-- * 'oguabpAccessToken'
--
-- * 'oguabpUploadType'
--
-- * 'oguabpPayload'
--
-- * 'oguabpName'
--
-- * 'oguabpCallback'
organizationsGcpUserAccessBindingsPatch
    :: GcpUserAccessBinding -- ^ 'oguabpPayload'
    -> Text -- ^ 'oguabpName'
    -> OrganizationsGcpUserAccessBindingsPatch
organizationsGcpUserAccessBindingsPatch pOguabpPayload_ pOguabpName_ =
  OrganizationsGcpUserAccessBindingsPatch'
    { _oguabpXgafv = Nothing
    , _oguabpUploadProtocol = Nothing
    , _oguabpUpdateMask = Nothing
    , _oguabpAccessToken = Nothing
    , _oguabpUploadType = Nothing
    , _oguabpPayload = pOguabpPayload_
    , _oguabpName = pOguabpName_
    , _oguabpCallback = Nothing
    }


-- | V1 error format.
oguabpXgafv :: Lens' OrganizationsGcpUserAccessBindingsPatch (Maybe Xgafv)
oguabpXgafv
  = lens _oguabpXgafv (\ s a -> s{_oguabpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oguabpUploadProtocol :: Lens' OrganizationsGcpUserAccessBindingsPatch (Maybe Text)
oguabpUploadProtocol
  = lens _oguabpUploadProtocol
      (\ s a -> s{_oguabpUploadProtocol = a})

-- | Required. Only the fields specified in this mask are updated. Because
-- name and group_key cannot be changed, update_mask is required and must
-- always be: update_mask { paths: \"access_levels\" }
oguabpUpdateMask :: Lens' OrganizationsGcpUserAccessBindingsPatch (Maybe GFieldMask)
oguabpUpdateMask
  = lens _oguabpUpdateMask
      (\ s a -> s{_oguabpUpdateMask = a})

-- | OAuth access token.
oguabpAccessToken :: Lens' OrganizationsGcpUserAccessBindingsPatch (Maybe Text)
oguabpAccessToken
  = lens _oguabpAccessToken
      (\ s a -> s{_oguabpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oguabpUploadType :: Lens' OrganizationsGcpUserAccessBindingsPatch (Maybe Text)
oguabpUploadType
  = lens _oguabpUploadType
      (\ s a -> s{_oguabpUploadType = a})

-- | Multipart request metadata.
oguabpPayload :: Lens' OrganizationsGcpUserAccessBindingsPatch GcpUserAccessBinding
oguabpPayload
  = lens _oguabpPayload
      (\ s a -> s{_oguabpPayload = a})

-- | Immutable. Assigned by the server during creation. The last segment has
-- an arbitrary length and has only URI unreserved characters (as defined
-- by [RFC 3986 Section
-- 2.3](https:\/\/tools.ietf.org\/html\/rfc3986#section-2.3)). Should not
-- be specified by the client during creation. Example:
-- \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
oguabpName :: Lens' OrganizationsGcpUserAccessBindingsPatch Text
oguabpName
  = lens _oguabpName (\ s a -> s{_oguabpName = a})

-- | JSONP
oguabpCallback :: Lens' OrganizationsGcpUserAccessBindingsPatch (Maybe Text)
oguabpCallback
  = lens _oguabpCallback
      (\ s a -> s{_oguabpCallback = a})

instance GoogleRequest
           OrganizationsGcpUserAccessBindingsPatch
         where
        type Rs OrganizationsGcpUserAccessBindingsPatch =
             Operation
        type Scopes OrganizationsGcpUserAccessBindingsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGcpUserAccessBindingsPatch'{..}
          = go _oguabpName _oguabpXgafv _oguabpUploadProtocol
              _oguabpUpdateMask
              _oguabpAccessToken
              _oguabpUploadType
              _oguabpCallback
              (Just AltJSON)
              _oguabpPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsGcpUserAccessBindingsPatchResource)
                      mempty
