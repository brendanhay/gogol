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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.AddMember
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds users to the specified group.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.groups.addMember@.
module Network.Google.Resource.CloudUserAccounts.Groups.AddMember
    (
    -- * REST Resource
      GroupsAddMemberResource

    -- * Creating a Request
    , groupsAddMember
    , GroupsAddMember

    -- * Request Lenses
    , gamProject
    , gamPayload
    , gamGroupName
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.groups.addMember@ method which the
-- 'GroupsAddMember' request conforms to.
type GroupsAddMemberResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "groups" :>
                 Capture "groupName" Text :>
                   "addMember" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GroupsAddMemberRequest :>
                         Post '[JSON] Operation

-- | Adds users to the specified group.
--
-- /See:/ 'groupsAddMember' smart constructor.
data GroupsAddMember = GroupsAddMember
    { _gamProject   :: !Text
    , _gamPayload   :: !GroupsAddMemberRequest
    , _gamGroupName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAddMember' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gamProject'
--
-- * 'gamPayload'
--
-- * 'gamGroupName'
groupsAddMember
    :: Text -- ^ 'gamProject'
    -> GroupsAddMemberRequest -- ^ 'gamPayload'
    -> Text -- ^ 'gamGroupName'
    -> GroupsAddMember
groupsAddMember pGamProject_ pGamPayload_ pGamGroupName_ =
    GroupsAddMember
    { _gamProject = pGamProject_
    , _gamPayload = pGamPayload_
    , _gamGroupName = pGamGroupName_
    }

-- | Project ID for this request.
gamProject :: Lens' GroupsAddMember Text
gamProject
  = lens _gamProject (\ s a -> s{_gamProject = a})

-- | Multipart request metadata.
gamPayload :: Lens' GroupsAddMember GroupsAddMemberRequest
gamPayload
  = lens _gamPayload (\ s a -> s{_gamPayload = a})

-- | Name of the group for this request.
gamGroupName :: Lens' GroupsAddMember Text
gamGroupName
  = lens _gamGroupName (\ s a -> s{_gamGroupName = a})

instance GoogleRequest GroupsAddMember where
        type Rs GroupsAddMember = Operation
        type Scopes GroupsAddMember =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud.useraccounts"]
        requestClient GroupsAddMember{..}
          = go _gamProject _gamGroupName (Just AltJSON)
              _gamPayload
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsAddMemberResource)
                      mempty
