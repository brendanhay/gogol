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
-- Module      : Network.Google.Resource.Directory.Roles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.patch@.
module Network.Google.Resource.Directory.Roles.Patch
    (
    -- * REST Resource
      RolesPatchResource

    -- * Creating a Request
    , rolesPatch
    , RolesPatch

    -- * Request Lenses
    , rpXgafv
    , rpUploadProtocol
    , rpAccessToken
    , rpUploadType
    , rpPayload
    , rpRoleId
    , rpCustomer
    , rpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roles.patch@ method which the
-- 'RolesPatch' request conforms to.
type RolesPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 Capture "roleId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Role :> Patch '[JSON] Role

-- | Patches a role.
--
-- /See:/ 'rolesPatch' smart constructor.
data RolesPatch =
  RolesPatch'
    { _rpXgafv :: !(Maybe Xgafv)
    , _rpUploadProtocol :: !(Maybe Text)
    , _rpAccessToken :: !(Maybe Text)
    , _rpUploadType :: !(Maybe Text)
    , _rpPayload :: !Role
    , _rpRoleId :: !Text
    , _rpCustomer :: !Text
    , _rpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RolesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpXgafv'
--
-- * 'rpUploadProtocol'
--
-- * 'rpAccessToken'
--
-- * 'rpUploadType'
--
-- * 'rpPayload'
--
-- * 'rpRoleId'
--
-- * 'rpCustomer'
--
-- * 'rpCallback'
rolesPatch
    :: Role -- ^ 'rpPayload'
    -> Text -- ^ 'rpRoleId'
    -> Text -- ^ 'rpCustomer'
    -> RolesPatch
rolesPatch pRpPayload_ pRpRoleId_ pRpCustomer_ =
  RolesPatch'
    { _rpXgafv = Nothing
    , _rpUploadProtocol = Nothing
    , _rpAccessToken = Nothing
    , _rpUploadType = Nothing
    , _rpPayload = pRpPayload_
    , _rpRoleId = pRpRoleId_
    , _rpCustomer = pRpCustomer_
    , _rpCallback = Nothing
    }


-- | V1 error format.
rpXgafv :: Lens' RolesPatch (Maybe Xgafv)
rpXgafv = lens _rpXgafv (\ s a -> s{_rpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rpUploadProtocol :: Lens' RolesPatch (Maybe Text)
rpUploadProtocol
  = lens _rpUploadProtocol
      (\ s a -> s{_rpUploadProtocol = a})

-- | OAuth access token.
rpAccessToken :: Lens' RolesPatch (Maybe Text)
rpAccessToken
  = lens _rpAccessToken
      (\ s a -> s{_rpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rpUploadType :: Lens' RolesPatch (Maybe Text)
rpUploadType
  = lens _rpUploadType (\ s a -> s{_rpUploadType = a})

-- | Multipart request metadata.
rpPayload :: Lens' RolesPatch Role
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | Immutable ID of the role.
rpRoleId :: Lens' RolesPatch Text
rpRoleId = lens _rpRoleId (\ s a -> s{_rpRoleId = a})

-- | Immutable ID of the Google Workspace account.
rpCustomer :: Lens' RolesPatch Text
rpCustomer
  = lens _rpCustomer (\ s a -> s{_rpCustomer = a})

-- | JSONP
rpCallback :: Lens' RolesPatch (Maybe Text)
rpCallback
  = lens _rpCallback (\ s a -> s{_rpCallback = a})

instance GoogleRequest RolesPatch where
        type Rs RolesPatch = Role
        type Scopes RolesPatch =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RolesPatch'{..}
          = go _rpCustomer _rpRoleId _rpXgafv _rpUploadProtocol
              _rpAccessToken
              _rpUploadType
              _rpCallback
              (Just AltJSON)
              _rpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesPatchResource)
                      mempty
