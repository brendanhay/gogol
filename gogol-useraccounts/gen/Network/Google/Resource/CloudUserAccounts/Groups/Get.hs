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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Group resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.groups.get@.
module Network.Google.Resource.CloudUserAccounts.Groups.Get
    (
    -- * REST Resource
      GroupsGetResource

    -- * Creating a Request
    , groupsGet
    , GroupsGet

    -- * Request Lenses
    , ggProject
    , ggGroupName
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.groups.get@ method which the
-- 'GroupsGet' request conforms to.
type GroupsGetResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           Capture "groupName" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Group

-- | Returns the specified Group resource.
--
-- /See:/ 'groupsGet' smart constructor.
data GroupsGet = GroupsGet
    { _ggProject   :: !Text
    , _ggGroupName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggProject'
--
-- * 'ggGroupName'
groupsGet
    :: Text -- ^ 'ggProject'
    -> Text -- ^ 'ggGroupName'
    -> GroupsGet
groupsGet pGgProject_ pGgGroupName_ =
    GroupsGet
    { _ggProject = pGgProject_
    , _ggGroupName = pGgGroupName_
    }

-- | Project ID for this request.
ggProject :: Lens' GroupsGet Text
ggProject
  = lens _ggProject (\ s a -> s{_ggProject = a})

-- | Name of the Group resource to return.
ggGroupName :: Lens' GroupsGet Text
ggGroupName
  = lens _ggGroupName (\ s a -> s{_ggGroupName = a})

instance GoogleRequest GroupsGet where
        type Rs GroupsGet = Group
        requestClient GroupsGet{..}
          = go _ggProject _ggGroupName (Just AltJSON)
              userAccountsService
          where go
                  = buildClient (Proxy :: Proxy GroupsGetResource)
                      mempty
