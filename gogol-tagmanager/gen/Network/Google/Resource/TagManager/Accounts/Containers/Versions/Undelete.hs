{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undeletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsUndelete@.
module TagManager.Accounts.Containers.Versions.Undelete
    (
    -- * REST Resource
      AccountsContainersVersionsUndeleteAPI

    -- * Creating a Request
    , accountsContainersVersionsUndelete
    , AccountsContainersVersionsUndelete

    -- * Request Lenses
    , acvucQuotaUser
    , acvucPrettyPrint
    , acvucContainerId
    , acvucUserIp
    , acvucContainerVersionId
    , acvucAccountId
    , acvucKey
    , acvucOauthToken
    , acvucFields
    , acvucAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsUndelete@ which the
-- 'AccountsContainersVersionsUndelete' request conforms to.
type AccountsContainersVersionsUndeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 "undelete" :> Post '[JSON] ContainerVersion

-- | Undeletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsUndelete' smart constructor.
data AccountsContainersVersionsUndelete = AccountsContainersVersionsUndelete
    { _acvucQuotaUser          :: !(Maybe Text)
    , _acvucPrettyPrint        :: !Bool
    , _acvucContainerId        :: !Text
    , _acvucUserIp             :: !(Maybe Text)
    , _acvucContainerVersionId :: !Text
    , _acvucAccountId          :: !Text
    , _acvucKey                :: !(Maybe Text)
    , _acvucOauthToken         :: !(Maybe Text)
    , _acvucFields             :: !(Maybe Text)
    , _acvucAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvucQuotaUser'
--
-- * 'acvucPrettyPrint'
--
-- * 'acvucContainerId'
--
-- * 'acvucUserIp'
--
-- * 'acvucContainerVersionId'
--
-- * 'acvucAccountId'
--
-- * 'acvucKey'
--
-- * 'acvucOauthToken'
--
-- * 'acvucFields'
--
-- * 'acvucAlt'
accountsContainersVersionsUndelete
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUndelete
accountsContainersVersionsUndelete pAcvucContainerId_ pAcvucContainerVersionId_ pAcvucAccountId_ =
    AccountsContainersVersionsUndelete
    { _acvucQuotaUser = Nothing
    , _acvucPrettyPrint = True
    , _acvucContainerId = pAcvucContainerId_
    , _acvucUserIp = Nothing
    , _acvucContainerVersionId = pAcvucContainerVersionId_
    , _acvucAccountId = pAcvucAccountId_
    , _acvucKey = Nothing
    , _acvucOauthToken = Nothing
    , _acvucFields = Nothing
    , _acvucAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvucQuotaUser :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvucQuotaUser
  = lens _acvucQuotaUser
      (\ s a -> s{_acvucQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvucPrettyPrint :: Lens' AccountsContainersVersionsUndelete' Bool
acvucPrettyPrint
  = lens _acvucPrettyPrint
      (\ s a -> s{_acvucPrettyPrint = a})

-- | The GTM Container ID.
acvucContainerId :: Lens' AccountsContainersVersionsUndelete' Text
acvucContainerId
  = lens _acvucContainerId
      (\ s a -> s{_acvucContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvucUserIp :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvucUserIp
  = lens _acvucUserIp (\ s a -> s{_acvucUserIp = a})

-- | The GTM Container Version ID.
acvucContainerVersionId :: Lens' AccountsContainersVersionsUndelete' Text
acvucContainerVersionId
  = lens _acvucContainerVersionId
      (\ s a -> s{_acvucContainerVersionId = a})

-- | The GTM Account ID.
acvucAccountId :: Lens' AccountsContainersVersionsUndelete' Text
acvucAccountId
  = lens _acvucAccountId
      (\ s a -> s{_acvucAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvucKey :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvucKey = lens _acvucKey (\ s a -> s{_acvucKey = a})

-- | OAuth 2.0 token for the current user.
acvucOauthToken :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvucOauthToken
  = lens _acvucOauthToken
      (\ s a -> s{_acvucOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvucFields :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvucFields
  = lens _acvucFields (\ s a -> s{_acvucFields = a})

-- | Data format for the response.
acvucAlt :: Lens' AccountsContainersVersionsUndelete' Text
acvucAlt = lens _acvucAlt (\ s a -> s{_acvucAlt = a})

instance GoogleRequest
         AccountsContainersVersionsUndelete' where
        type Rs AccountsContainersVersionsUndelete' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsUndelete{..}
          = go _acvucQuotaUser _acvucPrettyPrint
              _acvucContainerId
              _acvucUserIp
              _acvucContainerVersionId
              _acvucAccountId
              _acvucKey
              _acvucOauthToken
              _acvucFields
              _acvucAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsUndeleteAPI)
                      r
                      u
