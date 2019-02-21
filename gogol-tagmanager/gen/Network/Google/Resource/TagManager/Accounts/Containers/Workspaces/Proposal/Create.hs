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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Proposal.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Workspace Proposal.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.proposal.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Proposal.Create
    (
    -- * REST Resource
      AccountsContainersWorkspacesProposalCreateResource

    -- * Creating a Request
    , accountsContainersWorkspacesProposalCreate
    , AccountsContainersWorkspacesProposalCreate

    -- * Request Lenses
    , acwpcParent
    , acwpcPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.proposal.create@ method which the
-- 'AccountsContainersWorkspacesProposalCreate' request conforms to.
type AccountsContainersWorkspacesProposalCreateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "proposal" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] CreateWorkspaceProposalRequest :>
                 Post '[JSON] WorkspaceProposal

-- | Creates a GTM Workspace Proposal.
--
-- /See:/ 'accountsContainersWorkspacesProposalCreate' smart constructor.
data AccountsContainersWorkspacesProposalCreate =
  AccountsContainersWorkspacesProposalCreate'
    { _acwpcParent  :: !Text
    , _acwpcPayload :: !CreateWorkspaceProposalRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesProposalCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwpcParent'
--
-- * 'acwpcPayload'
accountsContainersWorkspacesProposalCreate
    :: Text -- ^ 'acwpcParent'
    -> CreateWorkspaceProposalRequest -- ^ 'acwpcPayload'
    -> AccountsContainersWorkspacesProposalCreate
accountsContainersWorkspacesProposalCreate pAcwpcParent_ pAcwpcPayload_ =
  AccountsContainersWorkspacesProposalCreate'
    {_acwpcParent = pAcwpcParent_, _acwpcPayload = pAcwpcPayload_}


-- | GTM Workspace\'s API relative path. Example:
-- accounts\/{aid}\/containers\/{cid}\/workspace\/{wid}
acwpcParent :: Lens' AccountsContainersWorkspacesProposalCreate Text
acwpcParent
  = lens _acwpcParent (\ s a -> s{_acwpcParent = a})

-- | Multipart request metadata.
acwpcPayload :: Lens' AccountsContainersWorkspacesProposalCreate CreateWorkspaceProposalRequest
acwpcPayload
  = lens _acwpcPayload (\ s a -> s{_acwpcPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesProposalCreate
         where
        type Rs AccountsContainersWorkspacesProposalCreate =
             WorkspaceProposal
        type Scopes
               AccountsContainersWorkspacesProposalCreate
             = '[]
        requestClient
          AccountsContainersWorkspacesProposalCreate'{..}
          = go _acwpcParent (Just AltJSON) _acwpcPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesProposalCreateResource)
                      mempty
