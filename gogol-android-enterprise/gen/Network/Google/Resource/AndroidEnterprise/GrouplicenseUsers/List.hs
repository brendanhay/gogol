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
-- Module      : Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenseusers.list@.
module Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
    (
    -- * REST Resource
      GrouplicenseUsersListResource

    -- * Creating a Request
    , grouplicenseUsersList
    , GrouplicenseUsersList

    -- * Request Lenses
    , gulEnterpriseId
    , gulGroupLicenseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.grouplicenseusers.list@ method which the
-- 'GrouplicenseUsersList' request conforms to.
type GrouplicenseUsersListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               Capture "groupLicenseId" Text :>
                 "users" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GroupLicenseUsersListResponse

-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ 'grouplicenseUsersList' smart constructor.
data GrouplicenseUsersList = GrouplicenseUsersList
    { _gulEnterpriseId   :: !Text
    , _gulGroupLicenseId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GrouplicenseUsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gulEnterpriseId'
--
-- * 'gulGroupLicenseId'
grouplicenseUsersList
    :: Text -- ^ 'gulEnterpriseId'
    -> Text -- ^ 'gulGroupLicenseId'
    -> GrouplicenseUsersList
grouplicenseUsersList pGulEnterpriseId_ pGulGroupLicenseId_ =
    GrouplicenseUsersList
    { _gulEnterpriseId = pGulEnterpriseId_
    , _gulGroupLicenseId = pGulGroupLicenseId_
    }

-- | The ID of the enterprise.
gulEnterpriseId :: Lens' GrouplicenseUsersList Text
gulEnterpriseId
  = lens _gulEnterpriseId
      (\ s a -> s{_gulEnterpriseId = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
gulGroupLicenseId :: Lens' GrouplicenseUsersList Text
gulGroupLicenseId
  = lens _gulGroupLicenseId
      (\ s a -> s{_gulGroupLicenseId = a})

instance GoogleRequest GrouplicenseUsersList where
        type Rs GrouplicenseUsersList =
             GroupLicenseUsersListResponse
        requestClient GrouplicenseUsersList{..}
          = go _gulEnterpriseId _gulGroupLicenseId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy GrouplicenseUsersListResource)
                      mempty
