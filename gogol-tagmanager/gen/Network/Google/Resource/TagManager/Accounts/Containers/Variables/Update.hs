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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
    (
    -- * REST Resource
      AccountsContainersVariablesUpdateResource

    -- * Creating a Request
    , accountsContainersVariablesUpdate
    , AccountsContainersVariablesUpdate

    -- * Request Lenses
    , acvuContainerId
    , acvuFingerprint
    , acvuVariableId
    , acvuPayload
    , acvuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.variables.update@ method which the
-- 'AccountsContainersVariablesUpdate' request conforms to.
type AccountsContainersVariablesUpdateResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "variables" :>
                   Capture "variableId" Text :>
                     QueryParam "fingerprint" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Variable :> Put '[JSON] Variable

-- | Updates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesUpdate' smart constructor.
data AccountsContainersVariablesUpdate = AccountsContainersVariablesUpdate
    { _acvuContainerId :: !Text
    , _acvuFingerprint :: !(Maybe Text)
    , _acvuVariableId  :: !Text
    , _acvuPayload     :: !Variable
    , _acvuAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvuContainerId'
--
-- * 'acvuFingerprint'
--
-- * 'acvuVariableId'
--
-- * 'acvuPayload'
--
-- * 'acvuAccountId'
accountsContainersVariablesUpdate
    :: Text -- ^ 'acvuContainerId'
    -> Text -- ^ 'acvuVariableId'
    -> Variable -- ^ 'acvuPayload'
    -> Text -- ^ 'acvuAccountId'
    -> AccountsContainersVariablesUpdate
accountsContainersVariablesUpdate pAcvuContainerId_ pAcvuVariableId_ pAcvuPayload_ pAcvuAccountId_ =
    AccountsContainersVariablesUpdate
    { _acvuContainerId = pAcvuContainerId_
    , _acvuFingerprint = Nothing
    , _acvuVariableId = pAcvuVariableId_
    , _acvuPayload = pAcvuPayload_
    , _acvuAccountId = pAcvuAccountId_
    }

-- | The GTM Container ID.
acvuContainerId :: Lens' AccountsContainersVariablesUpdate Text
acvuContainerId
  = lens _acvuContainerId
      (\ s a -> s{_acvuContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
acvuFingerprint :: Lens' AccountsContainersVariablesUpdate (Maybe Text)
acvuFingerprint
  = lens _acvuFingerprint
      (\ s a -> s{_acvuFingerprint = a})

-- | The GTM Variable ID.
acvuVariableId :: Lens' AccountsContainersVariablesUpdate Text
acvuVariableId
  = lens _acvuVariableId
      (\ s a -> s{_acvuVariableId = a})

-- | Multipart request metadata.
acvuPayload :: Lens' AccountsContainersVariablesUpdate Variable
acvuPayload
  = lens _acvuPayload (\ s a -> s{_acvuPayload = a})

-- | The GTM Account ID.
acvuAccountId :: Lens' AccountsContainersVariablesUpdate Text
acvuAccountId
  = lens _acvuAccountId
      (\ s a -> s{_acvuAccountId = a})

instance GoogleRequest
         AccountsContainersVariablesUpdate where
        type Rs AccountsContainersVariablesUpdate = Variable
        requestClient AccountsContainersVariablesUpdate{..}
          = go _acvuAccountId _acvuContainerId _acvuVariableId
              _acvuFingerprint
              (Just AltJSON)
              _acvuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesUpdateResource)
                      mempty
