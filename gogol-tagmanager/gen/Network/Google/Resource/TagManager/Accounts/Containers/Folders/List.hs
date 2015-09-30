{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersFoldersList@.
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
    , acflUserIp
    , acflAccountId
    , acflKey
    , acflOauthToken
    , acflFields
    , acflAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersFoldersList@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ListFoldersResponse

-- | Lists all GTM Folders of a Container.
--
-- /See:/ 'accountsContainersFoldersList'' smart constructor.
data AccountsContainersFoldersList' = AccountsContainersFoldersList'
    { _acflQuotaUser   :: !(Maybe Text)
    , _acflPrettyPrint :: !Bool
    , _acflContainerId :: !Text
    , _acflUserIp      :: !(Maybe Text)
    , _acflAccountId   :: !Text
    , _acflKey         :: !(Maybe Text)
    , _acflOauthToken  :: !(Maybe Text)
    , _acflFields      :: !(Maybe Text)
    , _acflAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'acflUserIp'
--
-- * 'acflAccountId'
--
-- * 'acflKey'
--
-- * 'acflOauthToken'
--
-- * 'acflFields'
--
-- * 'acflAlt'
accountsContainersFoldersList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersList'
accountsContainersFoldersList' pAcflContainerId_ pAcflAccountId_ =
    AccountsContainersFoldersList'
    { _acflQuotaUser = Nothing
    , _acflPrettyPrint = True
    , _acflContainerId = pAcflContainerId_
    , _acflUserIp = Nothing
    , _acflAccountId = pAcflAccountId_
    , _acflKey = Nothing
    , _acflOauthToken = Nothing
    , _acflFields = Nothing
    , _acflAlt = JSON
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
acflUserIp :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflUserIp
  = lens _acflUserIp (\ s a -> s{_acflUserIp = a})

-- | The GTM Account ID.
acflAccountId :: Lens' AccountsContainersFoldersList' Text
acflAccountId
  = lens _acflAccountId
      (\ s a -> s{_acflAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acflKey :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflKey = lens _acflKey (\ s a -> s{_acflKey = a})

-- | OAuth 2.0 token for the current user.
acflOauthToken :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflOauthToken
  = lens _acflOauthToken
      (\ s a -> s{_acflOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acflFields :: Lens' AccountsContainersFoldersList' (Maybe Text)
acflFields
  = lens _acflFields (\ s a -> s{_acflFields = a})

-- | Data format for the response.
acflAlt :: Lens' AccountsContainersFoldersList' Alt
acflAlt = lens _acflAlt (\ s a -> s{_acflAlt = a})

instance GoogleRequest AccountsContainersFoldersList'
         where
        type Rs AccountsContainersFoldersList' =
             ListFoldersResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersList'{..}
          = go _acflQuotaUser (Just _acflPrettyPrint)
              _acflContainerId
              _acflUserIp
              _acflAccountId
              _acflKey
              _acflOauthToken
              _acflFields
              (Just _acflAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersFoldersListResource)
                      r
                      u
