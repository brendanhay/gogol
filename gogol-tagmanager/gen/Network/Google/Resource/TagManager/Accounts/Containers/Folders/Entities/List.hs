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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all entities in a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersEntitiesList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
    (
    -- * REST Resource
      AccountsContainersFoldersEntitiesListResource

    -- * Creating a Request
    , accountsContainersFoldersEntitiesList'
    , AccountsContainersFoldersEntitiesList'

    -- * Request Lenses
    , acfelQuotaUser
    , acfelPrettyPrint
    , acfelContainerId
    , acfelUserIP
    , acfelFolderId
    , acfelAccountId
    , acfelKey
    , acfelOAuthToken
    , acfelFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersEntitiesList@ method which the
-- 'AccountsContainersFoldersEntitiesList'' request conforms to.
type AccountsContainersFoldersEntitiesListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :>
                 "entities" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] FolderEntities

-- | List all entities in a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersEntitiesList'' smart constructor.
data AccountsContainersFoldersEntitiesList' = AccountsContainersFoldersEntitiesList'
    { _acfelQuotaUser   :: !(Maybe Text)
    , _acfelPrettyPrint :: !Bool
    , _acfelContainerId :: !Text
    , _acfelUserIP      :: !(Maybe Text)
    , _acfelFolderId    :: !Text
    , _acfelAccountId   :: !Text
    , _acfelKey         :: !(Maybe AuthKey)
    , _acfelOAuthToken  :: !(Maybe OAuthToken)
    , _acfelFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersEntitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfelQuotaUser'
--
-- * 'acfelPrettyPrint'
--
-- * 'acfelContainerId'
--
-- * 'acfelUserIP'
--
-- * 'acfelFolderId'
--
-- * 'acfelAccountId'
--
-- * 'acfelKey'
--
-- * 'acfelOAuthToken'
--
-- * 'acfelFields'
accountsContainersFoldersEntitiesList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersEntitiesList'
accountsContainersFoldersEntitiesList' pAcfelContainerId_ pAcfelFolderId_ pAcfelAccountId_ =
    AccountsContainersFoldersEntitiesList'
    { _acfelQuotaUser = Nothing
    , _acfelPrettyPrint = True
    , _acfelContainerId = pAcfelContainerId_
    , _acfelUserIP = Nothing
    , _acfelFolderId = pAcfelFolderId_
    , _acfelAccountId = pAcfelAccountId_
    , _acfelKey = Nothing
    , _acfelOAuthToken = Nothing
    , _acfelFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfelQuotaUser :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelQuotaUser
  = lens _acfelQuotaUser
      (\ s a -> s{_acfelQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfelPrettyPrint :: Lens' AccountsContainersFoldersEntitiesList' Bool
acfelPrettyPrint
  = lens _acfelPrettyPrint
      (\ s a -> s{_acfelPrettyPrint = a})

-- | The GTM Container ID.
acfelContainerId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelContainerId
  = lens _acfelContainerId
      (\ s a -> s{_acfelContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfelUserIP :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelUserIP
  = lens _acfelUserIP (\ s a -> s{_acfelUserIP = a})

-- | The GTM Folder ID.
acfelFolderId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelFolderId
  = lens _acfelFolderId
      (\ s a -> s{_acfelFolderId = a})

-- | The GTM Account ID.
acfelAccountId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelAccountId
  = lens _acfelAccountId
      (\ s a -> s{_acfelAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfelKey :: Lens' AccountsContainersFoldersEntitiesList' (Maybe AuthKey)
acfelKey = lens _acfelKey (\ s a -> s{_acfelKey = a})

-- | OAuth 2.0 token for the current user.
acfelOAuthToken :: Lens' AccountsContainersFoldersEntitiesList' (Maybe OAuthToken)
acfelOAuthToken
  = lens _acfelOAuthToken
      (\ s a -> s{_acfelOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfelFields :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelFields
  = lens _acfelFields (\ s a -> s{_acfelFields = a})

instance GoogleAuth
         AccountsContainersFoldersEntitiesList' where
        _AuthKey = acfelKey . _Just
        _AuthToken = acfelOAuthToken . _Just

instance GoogleRequest
         AccountsContainersFoldersEntitiesList' where
        type Rs AccountsContainersFoldersEntitiesList' =
             FolderEntities
        request = requestWith tagManagerRequest
        requestWith rq
          AccountsContainersFoldersEntitiesList'{..}
          = go _acfelAccountId _acfelContainerId _acfelFolderId
              _acfelQuotaUser
              (Just _acfelPrettyPrint)
              _acfelUserIP
              _acfelFields
              _acfelKey
              _acfelOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersFoldersEntitiesListResource)
                      rq
