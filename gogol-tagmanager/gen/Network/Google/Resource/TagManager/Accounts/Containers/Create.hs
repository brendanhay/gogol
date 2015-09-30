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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Create
    (
    -- * REST Resource
      AccountsContainersCreateResource

    -- * Creating a Request
    , accountsContainersCreate'
    , AccountsContainersCreate'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIp
    , accAccountId
    , accKey
    , accOauthToken
    , accFields
    , accAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersCreate@ which the
-- 'AccountsContainersCreate'' request conforms to.
type AccountsContainersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Container

-- | Creates a Container.
--
-- /See:/ 'accountsContainersCreate'' smart constructor.
data AccountsContainersCreate' = AccountsContainersCreate'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIp      :: !(Maybe Text)
    , _accAccountId   :: !Text
    , _accKey         :: !(Maybe Text)
    , _accOauthToken  :: !(Maybe Text)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIp'
--
-- * 'accAccountId'
--
-- * 'accKey'
--
-- * 'accOauthToken'
--
-- * 'accFields'
--
-- * 'accAlt'
accountsContainersCreate'
    :: Text -- ^ 'accountId'
    -> AccountsContainersCreate'
accountsContainersCreate' pAccAccountId_ =
    AccountsContainersCreate'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIp = Nothing
    , _accAccountId = pAccAccountId_
    , _accKey = Nothing
    , _accOauthToken = Nothing
    , _accFields = Nothing
    , _accAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsContainersCreate' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsContainersCreate' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsContainersCreate' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | The GTM Account ID.
accAccountId :: Lens' AccountsContainersCreate' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsContainersCreate' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsContainersCreate' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsContainersCreate' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsContainersCreate' Alt
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountsContainersCreate'
         where
        type Rs AccountsContainersCreate' = Container
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersCreate'{..}
          = go _accQuotaUser (Just _accPrettyPrint) _accUserIp
              _accAccountId
              _accKey
              _accOauthToken
              _accFields
              (Just _accAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersCreateResource)
                      r
                      u
