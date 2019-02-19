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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.environments.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Update
    (
    -- * REST Resource
      AccountsContainersEnvironmentsUpdateResource

    -- * Creating a Request
    , accountsContainersEnvironmentsUpdate
    , AccountsContainersEnvironmentsUpdate

    -- * Request Lenses
    , aceuPath
    , aceuFingerprint
    , aceuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.update@ method which the
-- 'AccountsContainersEnvironmentsUpdate' request conforms to.
type AccountsContainersEnvironmentsUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Environment :>
                 Put '[JSON] Environment

-- | Updates a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsUpdate' smart constructor.
data AccountsContainersEnvironmentsUpdate =
  AccountsContainersEnvironmentsUpdate'
    { _aceuPath        :: !Text
    , _aceuFingerprint :: !(Maybe Text)
    , _aceuPayload     :: !Environment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aceuPath'
--
-- * 'aceuFingerprint'
--
-- * 'aceuPayload'
accountsContainersEnvironmentsUpdate
    :: Text -- ^ 'aceuPath'
    -> Environment -- ^ 'aceuPayload'
    -> AccountsContainersEnvironmentsUpdate
accountsContainersEnvironmentsUpdate pAceuPath_ pAceuPayload_ =
  AccountsContainersEnvironmentsUpdate'
    { _aceuPath = pAceuPath_
    , _aceuFingerprint = Nothing
    , _aceuPayload = pAceuPayload_
    }


-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
aceuPath :: Lens' AccountsContainersEnvironmentsUpdate Text
aceuPath = lens _aceuPath (\ s a -> s{_aceuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- environment in storage.
aceuFingerprint :: Lens' AccountsContainersEnvironmentsUpdate (Maybe Text)
aceuFingerprint
  = lens _aceuFingerprint
      (\ s a -> s{_aceuFingerprint = a})

-- | Multipart request metadata.
aceuPayload :: Lens' AccountsContainersEnvironmentsUpdate Environment
aceuPayload
  = lens _aceuPayload (\ s a -> s{_aceuPayload = a})

instance GoogleRequest
           AccountsContainersEnvironmentsUpdate
         where
        type Rs AccountsContainersEnvironmentsUpdate =
             Environment
        type Scopes AccountsContainersEnvironmentsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsUpdate'{..}
          = go _aceuPath _aceuFingerprint (Just AltJSON)
              _aceuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsUpdateResource)
                      mempty
