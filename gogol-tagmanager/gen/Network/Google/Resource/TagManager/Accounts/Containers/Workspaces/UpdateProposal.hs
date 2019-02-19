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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.UpdateProposal
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Workspace Proposal.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.updateProposal@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.UpdateProposal
    (
    -- * REST Resource
      AccountsContainersWorkspacesUpdateProposalResource

    -- * Creating a Request
    , accountsContainersWorkspacesUpdateProposal
    , AccountsContainersWorkspacesUpdateProposal

    -- * Request Lenses
    , acwupPath
    , acwupPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.updateProposal@ method which the
-- 'AccountsContainersWorkspacesUpdateProposal' request conforms to.
type AccountsContainersWorkspacesUpdateProposalResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] UpdateWorkspaceProposalRequest :>
               Put '[JSON] WorkspaceProposal

-- | Updates a GTM Workspace Proposal.
--
-- /See:/ 'accountsContainersWorkspacesUpdateProposal' smart constructor.
data AccountsContainersWorkspacesUpdateProposal =
  AccountsContainersWorkspacesUpdateProposal'
    { _acwupPath    :: !Text
    , _acwupPayload :: !UpdateWorkspaceProposalRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersWorkspacesUpdateProposal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwupPath'
--
-- * 'acwupPayload'
accountsContainersWorkspacesUpdateProposal
    :: Text -- ^ 'acwupPath'
    -> UpdateWorkspaceProposalRequest -- ^ 'acwupPayload'
    -> AccountsContainersWorkspacesUpdateProposal
accountsContainersWorkspacesUpdateProposal pAcwupPath_ pAcwupPayload_ =
  AccountsContainersWorkspacesUpdateProposal'
    {_acwupPath = pAcwupPath_, _acwupPayload = pAcwupPayload_}

-- | GTM workspace proposal\'s relative path: Example:
-- accounts\/{aid}\/containers\/{cid}\/workspace\/{wid}\/workspace_proposal
acwupPath :: Lens' AccountsContainersWorkspacesUpdateProposal Text
acwupPath
  = lens _acwupPath (\ s a -> s{_acwupPath = a})

-- | Multipart request metadata.
acwupPayload :: Lens' AccountsContainersWorkspacesUpdateProposal UpdateWorkspaceProposalRequest
acwupPayload
  = lens _acwupPayload (\ s a -> s{_acwupPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesUpdateProposal
         where
        type Rs AccountsContainersWorkspacesUpdateProposal =
             WorkspaceProposal
        type Scopes
               AccountsContainersWorkspacesUpdateProposal
             = '[]
        requestClient
          AccountsContainersWorkspacesUpdateProposal'{..}
          = go _acwupPath (Just AltJSON) _acwupPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesUpdateProposalResource)
                      mempty
