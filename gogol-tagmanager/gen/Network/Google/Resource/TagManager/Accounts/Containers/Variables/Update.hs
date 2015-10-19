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
-- Copyright   : (c) 2015 Brendan Hay
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
    , accountsContainersVariablesUpdate'
    , AccountsContainersVariablesUpdate'

    -- * Request Lenses
    , aContainerId
    , aFingerprint
    , aVariableId
    , aPayload
    , aAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.variables.update@ method which the
-- 'AccountsContainersVariablesUpdate'' request conforms to.
type AccountsContainersVariablesUpdateResource =
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
-- /See:/ 'accountsContainersVariablesUpdate'' smart constructor.
data AccountsContainersVariablesUpdate' = AccountsContainersVariablesUpdate'
    { _aContainerId :: !Text
    , _aFingerprint :: !(Maybe Text)
    , _aVariableId  :: !Text
    , _aPayload     :: !Variable
    , _aAccountId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aContainerId'
--
-- * 'aFingerprint'
--
-- * 'aVariableId'
--
-- * 'aPayload'
--
-- * 'aAccountId'
accountsContainersVariablesUpdate'
    :: Text -- ^ 'aContainerId'
    -> Text -- ^ 'aVariableId'
    -> Variable -- ^ 'aPayload'
    -> Text -- ^ 'aAccountId'
    -> AccountsContainersVariablesUpdate'
accountsContainersVariablesUpdate' pAContainerId_ pAVariableId_ pAPayload_ pAAccountId_ =
    AccountsContainersVariablesUpdate'
    { _aContainerId = pAContainerId_
    , _aFingerprint = Nothing
    , _aVariableId = pAVariableId_
    , _aPayload = pAPayload_
    , _aAccountId = pAAccountId_
    }

-- | The GTM Container ID.
aContainerId :: Lens' AccountsContainersVariablesUpdate' Text
aContainerId
  = lens _aContainerId (\ s a -> s{_aContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
aFingerprint :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aFingerprint
  = lens _aFingerprint (\ s a -> s{_aFingerprint = a})

-- | The GTM Variable ID.
aVariableId :: Lens' AccountsContainersVariablesUpdate' Text
aVariableId
  = lens _aVariableId (\ s a -> s{_aVariableId = a})

-- | Multipart request metadata.
aPayload :: Lens' AccountsContainersVariablesUpdate' Variable
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | The GTM Account ID.
aAccountId :: Lens' AccountsContainersVariablesUpdate' Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

instance GoogleRequest
         AccountsContainersVariablesUpdate' where
        type Rs AccountsContainersVariablesUpdate' = Variable
        requestClient AccountsContainersVariablesUpdate'{..}
          = go _aAccountId _aContainerId _aVariableId
              _aFingerprint
              (Just AltJSON)
              _aPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVariablesUpdateResource)
                      mempty
