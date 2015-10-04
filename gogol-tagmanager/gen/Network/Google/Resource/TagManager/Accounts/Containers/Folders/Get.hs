{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Get
    (
    -- * REST Resource
      AccountsContainersFoldersGetResource

    -- * Creating a Request
    , accountsContainersFoldersGet'
    , AccountsContainersFoldersGet'

    -- * Request Lenses
    , acfgQuotaUser
    , acfgPrettyPrint
    , acfgContainerId
    , acfgUserIP
    , acfgFolderId
    , acfgAccountId
    , acfgKey
    , acfgOAuthToken
    , acfgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersGet@ which the
-- 'AccountsContainersFoldersGet'' request conforms to.
type AccountsContainersFoldersGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Folder

-- | Gets a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersGet'' smart constructor.
data AccountsContainersFoldersGet' = AccountsContainersFoldersGet'
    { _acfgQuotaUser   :: !(Maybe Text)
    , _acfgPrettyPrint :: !Bool
    , _acfgContainerId :: !Text
    , _acfgUserIP      :: !(Maybe Text)
    , _acfgFolderId    :: !Text
    , _acfgAccountId   :: !Text
    , _acfgKey         :: !(Maybe Key)
    , _acfgOAuthToken  :: !(Maybe OAuthToken)
    , _acfgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfgQuotaUser'
--
-- * 'acfgPrettyPrint'
--
-- * 'acfgContainerId'
--
-- * 'acfgUserIP'
--
-- * 'acfgFolderId'
--
-- * 'acfgAccountId'
--
-- * 'acfgKey'
--
-- * 'acfgOAuthToken'
--
-- * 'acfgFields'
accountsContainersFoldersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersGet'
accountsContainersFoldersGet' pAcfgContainerId_ pAcfgFolderId_ pAcfgAccountId_ =
    AccountsContainersFoldersGet'
    { _acfgQuotaUser = Nothing
    , _acfgPrettyPrint = True
    , _acfgContainerId = pAcfgContainerId_
    , _acfgUserIP = Nothing
    , _acfgFolderId = pAcfgFolderId_
    , _acfgAccountId = pAcfgAccountId_
    , _acfgKey = Nothing
    , _acfgOAuthToken = Nothing
    , _acfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfgQuotaUser :: Lens' AccountsContainersFoldersGet' (Maybe Text)
acfgQuotaUser
  = lens _acfgQuotaUser
      (\ s a -> s{_acfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfgPrettyPrint :: Lens' AccountsContainersFoldersGet' Bool
acfgPrettyPrint
  = lens _acfgPrettyPrint
      (\ s a -> s{_acfgPrettyPrint = a})

-- | The GTM Container ID.
acfgContainerId :: Lens' AccountsContainersFoldersGet' Text
acfgContainerId
  = lens _acfgContainerId
      (\ s a -> s{_acfgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfgUserIP :: Lens' AccountsContainersFoldersGet' (Maybe Text)
acfgUserIP
  = lens _acfgUserIP (\ s a -> s{_acfgUserIP = a})

-- | The GTM Folder ID.
acfgFolderId :: Lens' AccountsContainersFoldersGet' Text
acfgFolderId
  = lens _acfgFolderId (\ s a -> s{_acfgFolderId = a})

-- | The GTM Account ID.
acfgAccountId :: Lens' AccountsContainersFoldersGet' Text
acfgAccountId
  = lens _acfgAccountId
      (\ s a -> s{_acfgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfgKey :: Lens' AccountsContainersFoldersGet' (Maybe Key)
acfgKey = lens _acfgKey (\ s a -> s{_acfgKey = a})

-- | OAuth 2.0 token for the current user.
acfgOAuthToken :: Lens' AccountsContainersFoldersGet' (Maybe OAuthToken)
acfgOAuthToken
  = lens _acfgOAuthToken
      (\ s a -> s{_acfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfgFields :: Lens' AccountsContainersFoldersGet' (Maybe Text)
acfgFields
  = lens _acfgFields (\ s a -> s{_acfgFields = a})

instance GoogleAuth AccountsContainersFoldersGet'
         where
        authKey = acfgKey . _Just
        authToken = acfgOAuthToken . _Just

instance GoogleRequest AccountsContainersFoldersGet'
         where
        type Rs AccountsContainersFoldersGet' = Folder
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersGet'{..}
          = go _acfgAccountId _acfgContainerId _acfgFolderId
              _acfgQuotaUser
              (Just _acfgPrettyPrint)
              _acfgUserIP
              _acfgFields
              _acfgKey
              _acfgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersFoldersGetResource)
                      r
                      u
