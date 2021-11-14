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
-- Module      : Network.Google.Resource.Directory.Roles.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.get@.
module Network.Google.Resource.Directory.Roles.Get
    (
    -- * REST Resource
      RolesGetResource

    -- * Creating a Request
    , rolesGet
    , RolesGet

    -- * Request Lenses
    , rgXgafv
    , rgUploadProtocol
    , rgAccessToken
    , rgUploadType
    , rgRoleId
    , rgCustomer
    , rgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roles.get@ method which the
-- 'RolesGet' request conforms to.
type RolesGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] Role

-- | Retrieves a role.
--
-- /See:/ 'rolesGet' smart constructor.
data RolesGet =
  RolesGet'
    { _rgXgafv :: !(Maybe Xgafv)
    , _rgUploadProtocol :: !(Maybe Text)
    , _rgAccessToken :: !(Maybe Text)
    , _rgUploadType :: !(Maybe Text)
    , _rgRoleId :: !Text
    , _rgCustomer :: !Text
    , _rgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RolesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgXgafv'
--
-- * 'rgUploadProtocol'
--
-- * 'rgAccessToken'
--
-- * 'rgUploadType'
--
-- * 'rgRoleId'
--
-- * 'rgCustomer'
--
-- * 'rgCallback'
rolesGet
    :: Text -- ^ 'rgRoleId'
    -> Text -- ^ 'rgCustomer'
    -> RolesGet
rolesGet pRgRoleId_ pRgCustomer_ =
  RolesGet'
    { _rgXgafv = Nothing
    , _rgUploadProtocol = Nothing
    , _rgAccessToken = Nothing
    , _rgUploadType = Nothing
    , _rgRoleId = pRgRoleId_
    , _rgCustomer = pRgCustomer_
    , _rgCallback = Nothing
    }


-- | V1 error format.
rgXgafv :: Lens' RolesGet (Maybe Xgafv)
rgXgafv = lens _rgXgafv (\ s a -> s{_rgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rgUploadProtocol :: Lens' RolesGet (Maybe Text)
rgUploadProtocol
  = lens _rgUploadProtocol
      (\ s a -> s{_rgUploadProtocol = a})

-- | OAuth access token.
rgAccessToken :: Lens' RolesGet (Maybe Text)
rgAccessToken
  = lens _rgAccessToken
      (\ s a -> s{_rgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rgUploadType :: Lens' RolesGet (Maybe Text)
rgUploadType
  = lens _rgUploadType (\ s a -> s{_rgUploadType = a})

-- | Immutable ID of the role.
rgRoleId :: Lens' RolesGet Text
rgRoleId = lens _rgRoleId (\ s a -> s{_rgRoleId = a})

-- | Immutable ID of the Google Workspace account.
rgCustomer :: Lens' RolesGet Text
rgCustomer
  = lens _rgCustomer (\ s a -> s{_rgCustomer = a})

-- | JSONP
rgCallback :: Lens' RolesGet (Maybe Text)
rgCallback
  = lens _rgCallback (\ s a -> s{_rgCallback = a})

instance GoogleRequest RolesGet where
        type Rs RolesGet = Role
        type Scopes RolesGet =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement",
               "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
        requestClient RolesGet'{..}
          = go _rgCustomer _rgRoleId _rgXgafv _rgUploadProtocol
              _rgAccessToken
              _rgUploadType
              _rgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesGetResource)
                      mempty
