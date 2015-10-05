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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Folders of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.List
    (
    -- * REST Resource
      AccountsContainersFoldersListResource

    -- * Creating a Request
    , accountsContainersFoldersList'
    , AccountsContainersFoldersList'

    -- * Request Lenses
    , acflQuotaUser
    , acflPrettyPrint
    , acflContainerId
    , acflUserIP
    , acflAccountId
    , acflKey
    , acflOAuthToken
    , acflFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersList@ which the
-- 'AccountsContainersFoldersList'' request conforms to.
type AccountsContainersFoldersListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListFoldersResponse

-- | Lists all GTM Folders of a Container.
--
-- /See:/ 'accountsContainersFoldersList'' smart constructor.
data AccountsContainersFoldersList' = AccountsContainersFoldersList'
    { _acflQuotaUser   :: !(Maybe Text)
    , _acflPrettyPrint :: !Bool
    , _acflContainerId :: !Text
    , _acflUserIP      :: !(Maybe Text)
    , _acflAccountId   :: !Text
    , _acflKey         :: !(Maybe AuthKey)
    , _acflOAuthToken  :: !(Maybe OAuthToken)
    , _acflFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acflQuotaUser'
--
-- * 'acflPrettyPrint'
--
-- * 'acflContainerId'
--
-- * 'acflUserIP'
--
-- * 'acflAccountId'
--
-- * 'acflKey'
--
-- * 'acflOAuthToken'
--
-- * 'acflFields'
accountsContainersFoldersList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersList'
accountsContainersFoldersList' pAcflContainerId_ pAcflAccountId_ =
    AccountsContainersFoldersList'
    { _acflQuotaUser = Nothing
    , _acflPrettyPrint = True
    , _acflContainerId = pAcflContainerId_
    , _acflUserIP = Nothing
    , _acflAccountId = pAcflAccountId_
    , _acflKey = Nothing
    , _acflOAuthToken = Nothing
    , _acflFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acflQuotaUser :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflQuotaUser
  = lens _acflQuotaUser
      (\ s a -> s{_acflQuotaUser = a})

-- | Returns response with indentations and line breaks.
acflPrettyPrint :: Lens' AccountsContainersFoldersList' Bool
acflPrettyPrint
  = lens _acflPrettyPrint
      (\ s a -> s{_acflPrettyPrint = a})

-- | The GTM Container ID.
acflContainerId :: Lens' AccountsContainersFoldersList' Text
acflContainerId
  = lens _acflContainerId
      (\ s a -> s{_acflContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acflUserIP :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflUserIP
  = lens _acflUserIP (\ s a -> s{_acflUserIP = a})

-- | The GTM Account ID.
acflAccountId :: Lens' AccountsContainersFoldersList' Text
acflAccountId
  = lens _acflAccountId
      (\ s a -> s{_acflAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acflKey :: Lens' AccountsContainersFoldersList' (Maybe AuthKey)
acflKey = lens _acflKey (\ s a -> s{_acflKey = a})

-- | OAuth 2.0 token for the current user.
acflOAuthToken :: Lens' AccountsContainersFoldersList' (Maybe OAuthToken)
acflOAuthToken
  = lens _acflOAuthToken
      (\ s a -> s{_acflOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acflFields :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflFields
  = lens _acflFields (\ s a -> s{_acflFields = a})

instance GoogleAuth AccountsContainersFoldersList'
         where
        authKey = acflKey . _Just
        authToken = acflOAuthToken . _Just

instance GoogleRequest AccountsContainersFoldersList'
         where
        type Rs AccountsContainersFoldersList' =
             ListFoldersResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersList'{..}
          = go _acflAccountId _acflContainerId _acflQuotaUser
              (Just _acflPrettyPrint)
              _acflUserIP
              _acflFields
              _acflKey
              _acflOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersFoldersListResource)
                      r
                      u
