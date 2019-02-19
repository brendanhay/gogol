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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Environment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.patch@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Patch
    (
    -- * REST Resource
      AccountsContainersEnvironmentsPatchResource

    -- * Creating a Request
    , accountsContainersEnvironmentsPatch
    , AccountsContainersEnvironmentsPatch

    -- * Request Lenses
    , acepPath
    , acepFingerprint
    , acepPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.patch@ method which the
-- 'AccountsContainersEnvironmentsPatch' request conforms to.
type AccountsContainersEnvironmentsPatchResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Environment :>
                 Patch '[JSON] Environment

-- | Updates a GTM Environment. This method supports patch semantics.
--
-- /See:/ 'accountsContainersEnvironmentsPatch' smart constructor.
data AccountsContainersEnvironmentsPatch =
  AccountsContainersEnvironmentsPatch'
    { _acepPath        :: !Text
    , _acepFingerprint :: !(Maybe Text)
    , _acepPayload     :: !Environment
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersEnvironmentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acepPath'
--
-- * 'acepFingerprint'
--
-- * 'acepPayload'
accountsContainersEnvironmentsPatch
    :: Text -- ^ 'acepPath'
    -> Environment -- ^ 'acepPayload'
    -> AccountsContainersEnvironmentsPatch
accountsContainersEnvironmentsPatch pAcepPath_ pAcepPayload_ =
  AccountsContainersEnvironmentsPatch'
    { _acepPath = pAcepPath_
    , _acepFingerprint = Nothing
    , _acepPayload = pAcepPayload_
    }

-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
acepPath :: Lens' AccountsContainersEnvironmentsPatch Text
acepPath = lens _acepPath (\ s a -> s{_acepPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- environment in storage.
acepFingerprint :: Lens' AccountsContainersEnvironmentsPatch (Maybe Text)
acepFingerprint
  = lens _acepFingerprint
      (\ s a -> s{_acepFingerprint = a})

-- | Multipart request metadata.
acepPayload :: Lens' AccountsContainersEnvironmentsPatch Environment
acepPayload
  = lens _acepPayload (\ s a -> s{_acepPayload = a})

instance GoogleRequest
           AccountsContainersEnvironmentsPatch
         where
        type Rs AccountsContainersEnvironmentsPatch =
             Environment
        type Scopes AccountsContainersEnvironmentsPatch =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsPatch'{..}
          = go _acepPath _acepFingerprint (Just AltJSON)
              _acepPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsPatchResource)
                      mempty
