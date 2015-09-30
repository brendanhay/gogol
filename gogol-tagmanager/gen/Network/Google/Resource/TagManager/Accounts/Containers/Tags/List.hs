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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Tags of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTagsList@.
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
    , actlcUserIp
    , actlcAccountId
    , actlcKey
    , actlcOauthToken
    , actlcFields
    , actlcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTagsList@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] ListTagsResponse

-- | Lists all GTM Tags of a Container.
--
-- /See:/ 'accountsContainersTagsList'' smart constructor.
data AccountsContainersTagsList' = AccountsContainersTagsList'
    { _actlcQuotaUser   :: !(Maybe Text)
    , _actlcPrettyPrint :: !Bool
    , _actlcContainerId :: !Text
    , _actlcUserIp      :: !(Maybe Text)
    , _actlcAccountId   :: !Text
    , _actlcKey         :: !(Maybe Text)
    , _actlcOauthToken  :: !(Maybe Text)
    , _actlcFields      :: !(Maybe Text)
    , _actlcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'actlcUserIp'
--
-- * 'actlcAccountId'
--
-- * 'actlcKey'
--
-- * 'actlcOauthToken'
--
-- * 'actlcFields'
--
-- * 'actlcAlt'
accountsContainersTagsList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTagsList'
accountsContainersTagsList' pActlcContainerId_ pActlcAccountId_ =
    AccountsContainersTagsList'
    { _actlcQuotaUser = Nothing
    , _actlcPrettyPrint = True
    , _actlcContainerId = pActlcContainerId_
    , _actlcUserIp = Nothing
    , _actlcAccountId = pActlcAccountId_
    , _actlcKey = Nothing
    , _actlcOauthToken = Nothing
    , _actlcFields = Nothing
    , _actlcAlt = JSON
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
actlcUserIp :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcUserIp
  = lens _actlcUserIp (\ s a -> s{_actlcUserIp = a})

-- | The GTM Account ID.
actlcAccountId :: Lens' AccountsContainersTagsList' Text
actlcAccountId
  = lens _actlcAccountId
      (\ s a -> s{_actlcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actlcKey :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcKey = lens _actlcKey (\ s a -> s{_actlcKey = a})

-- | OAuth 2.0 token for the current user.
actlcOauthToken :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcOauthToken
  = lens _actlcOauthToken
      (\ s a -> s{_actlcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actlcFields :: Lens' AccountsContainersTagsList' (Maybe Text)
actlcFields
  = lens _actlcFields (\ s a -> s{_actlcFields = a})

-- | Data format for the response.
actlcAlt :: Lens' AccountsContainersTagsList' Alt
actlcAlt = lens _actlcAlt (\ s a -> s{_actlcAlt = a})

instance GoogleRequest AccountsContainersTagsList'
         where
        type Rs AccountsContainersTagsList' =
             ListTagsResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersTagsList'{..}
          = go _actlcQuotaUser (Just _actlcPrettyPrint)
              _actlcContainerId
              _actlcUserIp
              _actlcAccountId
              _actlcKey
              _actlcOauthToken
              _actlcFields
              (Just _actlcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsListResource)
                      r
                      u
