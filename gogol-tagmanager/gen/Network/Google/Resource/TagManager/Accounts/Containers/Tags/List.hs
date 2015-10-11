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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Tags of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTagsList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.List
    (
    -- * REST Resource
      AccountsContainersTagsListResource

    -- * Creating a Request
    , accountsContainersTagsList'
    , AccountsContainersTagsList'

    -- * Request Lenses
    , actlcQuotaUser
    , actlcPrettyPrint
    , actlcContainerId
    , actlcUserIP
    , actlcAccountId
    , actlcKey
    , actlcOAuthToken
    , actlcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTagsList@ method which the
-- 'AccountsContainersTagsList'' request conforms to.
type AccountsContainersTagsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTagsResponse

-- | Lists all GTM Tags of a Container.
--
-- /See:/ 'accountsContainersTagsList'' smart constructor.
data AccountsContainersTagsList' = AccountsContainersTagsList'
    { _actlcQuotaUser   :: !(Maybe Text)
    , _actlcPrettyPrint :: !Bool
    , _actlcContainerId :: !Text
    , _actlcUserIP      :: !(Maybe Text)
    , _actlcAccountId   :: !Text
    , _actlcKey         :: !(Maybe AuthKey)
    , _actlcOAuthToken  :: !(Maybe OAuthToken)
    , _actlcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actlcQuotaUser'
--
-- * 'actlcPrettyPrint'
--
-- * 'actlcContainerId'
--
-- * 'actlcUserIP'
--
-- * 'actlcAccountId'
--
-- * 'actlcKey'
--
-- * 'actlcOAuthToken'
--
-- * 'actlcFields'
accountsContainersTagsList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTagsList'
accountsContainersTagsList' pActlcContainerId_ pActlcAccountId_ =
    AccountsContainersTagsList'
    { _actlcQuotaUser = Nothing
    , _actlcPrettyPrint = True
    , _actlcContainerId = pActlcContainerId_
    , _actlcUserIP = Nothing
    , _actlcAccountId = pActlcAccountId_
    , _actlcKey = Nothing
    , _actlcOAuthToken = Nothing
    , _actlcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actlcQuotaUser :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcQuotaUser
  = lens _actlcQuotaUser
      (\ s a -> s{_actlcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actlcPrettyPrint :: Lens' AccountsContainersTagsList' Bool
actlcPrettyPrint
  = lens _actlcPrettyPrint
      (\ s a -> s{_actlcPrettyPrint = a})

-- | The GTM Container ID.
actlcContainerId :: Lens' AccountsContainersTagsList' Text
actlcContainerId
  = lens _actlcContainerId
      (\ s a -> s{_actlcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actlcUserIP :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcUserIP
  = lens _actlcUserIP (\ s a -> s{_actlcUserIP = a})

-- | The GTM Account ID.
actlcAccountId :: Lens' AccountsContainersTagsList' Text
actlcAccountId
  = lens _actlcAccountId
      (\ s a -> s{_actlcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actlcKey :: Lens' AccountsContainersTagsList' (Maybe AuthKey)
actlcKey = lens _actlcKey (\ s a -> s{_actlcKey = a})

-- | OAuth 2.0 token for the current user.
actlcOAuthToken :: Lens' AccountsContainersTagsList' (Maybe OAuthToken)
actlcOAuthToken
  = lens _actlcOAuthToken
      (\ s a -> s{_actlcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actlcFields :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcFields
  = lens _actlcFields (\ s a -> s{_actlcFields = a})

instance GoogleAuth AccountsContainersTagsList' where
        _AuthKey = actlcKey . _Just
        _AuthToken = actlcOAuthToken . _Just

instance GoogleRequest AccountsContainersTagsList'
         where
        type Rs AccountsContainersTagsList' =
             ListTagsResponse
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersTagsList'{..}
          = go _actlcAccountId _actlcContainerId
              _actlcQuotaUser
              (Just _actlcPrettyPrint)
              _actlcUserIP
              _actlcFields
              _actlcKey
              _actlcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsContainersTagsListResource)
                      rq
