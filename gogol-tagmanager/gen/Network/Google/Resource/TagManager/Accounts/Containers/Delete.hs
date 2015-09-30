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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Delete
    (
    -- * REST Resource
      AccountsContainersDeleteResource

    -- * Creating a Request
    , accountsContainersDelete'
    , AccountsContainersDelete'

    -- * Request Lenses
    , acdQuotaUser
    , acdPrettyPrint
    , acdContainerId
    , acdUserIp
    , acdAccountId
    , acdKey
    , acdOauthToken
    , acdFields
    , acdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersDelete@ which the
-- 'AccountsContainersDelete'' request conforms to.
type AccountsContainersDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a Container.
--
-- /See:/ 'accountsContainersDelete'' smart constructor.
data AccountsContainersDelete' = AccountsContainersDelete'
    { _acdQuotaUser   :: !(Maybe Text)
    , _acdPrettyPrint :: !Bool
    , _acdContainerId :: !Text
    , _acdUserIp      :: !(Maybe Text)
    , _acdAccountId   :: !Text
    , _acdKey         :: !(Maybe Text)
    , _acdOauthToken  :: !(Maybe Text)
    , _acdFields      :: !(Maybe Text)
    , _acdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdQuotaUser'
--
-- * 'acdPrettyPrint'
--
-- * 'acdContainerId'
--
-- * 'acdUserIp'
--
-- * 'acdAccountId'
--
-- * 'acdKey'
--
-- * 'acdOauthToken'
--
-- * 'acdFields'
--
-- * 'acdAlt'
accountsContainersDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersDelete'
accountsContainersDelete' pAcdContainerId_ pAcdAccountId_ =
    AccountsContainersDelete'
    { _acdQuotaUser = Nothing
    , _acdPrettyPrint = True
    , _acdContainerId = pAcdContainerId_
    , _acdUserIp = Nothing
    , _acdAccountId = pAcdAccountId_
    , _acdKey = Nothing
    , _acdOauthToken = Nothing
    , _acdFields = Nothing
    , _acdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acdQuotaUser :: Lens' AccountsContainersDelete' (Maybe Text)
acdQuotaUser
  = lens _acdQuotaUser (\ s a -> s{_acdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acdPrettyPrint :: Lens' AccountsContainersDelete' Bool
acdPrettyPrint
  = lens _acdPrettyPrint
      (\ s a -> s{_acdPrettyPrint = a})

-- | The GTM Container ID.
acdContainerId :: Lens' AccountsContainersDelete' Text
acdContainerId
  = lens _acdContainerId
      (\ s a -> s{_acdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acdUserIp :: Lens' AccountsContainersDelete' (Maybe Text)
acdUserIp
  = lens _acdUserIp (\ s a -> s{_acdUserIp = a})

-- | The GTM Account ID.
acdAccountId :: Lens' AccountsContainersDelete' Text
acdAccountId
  = lens _acdAccountId (\ s a -> s{_acdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acdKey :: Lens' AccountsContainersDelete' (Maybe Text)
acdKey = lens _acdKey (\ s a -> s{_acdKey = a})

-- | OAuth 2.0 token for the current user.
acdOauthToken :: Lens' AccountsContainersDelete' (Maybe Text)
acdOauthToken
  = lens _acdOauthToken
      (\ s a -> s{_acdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acdFields :: Lens' AccountsContainersDelete' (Maybe Text)
acdFields
  = lens _acdFields (\ s a -> s{_acdFields = a})

-- | Data format for the response.
acdAlt :: Lens' AccountsContainersDelete' Alt
acdAlt = lens _acdAlt (\ s a -> s{_acdAlt = a})

instance GoogleRequest AccountsContainersDelete'
         where
        type Rs AccountsContainersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersDelete'{..}
          = go _acdQuotaUser (Just _acdPrettyPrint)
              _acdContainerId
              _acdUserIp
              _acdAccountId
              _acdKey
              _acdOauthToken
              _acdFields
              (Just _acdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersDeleteResource)
                      r
                      u
