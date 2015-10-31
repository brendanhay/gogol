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
-- Module      : Network.Google.Resource.AndroidEnterprise.Permissions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.permissions.get@.
module Network.Google.Resource.AndroidEnterprise.Permissions.Get
    (
    -- * REST Resource
      PermissionsGetResource

    -- * Creating a Request
    , permissionsGet
    , PermissionsGet

    -- * Request Lenses
    , pgLanguage
    , pgPermissionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.permissions.get@ method which the
-- 'PermissionsGet' request conforms to.
type PermissionsGetResource =
     "androidenterprise" :>
       "v1" :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "language" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Permission

-- | Retrieves details of an Android app permission for display to an
-- enterprise admin.
--
-- /See:/ 'permissionsGet' smart constructor.
data PermissionsGet = PermissionsGet
    { _pgLanguage     :: !(Maybe Text)
    , _pgPermissionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgLanguage'
--
-- * 'pgPermissionId'
permissionsGet
    :: Text -- ^ 'pgPermissionId'
    -> PermissionsGet
permissionsGet pPgPermissionId_ =
    PermissionsGet
    { _pgLanguage = Nothing
    , _pgPermissionId = pPgPermissionId_
    }

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\")
pgLanguage :: Lens' PermissionsGet (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | The ID of the permission.
pgPermissionId :: Lens' PermissionsGet Text
pgPermissionId
  = lens _pgPermissionId
      (\ s a -> s{_pgPermissionId = a})

instance GoogleRequest PermissionsGet where
        type Rs PermissionsGet = Permission
        type Scopes PermissionsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient PermissionsGet{..}
          = go _pgPermissionId _pgLanguage (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy PermissionsGetResource)
                      mempty
