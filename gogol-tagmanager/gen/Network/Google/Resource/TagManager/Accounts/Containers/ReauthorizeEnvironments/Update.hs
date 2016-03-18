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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.ReauthorizeEnvironments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Re-generates the authorization code for a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.reauthorize_environments.update@.
module Network.Google.Resource.TagManager.Accounts.Containers.ReauthorizeEnvironments.Update
    (
    -- * REST Resource
      AccountsContainersReauthorizeEnvironmentsUpdateResource

    -- * Creating a Request
    , accountsContainersReauthorizeEnvironmentsUpdate
    , AccountsContainersReauthorizeEnvironmentsUpdate

    -- * Request Lenses
    , acreuContainerId
    , acreuPayload
    , acreuAccountId
    , acreuEnvironmentId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.reauthorize_environments.update@ method which the
-- 'AccountsContainersReauthorizeEnvironmentsUpdate' request conforms to.
type AccountsContainersReauthorizeEnvironmentsUpdateResource
     =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "reauthorize_environments" :>
                   Capture "environmentId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Environment :>
                         Put '[JSON] Environment

-- | Re-generates the authorization code for a GTM Environment.
--
-- /See:/ 'accountsContainersReauthorizeEnvironmentsUpdate' smart constructor.
data AccountsContainersReauthorizeEnvironmentsUpdate = AccountsContainersReauthorizeEnvironmentsUpdate
    { _acreuContainerId   :: !Text
    , _acreuPayload       :: !Environment
    , _acreuAccountId     :: !Text
    , _acreuEnvironmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersReauthorizeEnvironmentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acreuContainerId'
--
-- * 'acreuPayload'
--
-- * 'acreuAccountId'
--
-- * 'acreuEnvironmentId'
accountsContainersReauthorizeEnvironmentsUpdate
    :: Text -- ^ 'acreuContainerId'
    -> Environment -- ^ 'acreuPayload'
    -> Text -- ^ 'acreuAccountId'
    -> Text -- ^ 'acreuEnvironmentId'
    -> AccountsContainersReauthorizeEnvironmentsUpdate
accountsContainersReauthorizeEnvironmentsUpdate pAcreuContainerId_ pAcreuPayload_ pAcreuAccountId_ pAcreuEnvironmentId_ =
    AccountsContainersReauthorizeEnvironmentsUpdate
    { _acreuContainerId = pAcreuContainerId_
    , _acreuPayload = pAcreuPayload_
    , _acreuAccountId = pAcreuAccountId_
    , _acreuEnvironmentId = pAcreuEnvironmentId_
    }

-- | The GTM Container ID.
acreuContainerId :: Lens' AccountsContainersReauthorizeEnvironmentsUpdate Text
acreuContainerId
  = lens _acreuContainerId
      (\ s a -> s{_acreuContainerId = a})

-- | Multipart request metadata.
acreuPayload :: Lens' AccountsContainersReauthorizeEnvironmentsUpdate Environment
acreuPayload
  = lens _acreuPayload (\ s a -> s{_acreuPayload = a})

-- | The GTM Account ID.
acreuAccountId :: Lens' AccountsContainersReauthorizeEnvironmentsUpdate Text
acreuAccountId
  = lens _acreuAccountId
      (\ s a -> s{_acreuAccountId = a})

-- | The GTM Environment ID.
acreuEnvironmentId :: Lens' AccountsContainersReauthorizeEnvironmentsUpdate Text
acreuEnvironmentId
  = lens _acreuEnvironmentId
      (\ s a -> s{_acreuEnvironmentId = a})

instance GoogleRequest
         AccountsContainersReauthorizeEnvironmentsUpdate where
        type Rs
               AccountsContainersReauthorizeEnvironmentsUpdate
             = Environment
        requestClient
          AccountsContainersReauthorizeEnvironmentsUpdate{..}
          = go _acreuAccountId _acreuContainerId
              _acreuEnvironmentId
              (Just AltJSON)
              _acreuPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersReauthorizeEnvironmentsUpdateResource)
                      mempty
