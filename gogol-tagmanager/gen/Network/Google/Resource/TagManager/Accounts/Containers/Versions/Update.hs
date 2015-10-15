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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
    (
    -- * REST Resource
      AccountsContainersVersionsUpdateResource

    -- * Creating a Request
    , accountsContainersVersionsUpdate'
    , AccountsContainersVersionsUpdate'

    -- * Request Lenses
    , acvucContainerId
    , acvucFingerprint
    , acvucContainerVersionId
    , acvucPayload
    , acvucAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsUpdate@ method which the
-- 'AccountsContainersVersionsUpdate'' request conforms to.
type AccountsContainersVersionsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ContainerVersion :>
                       Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate'' smart constructor.
data AccountsContainersVersionsUpdate' = AccountsContainersVersionsUpdate'
    { _acvucContainerId        :: !Text
    , _acvucFingerprint        :: !(Maybe Text)
    , _acvucContainerVersionId :: !Text
    , _acvucPayload            :: !ContainerVersion
    , _acvucAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvucContainerId'
--
-- * 'acvucFingerprint'
--
-- * 'acvucContainerVersionId'
--
-- * 'acvucPayload'
--
-- * 'acvucAccountId'
accountsContainersVersionsUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> ContainerVersion -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUpdate'
accountsContainersVersionsUpdate' pAcvucContainerId_ pAcvucContainerVersionId_ pAcvucPayload_ pAcvucAccountId_ =
    AccountsContainersVersionsUpdate'
    { _acvucContainerId = pAcvucContainerId_
    , _acvucFingerprint = Nothing
    , _acvucContainerVersionId = pAcvucContainerVersionId_
    , _acvucPayload = pAcvucPayload_
    , _acvucAccountId = pAcvucAccountId_
    }

-- | The GTM Container ID.
acvucContainerId :: Lens' AccountsContainersVersionsUpdate' Text
acvucContainerId
  = lens _acvucContainerId
      (\ s a -> s{_acvucContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acvucFingerprint :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucFingerprint
  = lens _acvucFingerprint
      (\ s a -> s{_acvucFingerprint = a})

-- | The GTM Container Version ID.
acvucContainerVersionId :: Lens' AccountsContainersVersionsUpdate' Text
acvucContainerVersionId
  = lens _acvucContainerVersionId
      (\ s a -> s{_acvucContainerVersionId = a})

-- | Multipart request metadata.
acvucPayload :: Lens' AccountsContainersVersionsUpdate' ContainerVersion
acvucPayload
  = lens _acvucPayload (\ s a -> s{_acvucPayload = a})

-- | The GTM Account ID.
acvucAccountId :: Lens' AccountsContainersVersionsUpdate' Text
acvucAccountId
  = lens _acvucAccountId
      (\ s a -> s{_acvucAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsUpdate' where
        type Rs AccountsContainersVersionsUpdate' =
             ContainerVersion
        requestClient AccountsContainersVersionsUpdate'{..}
          = go _acvucAccountId _acvucContainerId
              _acvucContainerVersionId
              _acvucFingerprint
              (Just AltJSON)
              _acvucPayload
              tagManager
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsUpdateResource)
                      mempty
