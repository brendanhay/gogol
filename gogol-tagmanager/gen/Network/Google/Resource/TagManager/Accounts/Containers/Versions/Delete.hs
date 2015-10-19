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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
    (
    -- * REST Resource
      AccountsContainersVersionsDeleteResource

    -- * Creating a Request
    , accountsContainersVersionsDelete'
    , AccountsContainersVersionsDelete'

    -- * Request Lenses
    , acvdcContainerId
    , acvdcContainerVersionId
    , acvdcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsDelete@ method which the
-- 'AccountsContainersVersionsDelete'' request conforms to.
type AccountsContainersVersionsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsDelete'' smart constructor.
data AccountsContainersVersionsDelete' = AccountsContainersVersionsDelete'
    { _acvdcContainerId        :: !Text
    , _acvdcContainerVersionId :: !Text
    , _acvdcAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdcContainerId'
--
-- * 'acvdcContainerVersionId'
--
-- * 'acvdcAccountId'
accountsContainersVersionsDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsDelete'
accountsContainersVersionsDelete' pAcvdcContainerId_ pAcvdcContainerVersionId_ pAcvdcAccountId_ =
    AccountsContainersVersionsDelete'
    { _acvdcContainerId = pAcvdcContainerId_
    , _acvdcContainerVersionId = pAcvdcContainerVersionId_
    , _acvdcAccountId = pAcvdcAccountId_
    }

-- | The GTM Container ID.
acvdcContainerId :: Lens' AccountsContainersVersionsDelete' Text
acvdcContainerId
  = lens _acvdcContainerId
      (\ s a -> s{_acvdcContainerId = a})

-- | The GTM Container Version ID.
acvdcContainerVersionId :: Lens' AccountsContainersVersionsDelete' Text
acvdcContainerVersionId
  = lens _acvdcContainerVersionId
      (\ s a -> s{_acvdcContainerVersionId = a})

-- | The GTM Account ID.
acvdcAccountId :: Lens' AccountsContainersVersionsDelete' Text
acvdcAccountId
  = lens _acvdcAccountId
      (\ s a -> s{_acvdcAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsDelete' where
        type Rs AccountsContainersVersionsDelete' = ()
        requestClient AccountsContainersVersionsDelete'{..}
          = go _acvdcAccountId _acvdcContainerId
              _acvdcContainerVersionId
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsDeleteResource)
                      mempty
