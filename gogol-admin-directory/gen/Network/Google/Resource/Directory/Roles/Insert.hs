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
-- Module      : Network.Google.Resource.Directory.Roles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.insert@.
module Network.Google.Resource.Directory.Roles.Insert
    (
    -- * REST Resource
      RolesInsertResource

    -- * Creating a Request
    , rolesInsert
    , RolesInsert

    -- * Request Lenses
    , riXgafv
    , riUploadProtocol
    , riAccessToken
    , riUploadType
    , riPayload
    , riCustomer
    , riCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roles.insert@ method which the
-- 'RolesInsert' request conforms to.
type RolesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Role :> Post '[JSON] Role

-- | Creates a role.
--
-- /See:/ 'rolesInsert' smart constructor.
data RolesInsert =
  RolesInsert'
    { _riXgafv :: !(Maybe Xgafv)
    , _riUploadProtocol :: !(Maybe Text)
    , _riAccessToken :: !(Maybe Text)
    , _riUploadType :: !(Maybe Text)
    , _riPayload :: !Role
    , _riCustomer :: !Text
    , _riCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RolesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riXgafv'
--
-- * 'riUploadProtocol'
--
-- * 'riAccessToken'
--
-- * 'riUploadType'
--
-- * 'riPayload'
--
-- * 'riCustomer'
--
-- * 'riCallback'
rolesInsert
    :: Role -- ^ 'riPayload'
    -> Text -- ^ 'riCustomer'
    -> RolesInsert
rolesInsert pRiPayload_ pRiCustomer_ =
  RolesInsert'
    { _riXgafv = Nothing
    , _riUploadProtocol = Nothing
    , _riAccessToken = Nothing
    , _riUploadType = Nothing
    , _riPayload = pRiPayload_
    , _riCustomer = pRiCustomer_
    , _riCallback = Nothing
    }


-- | V1 error format.
riXgafv :: Lens' RolesInsert (Maybe Xgafv)
riXgafv = lens _riXgafv (\ s a -> s{_riXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
riUploadProtocol :: Lens' RolesInsert (Maybe Text)
riUploadProtocol
  = lens _riUploadProtocol
      (\ s a -> s{_riUploadProtocol = a})

-- | OAuth access token.
riAccessToken :: Lens' RolesInsert (Maybe Text)
riAccessToken
  = lens _riAccessToken
      (\ s a -> s{_riAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
riUploadType :: Lens' RolesInsert (Maybe Text)
riUploadType
  = lens _riUploadType (\ s a -> s{_riUploadType = a})

-- | Multipart request metadata.
riPayload :: Lens' RolesInsert Role
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | Immutable ID of the Google Workspace account.
riCustomer :: Lens' RolesInsert Text
riCustomer
  = lens _riCustomer (\ s a -> s{_riCustomer = a})

-- | JSONP
riCallback :: Lens' RolesInsert (Maybe Text)
riCallback
  = lens _riCallback (\ s a -> s{_riCallback = a})

instance GoogleRequest RolesInsert where
        type Rs RolesInsert = Role
        type Scopes RolesInsert =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RolesInsert'{..}
          = go _riCustomer _riXgafv _riUploadProtocol
              _riAccessToken
              _riUploadType
              _riCallback
              (Just AltJSON)
              _riPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesInsertResource)
                      mempty
