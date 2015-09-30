{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersFoldersDelete@.
module TagManager.Accounts.Containers.Folders.Delete
    (
    -- * REST Resource
      AccountsContainersFoldersDeleteAPI

    -- * Creating a Request
    , accountsContainersFoldersDelete
    , AccountsContainersFoldersDelete

    -- * Request Lenses
    , acfdQuotaUser
    , acfdPrettyPrint
    , acfdContainerId
    , acfdUserIp
    , acfdFolderId
    , acfdAccountId
    , acfdKey
    , acfdOauthToken
    , acfdFields
    , acfdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersFoldersDelete@ which the
-- 'AccountsContainersFoldersDelete' request conforms to.
type AccountsContainersFoldersDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :> Delete '[JSON] ()

-- | Deletes a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersDelete' smart constructor.
data AccountsContainersFoldersDelete = AccountsContainersFoldersDelete
    { _acfdQuotaUser   :: !(Maybe Text)
    , _acfdPrettyPrint :: !Bool
    , _acfdContainerId :: !Text
    , _acfdUserIp      :: !(Maybe Text)
    , _acfdFolderId    :: !Text
    , _acfdAccountId   :: !Text
    , _acfdKey         :: !(Maybe Text)
    , _acfdOauthToken  :: !(Maybe Text)
    , _acfdFields      :: !(Maybe Text)
    , _acfdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfdQuotaUser'
--
-- * 'acfdPrettyPrint'
--
-- * 'acfdContainerId'
--
-- * 'acfdUserIp'
--
-- * 'acfdFolderId'
--
-- * 'acfdAccountId'
--
-- * 'acfdKey'
--
-- * 'acfdOauthToken'
--
-- * 'acfdFields'
--
-- * 'acfdAlt'
accountsContainersFoldersDelete
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersDelete
accountsContainersFoldersDelete pAcfdContainerId_ pAcfdFolderId_ pAcfdAccountId_ =
    AccountsContainersFoldersDelete
    { _acfdQuotaUser = Nothing
    , _acfdPrettyPrint = True
    , _acfdContainerId = pAcfdContainerId_
    , _acfdUserIp = Nothing
    , _acfdFolderId = pAcfdFolderId_
    , _acfdAccountId = pAcfdAccountId_
    , _acfdKey = Nothing
    , _acfdOauthToken = Nothing
    , _acfdFields = Nothing
    , _acfdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfdQuotaUser :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdQuotaUser
  = lens _acfdQuotaUser
      (\ s a -> s{_acfdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfdPrettyPrint :: Lens' AccountsContainersFoldersDelete' Bool
acfdPrettyPrint
  = lens _acfdPrettyPrint
      (\ s a -> s{_acfdPrettyPrint = a})

-- | The GTM Container ID.
acfdContainerId :: Lens' AccountsContainersFoldersDelete' Text
acfdContainerId
  = lens _acfdContainerId
      (\ s a -> s{_acfdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfdUserIp :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdUserIp
  = lens _acfdUserIp (\ s a -> s{_acfdUserIp = a})

-- | The GTM Folder ID.
acfdFolderId :: Lens' AccountsContainersFoldersDelete' Text
acfdFolderId
  = lens _acfdFolderId (\ s a -> s{_acfdFolderId = a})

-- | The GTM Account ID.
acfdAccountId :: Lens' AccountsContainersFoldersDelete' Text
acfdAccountId
  = lens _acfdAccountId
      (\ s a -> s{_acfdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfdKey :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdKey = lens _acfdKey (\ s a -> s{_acfdKey = a})

-- | OAuth 2.0 token for the current user.
acfdOauthToken :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdOauthToken
  = lens _acfdOauthToken
      (\ s a -> s{_acfdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfdFields :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdFields
  = lens _acfdFields (\ s a -> s{_acfdFields = a})

-- | Data format for the response.
acfdAlt :: Lens' AccountsContainersFoldersDelete' Text
acfdAlt = lens _acfdAlt (\ s a -> s{_acfdAlt = a})

instance GoogleRequest
         AccountsContainersFoldersDelete' where
        type Rs AccountsContainersFoldersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersDelete{..}
          = go _acfdQuotaUser _acfdPrettyPrint _acfdContainerId
              _acfdUserIp
              _acfdFolderId
              _acfdAccountId
              _acfdKey
              _acfdOauthToken
              _acfdFields
              _acfdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersFoldersDeleteAPI)
                      r
                      u
