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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Proposal.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Workspace Proposal.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.proposal.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Proposal.Delete
    (
    -- * REST Resource
      AccountsContainersWorkspacesProposalDeleteResource

    -- * Creating a Request
    , accountsContainersWorkspacesProposalDelete
    , AccountsContainersWorkspacesProposalDelete

    -- * Request Lenses
    , acwpdPath
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.proposal.delete@ method which the
-- 'AccountsContainersWorkspacesProposalDelete' request conforms to.
type AccountsContainersWorkspacesProposalDeleteResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Workspace Proposal.
--
-- /See:/ 'accountsContainersWorkspacesProposalDelete' smart constructor.
newtype AccountsContainersWorkspacesProposalDelete = AccountsContainersWorkspacesProposalDelete'
    { _acwpdPath :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersWorkspacesProposalDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwpdPath'
accountsContainersWorkspacesProposalDelete
    :: Text -- ^ 'acwpdPath'
    -> AccountsContainersWorkspacesProposalDelete
accountsContainersWorkspacesProposalDelete pAcwpdPath_ =
    AccountsContainersWorkspacesProposalDelete'
    { _acwpdPath = pAcwpdPath_
    }

-- | GTM workspace proposal\'s relative path: Example:
-- accounts\/{aid}\/containers\/{cid}\/workspace\/{wid}\/workspace_proposal
acwpdPath :: Lens' AccountsContainersWorkspacesProposalDelete Text
acwpdPath
  = lens _acwpdPath (\ s a -> s{_acwpdPath = a})

instance GoogleRequest
         AccountsContainersWorkspacesProposalDelete where
        type Rs AccountsContainersWorkspacesProposalDelete =
             ()
        type Scopes
               AccountsContainersWorkspacesProposalDelete
             = '[]
        requestClient
          AccountsContainersWorkspacesProposalDelete'{..}
          = go _acwpdPath (Just AltJSON) tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesProposalDeleteResource)
                      mempty
