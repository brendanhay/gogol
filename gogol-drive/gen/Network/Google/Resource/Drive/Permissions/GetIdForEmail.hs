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
-- Module      : Network.Google.Resource.Drive.Permissions.GetIdForEmail
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the permission ID for an email address.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.getIdForEmail@.
module Network.Google.Resource.Drive.Permissions.GetIdForEmail
    (
    -- * REST Resource
      PermissionsGetIdForEmailResource

    -- * Creating a Request
    , permissionsGetIdForEmail'
    , PermissionsGetIdForEmail'

    -- * Request Lenses
    , pgifeEmail
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.permissions.getIdForEmail@ method which the
-- 'PermissionsGetIdForEmail'' request conforms to.
type PermissionsGetIdForEmailResource =
     "permissionIds" :>
       Capture "email" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] PermissionId

-- | Returns the permission ID for an email address.
--
-- /See:/ 'permissionsGetIdForEmail'' smart constructor.
newtype PermissionsGetIdForEmail' = PermissionsGetIdForEmail'
    { _pgifeEmail :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGetIdForEmail'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgifeEmail'
permissionsGetIdForEmail'
    :: Text -- ^ 'pgifeEmail'
    -> PermissionsGetIdForEmail'
permissionsGetIdForEmail' pPgifeEmail_ =
    PermissionsGetIdForEmail'
    { _pgifeEmail = pPgifeEmail_
    }

-- | The email address for which to return a permission ID
pgifeEmail :: Lens' PermissionsGetIdForEmail' Text
pgifeEmail
  = lens _pgifeEmail (\ s a -> s{_pgifeEmail = a})

instance GoogleRequest PermissionsGetIdForEmail'
         where
        type Rs PermissionsGetIdForEmail' = PermissionId
        requestClient PermissionsGetIdForEmail'{..}
          = go _pgifeEmail (Just AltJSON) driveService
          where go
                  = buildClient
                      (Proxy :: Proxy PermissionsGetIdForEmailResource)
                      mempty
