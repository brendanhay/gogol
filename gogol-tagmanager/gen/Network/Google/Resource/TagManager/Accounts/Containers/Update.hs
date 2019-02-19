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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.containers.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Update
    (
    -- * REST Resource
      AccountsContainersUpdateResource

    -- * Creating a Request
    , accountsContainersUpdate
    , AccountsContainersUpdate

    -- * Request Lenses
    , acuPath
    , acuFingerprint
    , acuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.update@ method which the
-- 'AccountsContainersUpdate' request conforms to.
type AccountsContainersUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Container :> Put '[JSON] Container

-- | Updates a Container.
--
-- /See:/ 'accountsContainersUpdate' smart constructor.
data AccountsContainersUpdate =
  AccountsContainersUpdate'
    { _acuPath        :: !Text
    , _acuFingerprint :: !(Maybe Text)
    , _acuPayload     :: !Container
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsContainersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuPath'
--
-- * 'acuFingerprint'
--
-- * 'acuPayload'
accountsContainersUpdate
    :: Text -- ^ 'acuPath'
    -> Container -- ^ 'acuPayload'
    -> AccountsContainersUpdate
accountsContainersUpdate pAcuPath_ pAcuPayload_ =
  AccountsContainersUpdate'
    { _acuPath = pAcuPath_
    , _acuFingerprint = Nothing
    , _acuPayload = pAcuPayload_
    }

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acuPath :: Lens' AccountsContainersUpdate Text
acuPath = lens _acuPath (\ s a -> s{_acuPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container in storage.
acuFingerprint :: Lens' AccountsContainersUpdate (Maybe Text)
acuFingerprint
  = lens _acuFingerprint
      (\ s a -> s{_acuFingerprint = a})

-- | Multipart request metadata.
acuPayload :: Lens' AccountsContainersUpdate Container
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

instance GoogleRequest AccountsContainersUpdate where
        type Rs AccountsContainersUpdate = Container
        type Scopes AccountsContainersUpdate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersUpdate'{..}
          = go _acuPath _acuFingerprint (Just AltJSON)
              _acuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersUpdateResource)
                      mempty
