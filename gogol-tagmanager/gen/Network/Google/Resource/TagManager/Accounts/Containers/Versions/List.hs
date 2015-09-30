{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsList@.
module TagManager.Accounts.Containers.Versions.List
    (
    -- * REST Resource
      AccountsContainersVersionsListAPI

    -- * Creating a Request
    , accountsContainersVersionsList
    , AccountsContainersVersionsList

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accContainerId
    , accUserIp
    , accHeaders
    , accAccountId
    , accKey
    , accOauthToken
    , accFields
    , accAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsList@ which the
-- 'AccountsContainersVersionsList' request conforms to.
type AccountsContainersVersionsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "headers" Bool :>
                 Get '[JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'accountsContainersVersionsList' smart constructor.
data AccountsContainersVersionsList = AccountsContainersVersionsList
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accContainerId :: !Text
    , _accUserIp      :: !(Maybe Text)
    , _accHeaders     :: !Bool
    , _accAccountId   :: !Text
    , _accKey         :: !(Maybe Text)
    , _accOauthToken  :: !(Maybe Text)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accContainerId'
--
-- * 'accUserIp'
--
-- * 'accHeaders'
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
accountsContainersVersionsList
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsList
accountsContainersVersionsList pAccContainerId_ pAccAccountId_ =
    AccountsContainersVersionsList
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accContainerId = pAccContainerId_
    , _accUserIp = Nothing
    , _accHeaders = False
    , _accAccountId = pAccAccountId_
    , _accKey = Nothing
    , _accOauthToken = Nothing
    , _accFields = Nothing
    , _accAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsContainersVersionsList' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsContainersVersionsList' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | The GTM Container ID.
accContainerId :: Lens' AccountsContainersVersionsList' Text
accContainerId
  = lens _accContainerId
      (\ s a -> s{_accContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsContainersVersionsList' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | Retrieve headers only when true.
accHeaders :: Lens' AccountsContainersVersionsList' Bool
accHeaders
  = lens _accHeaders (\ s a -> s{_accHeaders = a})

-- | The GTM Account ID.
accAccountId :: Lens' AccountsContainersVersionsList' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsContainersVersionsList' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsContainersVersionsList' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsContainersVersionsList' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsContainersVersionsList' Text
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest
         AccountsContainersVersionsList' where
        type Rs AccountsContainersVersionsList' =
             ListContainerVersionsResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsList{..}
          = go _accQuotaUser _accPrettyPrint _accContainerId
              _accUserIp
              (Just _accHeaders)
              _accAccountId
              _accKey
              _accOauthToken
              _accFields
              _accAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVersionsListAPI)
                      r
                      u
