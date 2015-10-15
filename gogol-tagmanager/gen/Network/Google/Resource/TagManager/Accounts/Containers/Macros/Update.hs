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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Update
    (
    -- * REST Resource
      AccountsContainersMacrosUpdateResource

    -- * Creating a Request
    , accountsContainersMacrosUpdate'
    , AccountsContainersMacrosUpdate'

    -- * Request Lenses
    , acmuContainerId
    , acmuFingerprint
    , acmuPayload
    , acmuAccountId
    , acmuMacroId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosUpdate@ method which the
-- 'AccountsContainersMacrosUpdate'' request conforms to.
type AccountsContainersMacrosUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Macro :> Put '[JSON] Macro

-- | Updates a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosUpdate'' smart constructor.
data AccountsContainersMacrosUpdate' = AccountsContainersMacrosUpdate'
    { _acmuContainerId :: !Text
    , _acmuFingerprint :: !(Maybe Text)
    , _acmuPayload     :: !Macro
    , _acmuAccountId   :: !Text
    , _acmuMacroId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmuContainerId'
--
-- * 'acmuFingerprint'
--
-- * 'acmuPayload'
--
-- * 'acmuAccountId'
--
-- * 'acmuMacroId'
accountsContainersMacrosUpdate'
    :: Text -- ^ 'containerId'
    -> Macro -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosUpdate'
accountsContainersMacrosUpdate' pAcmuContainerId_ pAcmuPayload_ pAcmuAccountId_ pAcmuMacroId_ =
    AccountsContainersMacrosUpdate'
    { _acmuContainerId = pAcmuContainerId_
    , _acmuFingerprint = Nothing
    , _acmuPayload = pAcmuPayload_
    , _acmuAccountId = pAcmuAccountId_
    , _acmuMacroId = pAcmuMacroId_
    }

-- | The GTM Container ID.
acmuContainerId :: Lens' AccountsContainersMacrosUpdate' Text
acmuContainerId
  = lens _acmuContainerId
      (\ s a -> s{_acmuContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the macro
-- in storage.
acmuFingerprint :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmuFingerprint
  = lens _acmuFingerprint
      (\ s a -> s{_acmuFingerprint = a})

-- | Multipart request metadata.
acmuPayload :: Lens' AccountsContainersMacrosUpdate' Macro
acmuPayload
  = lens _acmuPayload (\ s a -> s{_acmuPayload = a})

-- | The GTM Account ID.
acmuAccountId :: Lens' AccountsContainersMacrosUpdate' Text
acmuAccountId
  = lens _acmuAccountId
      (\ s a -> s{_acmuAccountId = a})

-- | The GTM Macro ID.
acmuMacroId :: Lens' AccountsContainersMacrosUpdate' Text
acmuMacroId
  = lens _acmuMacroId (\ s a -> s{_acmuMacroId = a})

instance GoogleRequest
         AccountsContainersMacrosUpdate' where
        type Rs AccountsContainersMacrosUpdate' = Macro
        requestClient AccountsContainersMacrosUpdate'{..}
          = go _acmuAccountId _acmuContainerId _acmuMacroId
              _acmuFingerprint
              (Just AltJSON)
              _acmuPayload
              tagManager
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersMacrosUpdateResource)
                      mempty
