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
-- Module      : Network.Google.Resource.TagManager.Accounts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v2/ Tag Manager API Reference> for @tagmanager.accounts.update@.
module Network.Google.Resource.TagManager.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auPath
    , auFingerprint
    , auPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "fingerprint" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a GTM Account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate = AccountsUpdate'
    { _auPath        :: !Text
    , _auFingerprint :: !(Maybe Text)
    , _auPayload     :: !Account
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auPath'
--
-- * 'auFingerprint'
--
-- * 'auPayload'
accountsUpdate
    :: Text -- ^ 'auPath'
    -> Account -- ^ 'auPayload'
    -> AccountsUpdate
accountsUpdate pAuPath_ pAuPayload_ =
    AccountsUpdate'
    { _auPath = pAuPath_
    , _auFingerprint = Nothing
    , _auPayload = pAuPayload_
    }

-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}
auPath :: Lens' AccountsUpdate Text
auPath = lens _auPath (\ s a -> s{_auPath = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- account in storage.
auFingerprint :: Lens' AccountsUpdate (Maybe Text)
auFingerprint
  = lens _auFingerprint
      (\ s a -> s{_auFingerprint = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/tagmanager.manage.accounts"]
        requestClient AccountsUpdate'{..}
          = go _auPath _auFingerprint (Just AltJSON) _auPayload
              tagManagerService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
