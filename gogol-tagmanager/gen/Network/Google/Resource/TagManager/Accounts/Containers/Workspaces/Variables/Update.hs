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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Workspaces.Variables.Update
    (
    -- * REST Resource
      AccountsContainersWorkspacesVariablesUpdateResource

    -- * Creating a Request
    , accountsContainersWorkspacesVariablesUpdate
    , AccountsContainersWorkspacesVariablesUpdate

    -- * Request Lenses
    , acwvuPath
    , acwvuFingerprint
    , acwvuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.update@ method which the
-- 'AccountsContainersWorkspacesVariablesUpdate' request conforms to.
type AccountsContainersWorkspacesVariablesUpdateResource
     =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Variable :> Put '[JSON] Variable

-- | Updates a GTM Variable.
--
-- /See:/ 'accountsContainersWorkspacesVariablesUpdate' smart constructor.
data AccountsContainersWorkspacesVariablesUpdate =
  AccountsContainersWorkspacesVariablesUpdate'
    { _acwvuPath        :: !Text
    , _acwvuFingerprint :: !(Maybe Text)
    , _acwvuPayload     :: !Variable
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersWorkspacesVariablesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwvuPath'
--
-- * 'acwvuFingerprint'
--
-- * 'acwvuPayload'
accountsContainersWorkspacesVariablesUpdate
    :: Text -- ^ 'acwvuPath'
    -> Variable -- ^ 'acwvuPayload'
    -> AccountsContainersWorkspacesVariablesUpdate
accountsContainersWorkspacesVariablesUpdate pAcwvuPath_ pAcwvuPayload_ =
  AccountsContainersWorkspacesVariablesUpdate'
    { _acwvuPath = pAcwvuPath_
    , _acwvuFingerprint = Nothing
    , _acwvuPayload = pAcwvuPayload_
    }


-- | GTM Variable\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/workspaces\/{workspace_id}\/variables\/{variable_id}
acwvuPath :: Lens' AccountsContainersWorkspacesVariablesUpdate Text
acwvuPath
  = lens _acwvuPath (\ s a -> s{_acwvuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
acwvuFingerprint :: Lens' AccountsContainersWorkspacesVariablesUpdate (Maybe Text)
acwvuFingerprint
  = lens _acwvuFingerprint
      (\ s a -> s{_acwvuFingerprint = a})

-- | Multipart request metadata.
acwvuPayload :: Lens' AccountsContainersWorkspacesVariablesUpdate Variable
acwvuPayload
  = lens _acwvuPayload (\ s a -> s{_acwvuPayload = a})

instance GoogleRequest
           AccountsContainersWorkspacesVariablesUpdate
         where
        type Rs AccountsContainersWorkspacesVariablesUpdate =
             Variable
        type Scopes
               AccountsContainersWorkspacesVariablesUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersWorkspacesVariablesUpdate'{..}
          = go _acwvuPath _acwvuFingerprint (Just AltJSON)
              _acwvuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersWorkspacesVariablesUpdateResource)
                      mempty
