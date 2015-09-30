{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsGet@.
module TagManager.Accounts.Containers.Versions.Get
    (
    -- * REST Resource
      AccountsContainersVersionsGetAPI

    -- * Creating a Request
    , accountsContainersVersionsGet
    , AccountsContainersVersionsGet

    -- * Request Lenses
    , acvgcQuotaUser
    , acvgcPrettyPrint
    , acvgcContainerId
    , acvgcUserIp
    , acvgcContainerVersionId
    , acvgcAccountId
    , acvgcKey
    , acvgcOauthToken
    , acvgcFields
    , acvgcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsGet@ which the
-- 'AccountsContainersVersionsGet' request conforms to.
type AccountsContainersVersionsGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 Get '[JSON] ContainerVersion

-- | Gets a Container Version.
--
-- /See:/ 'accountsContainersVersionsGet' smart constructor.
data AccountsContainersVersionsGet = AccountsContainersVersionsGet
    { _acvgcQuotaUser          :: !(Maybe Text)
    , _acvgcPrettyPrint        :: !Bool
    , _acvgcContainerId        :: !Text
    , _acvgcUserIp             :: !(Maybe Text)
    , _acvgcContainerVersionId :: !Text
    , _acvgcAccountId          :: !Text
    , _acvgcKey                :: !(Maybe Text)
    , _acvgcOauthToken         :: !(Maybe Text)
    , _acvgcFields             :: !(Maybe Text)
    , _acvgcAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgcQuotaUser'
--
-- * 'acvgcPrettyPrint'
--
-- * 'acvgcContainerId'
--
-- * 'acvgcUserIp'
--
-- * 'acvgcContainerVersionId'
--
-- * 'acvgcAccountId'
--
-- * 'acvgcKey'
--
-- * 'acvgcOauthToken'
--
-- * 'acvgcFields'
--
-- * 'acvgcAlt'
accountsContainersVersionsGet
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsGet
accountsContainersVersionsGet pAcvgcContainerId_ pAcvgcContainerVersionId_ pAcvgcAccountId_ =
    AccountsContainersVersionsGet
    { _acvgcQuotaUser = Nothing
    , _acvgcPrettyPrint = True
    , _acvgcContainerId = pAcvgcContainerId_
    , _acvgcUserIp = Nothing
    , _acvgcContainerVersionId = pAcvgcContainerVersionId_
    , _acvgcAccountId = pAcvgcAccountId_
    , _acvgcKey = Nothing
    , _acvgcOauthToken = Nothing
    , _acvgcFields = Nothing
    , _acvgcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvgcQuotaUser :: Lens' AccountsContainersVersionsGet' (Maybe Text)
acvgcQuotaUser
  = lens _acvgcQuotaUser
      (\ s a -> s{_acvgcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvgcPrettyPrint :: Lens' AccountsContainersVersionsGet' Bool
acvgcPrettyPrint
  = lens _acvgcPrettyPrint
      (\ s a -> s{_acvgcPrettyPrint = a})

-- | The GTM Container ID.
acvgcContainerId :: Lens' AccountsContainersVersionsGet' Text
acvgcContainerId
  = lens _acvgcContainerId
      (\ s a -> s{_acvgcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvgcUserIp :: Lens' AccountsContainersVersionsGet' (Maybe Text)
acvgcUserIp
  = lens _acvgcUserIp (\ s a -> s{_acvgcUserIp = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvgcKey :: Lens' AccountsContainersVersionsGet' (Maybe Text)
acvgcKey = lens _acvgcKey (\ s a -> s{_acvgcKey = a})

-- | OAuth 2.0 token for the current user.
acvgcOauthToken :: Lens' AccountsContainersVersionsGet' (Maybe Text)
acvgcOauthToken
  = lens _acvgcOauthToken
      (\ s a -> s{_acvgcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvgcFields :: Lens' AccountsContainersVersionsGet' (Maybe Text)
acvgcFields
  = lens _acvgcFields (\ s a -> s{_acvgcFields = a})

-- | Data format for the response.
acvgcAlt :: Lens' AccountsContainersVersionsGet' Text
acvgcAlt = lens _acvgcAlt (\ s a -> s{_acvgcAlt = a})

instance GoogleRequest AccountsContainersVersionsGet'
         where
        type Rs AccountsContainersVersionsGet' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsGet{..}
          = go _acvgcQuotaUser _acvgcPrettyPrint
              _acvgcContainerId
              _acvgcUserIp
              _acvgcContainerVersionId
              _acvgcAccountId
              _acvgcKey
              _acvgcOauthToken
              _acvgcFields
              _acvgcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVersionsGetAPI)
                      r
                      u
