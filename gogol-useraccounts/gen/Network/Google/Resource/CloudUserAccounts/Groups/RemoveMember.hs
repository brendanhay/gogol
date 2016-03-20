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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.RemoveMember
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes users from the specified group.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.groups.removeMember@.
module Network.Google.Resource.CloudUserAccounts.Groups.RemoveMember
    (
    -- * REST Resource
      GroupsRemoveMemberResource

    -- * Creating a Request
    , groupsRemoveMember
    , GroupsRemoveMember

    -- * Request Lenses
    , grmProject
    , grmPayload
    , grmGroupName
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.groups.removeMember@ method which the
-- 'GroupsRemoveMember' request conforms to.
type GroupsRemoveMemberResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "groups" :>
                 Capture "groupName" Text :>
                   "removeMember" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GroupsRemoveMemberRequest :>
                         Post '[JSON] Operation

-- | Removes users from the specified group.
--
-- /See:/ 'groupsRemoveMember' smart constructor.
data GroupsRemoveMember = GroupsRemoveMember
    { _grmProject   :: !Text
    , _grmPayload   :: !GroupsRemoveMemberRequest
    , _grmGroupName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsRemoveMember' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grmProject'
--
-- * 'grmPayload'
--
-- * 'grmGroupName'
groupsRemoveMember
    :: Text -- ^ 'grmProject'
    -> GroupsRemoveMemberRequest -- ^ 'grmPayload'
    -> Text -- ^ 'grmGroupName'
    -> GroupsRemoveMember
groupsRemoveMember pGrmProject_ pGrmPayload_ pGrmGroupName_ =
    GroupsRemoveMember
    { _grmProject = pGrmProject_
    , _grmPayload = pGrmPayload_
    , _grmGroupName = pGrmGroupName_
    }

-- | Project ID for this request.
grmProject :: Lens' GroupsRemoveMember Text
grmProject
  = lens _grmProject (\ s a -> s{_grmProject = a})

-- | Multipart request metadata.
grmPayload :: Lens' GroupsRemoveMember GroupsRemoveMemberRequest
grmPayload
  = lens _grmPayload (\ s a -> s{_grmPayload = a})

-- | Name of the group for this request.
grmGroupName :: Lens' GroupsRemoveMember Text
grmGroupName
  = lens _grmGroupName (\ s a -> s{_grmGroupName = a})

instance GoogleRequest GroupsRemoveMember where
        type Rs GroupsRemoveMember = Operation
        requestClient GroupsRemoveMember{..}
          = go _grmProject _grmGroupName (Just AltJSON)
              _grmPayload
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsRemoveMemberResource)
                      mempty
