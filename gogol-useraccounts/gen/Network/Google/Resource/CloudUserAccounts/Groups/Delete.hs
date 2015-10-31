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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Group resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.groups.delete@.
module Network.Google.Resource.CloudUserAccounts.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete
    , GroupsDelete

    -- * Request Lenses
    , gdProject
    , gdGroupName
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.groups.delete@ method which the
-- 'GroupsDelete' request conforms to.
type GroupsDeleteResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "groups" :>
                 Capture "groupName" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified Group resource.
--
-- /See:/ 'groupsDelete' smart constructor.
data GroupsDelete = GroupsDelete
    { _gdProject   :: !Text
    , _gdGroupName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdProject'
--
-- * 'gdGroupName'
groupsDelete
    :: Text -- ^ 'gdProject'
    -> Text -- ^ 'gdGroupName'
    -> GroupsDelete
groupsDelete pGdProject_ pGdGroupName_ =
    GroupsDelete
    { _gdProject = pGdProject_
    , _gdGroupName = pGdGroupName_
    }

-- | Project ID for this request.
gdProject :: Lens' GroupsDelete Text
gdProject
  = lens _gdProject (\ s a -> s{_gdProject = a})

-- | Name of the Group resource to delete.
gdGroupName :: Lens' GroupsDelete Text
gdGroupName
  = lens _gdGroupName (\ s a -> s{_gdGroupName = a})

instance GoogleRequest GroupsDelete where
        type Rs GroupsDelete = Operation
        type Scopes GroupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud.useraccounts"]
        requestClient GroupsDelete{..}
          = go _gdProject _gdGroupName (Just AltJSON)
              userAccountsService
          where go
                  = buildClient (Proxy :: Proxy GroupsDeleteResource)
                      mempty
