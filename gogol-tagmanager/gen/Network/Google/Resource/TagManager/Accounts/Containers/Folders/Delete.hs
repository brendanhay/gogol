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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Delete
    (
    -- * REST Resource
      AccountsContainersFoldersDeleteResource

    -- * Creating a Request
    , accountsContainersFoldersDelete'
    , AccountsContainersFoldersDelete'

    -- * Request Lenses
    , acfdQuotaUser
    , acfdPrettyPrint
    , acfdContainerId
    , acfdUserIP
    , acfdFolderId
    , acfdAccountId
    , acfdKey
    , acfdOAuthToken
    , acfdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersDelete@ which the
-- 'AccountsContainersFoldersDelete'' request conforms to.
type AccountsContainersFoldersDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersDelete'' smart constructor.
data AccountsContainersFoldersDelete' = AccountsContainersFoldersDelete'
    { _acfdQuotaUser   :: !(Maybe Text)
    , _acfdPrettyPrint :: !Bool
    , _acfdContainerId :: !Text
    , _acfdUserIP      :: !(Maybe Text)
    , _acfdFolderId    :: !Text
    , _acfdAccountId   :: !Text
    , _acfdKey         :: !(Maybe Key)
    , _acfdOAuthToken  :: !(Maybe OAuthToken)
    , _acfdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'acfdUserIP'
--
-- * 'acfdFolderId'
--
-- * 'acfdAccountId'
--
-- * 'acfdKey'
--
-- * 'acfdOAuthToken'
--
-- * 'acfdFields'
accountsContainersFoldersDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersDelete'
accountsContainersFoldersDelete' pAcfdContainerId_ pAcfdFolderId_ pAcfdAccountId_ =
    AccountsContainersFoldersDelete'
    { _acfdQuotaUser = Nothing
    , _acfdPrettyPrint = True
    , _acfdContainerId = pAcfdContainerId_
    , _acfdUserIP = Nothing
    , _acfdFolderId = pAcfdFolderId_
    , _acfdAccountId = pAcfdAccountId_
    , _acfdKey = Nothing
    , _acfdOAuthToken = Nothing
    , _acfdFields = Nothing
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
acfdUserIP :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdUserIP
  = lens _acfdUserIP (\ s a -> s{_acfdUserIP = a})

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
acfdKey :: Lens' AccountsContainersFoldersDelete' (Maybe Key)
acfdKey = lens _acfdKey (\ s a -> s{_acfdKey = a})

-- | OAuth 2.0 token for the current user.
acfdOAuthToken :: Lens' AccountsContainersFoldersDelete' (Maybe OAuthToken)
acfdOAuthToken
  = lens _acfdOAuthToken
      (\ s a -> s{_acfdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfdFields :: Lens' AccountsContainersFoldersDelete' (Maybe Text)
acfdFields
  = lens _acfdFields (\ s a -> s{_acfdFields = a})

instance GoogleAuth AccountsContainersFoldersDelete'
         where
        authKey = acfdKey . _Just
        authToken = acfdOAuthToken . _Just

instance GoogleRequest
         AccountsContainersFoldersDelete' where
        type Rs AccountsContainersFoldersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersDelete'{..}
          = go _acfdAccountId _acfdContainerId _acfdFolderId
              _acfdQuotaUser
              (Just _acfdPrettyPrint)
              _acfdUserIP
              _acfdFields
              _acfdKey
              _acfdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersFoldersDeleteResource)
                      r
                      u
