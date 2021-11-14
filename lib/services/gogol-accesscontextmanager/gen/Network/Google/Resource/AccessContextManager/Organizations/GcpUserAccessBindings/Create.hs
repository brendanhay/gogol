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
-- Module      : Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GcpUserAccessBinding. If the client specifies a name, the
-- server will ignore it. Fails if a resource already exists with the same
-- group_key. Completion of this long-running operation does not
-- necessarily signify that the new binding is deployed onto all affected
-- users, which may take more time.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.create@.
module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Create
    (
    -- * REST Resource
      OrganizationsGcpUserAccessBindingsCreateResource

    -- * Creating a Request
    , organizationsGcpUserAccessBindingsCreate
    , OrganizationsGcpUserAccessBindingsCreate

    -- * Request Lenses
    , oguabcParent
    , oguabcXgafv
    , oguabcUploadProtocol
    , oguabcAccessToken
    , oguabcUploadType
    , oguabcPayload
    , oguabcCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.create@ method which the
-- 'OrganizationsGcpUserAccessBindingsCreate' request conforms to.
type OrganizationsGcpUserAccessBindingsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "gcpUserAccessBindings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GcpUserAccessBinding :>
                         Post '[JSON] Operation

-- | Creates a GcpUserAccessBinding. If the client specifies a name, the
-- server will ignore it. Fails if a resource already exists with the same
-- group_key. Completion of this long-running operation does not
-- necessarily signify that the new binding is deployed onto all affected
-- users, which may take more time.
--
-- /See:/ 'organizationsGcpUserAccessBindingsCreate' smart constructor.
data OrganizationsGcpUserAccessBindingsCreate =
  OrganizationsGcpUserAccessBindingsCreate'
    { _oguabcParent :: !Text
    , _oguabcXgafv :: !(Maybe Xgafv)
    , _oguabcUploadProtocol :: !(Maybe Text)
    , _oguabcAccessToken :: !(Maybe Text)
    , _oguabcUploadType :: !(Maybe Text)
    , _oguabcPayload :: !GcpUserAccessBinding
    , _oguabcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsGcpUserAccessBindingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oguabcParent'
--
-- * 'oguabcXgafv'
--
-- * 'oguabcUploadProtocol'
--
-- * 'oguabcAccessToken'
--
-- * 'oguabcUploadType'
--
-- * 'oguabcPayload'
--
-- * 'oguabcCallback'
organizationsGcpUserAccessBindingsCreate
    :: Text -- ^ 'oguabcParent'
    -> GcpUserAccessBinding -- ^ 'oguabcPayload'
    -> OrganizationsGcpUserAccessBindingsCreate
organizationsGcpUserAccessBindingsCreate pOguabcParent_ pOguabcPayload_ =
  OrganizationsGcpUserAccessBindingsCreate'
    { _oguabcParent = pOguabcParent_
    , _oguabcXgafv = Nothing
    , _oguabcUploadProtocol = Nothing
    , _oguabcAccessToken = Nothing
    , _oguabcUploadType = Nothing
    , _oguabcPayload = pOguabcPayload_
    , _oguabcCallback = Nothing
    }


-- | Required. Example: \"organizations\/256\"
oguabcParent :: Lens' OrganizationsGcpUserAccessBindingsCreate Text
oguabcParent
  = lens _oguabcParent (\ s a -> s{_oguabcParent = a})

-- | V1 error format.
oguabcXgafv :: Lens' OrganizationsGcpUserAccessBindingsCreate (Maybe Xgafv)
oguabcXgafv
  = lens _oguabcXgafv (\ s a -> s{_oguabcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oguabcUploadProtocol :: Lens' OrganizationsGcpUserAccessBindingsCreate (Maybe Text)
oguabcUploadProtocol
  = lens _oguabcUploadProtocol
      (\ s a -> s{_oguabcUploadProtocol = a})

-- | OAuth access token.
oguabcAccessToken :: Lens' OrganizationsGcpUserAccessBindingsCreate (Maybe Text)
oguabcAccessToken
  = lens _oguabcAccessToken
      (\ s a -> s{_oguabcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oguabcUploadType :: Lens' OrganizationsGcpUserAccessBindingsCreate (Maybe Text)
oguabcUploadType
  = lens _oguabcUploadType
      (\ s a -> s{_oguabcUploadType = a})

-- | Multipart request metadata.
oguabcPayload :: Lens' OrganizationsGcpUserAccessBindingsCreate GcpUserAccessBinding
oguabcPayload
  = lens _oguabcPayload
      (\ s a -> s{_oguabcPayload = a})

-- | JSONP
oguabcCallback :: Lens' OrganizationsGcpUserAccessBindingsCreate (Maybe Text)
oguabcCallback
  = lens _oguabcCallback
      (\ s a -> s{_oguabcCallback = a})

instance GoogleRequest
           OrganizationsGcpUserAccessBindingsCreate
         where
        type Rs OrganizationsGcpUserAccessBindingsCreate =
             Operation
        type Scopes OrganizationsGcpUserAccessBindingsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsGcpUserAccessBindingsCreate'{..}
          = go _oguabcParent _oguabcXgafv _oguabcUploadProtocol
              _oguabcAccessToken
              _oguabcUploadType
              _oguabcCallback
              (Just AltJSON)
              _oguabcPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsGcpUserAccessBindingsCreateResource)
                      mempty
