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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.publish@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
    (
    -- * REST Resource
      AccountsContainersVersionsPublishResource

    -- * Creating a Request
    , accountsContainersVersionsPublish
    , AccountsContainersVersionsPublish

    -- * Request Lenses
    , acvpContainerId
    , acvpFingerprint
    , acvpContainerVersionId
    , acvpAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.publish@ method which the
-- 'AccountsContainersVersionsPublish' request conforms to.
type AccountsContainersVersionsPublishResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           Capture "accountId" Text :>
             "containers" :>
               Capture "containerId" Text :>
                 "versions" :>
                   Capture "containerVersionId" Text :>
                     "publish" :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] PublishContainerVersionResponse

-- | Publishes a Container Version.
--
-- /See:/ 'accountsContainersVersionsPublish' smart constructor.
data AccountsContainersVersionsPublish = AccountsContainersVersionsPublish
    { _acvpContainerId        :: !Text
    , _acvpFingerprint        :: !(Maybe Text)
    , _acvpContainerVersionId :: !Text
    , _acvpAccountId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvpContainerId'
--
-- * 'acvpFingerprint'
--
-- * 'acvpContainerVersionId'
--
-- * 'acvpAccountId'
accountsContainersVersionsPublish
    :: Text -- ^ 'acvpContainerId'
    -> Text -- ^ 'acvpContainerVersionId'
    -> Text -- ^ 'acvpAccountId'
    -> AccountsContainersVersionsPublish
accountsContainersVersionsPublish pAcvpContainerId_ pAcvpContainerVersionId_ pAcvpAccountId_ =
    AccountsContainersVersionsPublish
    { _acvpContainerId = pAcvpContainerId_
    , _acvpFingerprint = Nothing
    , _acvpContainerVersionId = pAcvpContainerVersionId_
    , _acvpAccountId = pAcvpAccountId_
    }

-- | The GTM Container ID.
acvpContainerId :: Lens' AccountsContainersVersionsPublish Text
acvpContainerId
  = lens _acvpContainerId
      (\ s a -> s{_acvpContainerId = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acvpFingerprint :: Lens' AccountsContainersVersionsPublish (Maybe Text)
acvpFingerprint
  = lens _acvpFingerprint
      (\ s a -> s{_acvpFingerprint = a})

-- | The GTM Container Version ID.
acvpContainerVersionId :: Lens' AccountsContainersVersionsPublish Text
acvpContainerVersionId
  = lens _acvpContainerVersionId
      (\ s a -> s{_acvpContainerVersionId = a})

-- | The GTM Account ID.
acvpAccountId :: Lens' AccountsContainersVersionsPublish Text
acvpAccountId
  = lens _acvpAccountId
      (\ s a -> s{_acvpAccountId = a})

instance GoogleRequest
         AccountsContainersVersionsPublish where
        type Rs AccountsContainersVersionsPublish =
             PublishContainerVersionResponse
        type Scopes AccountsContainersVersionsPublish =
             '["https://www.googleapis.com/auth/tagmanager.publish"]
        requestClient AccountsContainersVersionsPublish{..}
          = go _acvpAccountId _acvpContainerId
              _acvpContainerVersionId
              _acvpFingerprint
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsPublishResource)
                      mempty
