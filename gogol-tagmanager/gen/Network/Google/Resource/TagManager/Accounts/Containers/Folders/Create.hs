{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersFoldersCreate@.
module TagManager.Accounts.Containers.Folders.Create
    (
    -- * REST Resource
      AccountsContainersFoldersCreateAPI

    -- * Creating a Request
    , accountsContainersFoldersCreate
    , AccountsContainersFoldersCreate

    -- * Request Lenses
    , acfcQuotaUser
    , acfcPrettyPrint
    , acfcContainerId
    , acfcUserIp
    , acfcAccountId
    , acfcKey
    , acfcOauthToken
    , acfcFields
    , acfcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersFoldersCreate@ which the
-- 'AccountsContainersFoldersCreate' request conforms to.
type AccountsContainersFoldersCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :> Post '[JSON] Folder

-- | Creates a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersCreate' smart constructor.
data AccountsContainersFoldersCreate = AccountsContainersFoldersCreate
    { _acfcQuotaUser   :: !(Maybe Text)
    , _acfcPrettyPrint :: !Bool
    , _acfcContainerId :: !Text
    , _acfcUserIp      :: !(Maybe Text)
    , _acfcAccountId   :: !Text
    , _acfcKey         :: !(Maybe Text)
    , _acfcOauthToken  :: !(Maybe Text)
    , _acfcFields      :: !(Maybe Text)
    , _acfcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfcQuotaUser'
--
-- * 'acfcPrettyPrint'
--
-- * 'acfcContainerId'
--
-- * 'acfcUserIp'
--
-- * 'acfcAccountId'
--
-- * 'acfcKey'
--
-- * 'acfcOauthToken'
--
-- * 'acfcFields'
--
-- * 'acfcAlt'
accountsContainersFoldersCreate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersCreate
accountsContainersFoldersCreate pAcfcContainerId_ pAcfcAccountId_ =
    AccountsContainersFoldersCreate
    { _acfcQuotaUser = Nothing
    , _acfcPrettyPrint = True
    , _acfcContainerId = pAcfcContainerId_
    , _acfcUserIp = Nothing
    , _acfcAccountId = pAcfcAccountId_
    , _acfcKey = Nothing
    , _acfcOauthToken = Nothing
    , _acfcFields = Nothing
    , _acfcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfcQuotaUser :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcQuotaUser
  = lens _acfcQuotaUser
      (\ s a -> s{_acfcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfcPrettyPrint :: Lens' AccountsContainersFoldersCreate' Bool
acfcPrettyPrint
  = lens _acfcPrettyPrint
      (\ s a -> s{_acfcPrettyPrint = a})

-- | The GTM Container ID.
acfcContainerId :: Lens' AccountsContainersFoldersCreate' Text
acfcContainerId
  = lens _acfcContainerId
      (\ s a -> s{_acfcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfcUserIp :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcUserIp
  = lens _acfcUserIp (\ s a -> s{_acfcUserIp = a})

-- | The GTM Account ID.
acfcAccountId :: Lens' AccountsContainersFoldersCreate' Text
acfcAccountId
  = lens _acfcAccountId
      (\ s a -> s{_acfcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfcKey :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcKey = lens _acfcKey (\ s a -> s{_acfcKey = a})

-- | OAuth 2.0 token for the current user.
acfcOauthToken :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcOauthToken
  = lens _acfcOauthToken
      (\ s a -> s{_acfcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfcFields :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcFields
  = lens _acfcFields (\ s a -> s{_acfcFields = a})

-- | Data format for the response.
acfcAlt :: Lens' AccountsContainersFoldersCreate' Text
acfcAlt = lens _acfcAlt (\ s a -> s{_acfcAlt = a})

instance GoogleRequest
         AccountsContainersFoldersCreate' where
        type Rs AccountsContainersFoldersCreate' = Folder
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersCreate{..}
          = go _acfcQuotaUser _acfcPrettyPrint _acfcContainerId
              _acfcUserIp
              _acfcAccountId
              _acfcKey
              _acfcOauthToken
              _acfcFields
              _acfcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersFoldersCreateAPI)
                      r
                      u
