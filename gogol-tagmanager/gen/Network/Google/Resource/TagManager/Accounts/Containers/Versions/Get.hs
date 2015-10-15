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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Get
    (
    -- * REST Resource
      AccountsContainersVersionsGetResource

    -- * Creating a Request
    , accountsContainersVersionsGet'
    , AccountsContainersVersionsGet'

    -- * Request Lenses
    , acvgcContainerId
    , acvgcContainerVersionId
    , acvgcAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsGet@ method which the
-- 'AccountsContainersVersionsGet'' request conforms to.
type AccountsContainersVersionsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ContainerVersion

-- | Gets a Container Version.
--
-- /See:/ 'accountsContainersVersionsGet'' smart constructor.
data AccountsContainersVersionsGet' = AccountsContainersVersionsGet'
    { _acvgcContainerId        :: !Text
    , _acvgcContainerVersionId :: !Text
    , _acvgcAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgcContainerId'
--
-- * 'acvgcContainerVersionId'
--
-- * 'acvgcAccountId'
accountsContainersVersionsGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsGet'
accountsContainersVersionsGet' pAcvgcContainerId_ pAcvgcContainerVersionId_ pAcvgcAccountId_ =
    AccountsContainersVersionsGet'
    { _acvgcContainerId = pAcvgcContainerId_
    , _acvgcContainerVersionId = pAcvgcContainerVersionId_
    , _acvgcAccountId = pAcvgcAccountId_
    }

-- | The GTM Container ID.
acvgcContainerId :: Lens' AccountsContainersVersionsGet' Text
acvgcContainerId
  = lens _acvgcContainerId
      (\ s a -> s{_acvgcContainerId = a})

-- | The GTM Container Version ID. Specify published to retrieve the
-- currently published version.
acvgcContainerVersionId :: Lens' AccountsContainersVersionsGet' Text
acvgcContainerVersionId
  = lens _acvgcContainerVersionId
      (\ s a -> s{_acvgcContainerVersionId = a})

-- | The GTM Account ID.
acvgcAccountId :: Lens' AccountsContainersVersionsGet' Text
acvgcAccountId
  = lens _acvgcAccountId
      (\ s a -> s{_acvgcAccountId = a})

instance GoogleRequest AccountsContainersVersionsGet'
         where
        type Rs AccountsContainersVersionsGet' =
             ContainerVersion
        requestClient AccountsContainersVersionsGet'{..}
          = go _acvgcAccountId _acvgcContainerId
              _acvgcContainerVersionId
              (Just AltJSON)
              tagManager
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsGetResource)
                      mempty
