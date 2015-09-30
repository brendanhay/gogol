{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTagsDelete@.
module TagManager.Accounts.Containers.Tags.Delete
    (
    -- * REST Resource
      AccountsContainersTagsDeleteAPI

    -- * Creating a Request
    , accountsContainersTagsDelete
    , AccountsContainersTagsDelete

    -- * Request Lenses
    , actdcQuotaUser
    , actdcPrettyPrint
    , actdcContainerId
    , actdcUserIp
    , actdcAccountId
    , actdcTagId
    , actdcKey
    , actdcOauthToken
    , actdcFields
    , actdcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTagsDelete@ which the
-- 'AccountsContainersTagsDelete' request conforms to.
type AccountsContainersTagsDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :> Capture "tagId" Text :> Delete '[JSON] ()

-- | Deletes a GTM Tag.
--
-- /See:/ 'accountsContainersTagsDelete' smart constructor.
data AccountsContainersTagsDelete = AccountsContainersTagsDelete
    { _actdcQuotaUser   :: !(Maybe Text)
    , _actdcPrettyPrint :: !Bool
    , _actdcContainerId :: !Text
    , _actdcUserIp      :: !(Maybe Text)
    , _actdcAccountId   :: !Text
    , _actdcTagId       :: !Text
    , _actdcKey         :: !(Maybe Text)
    , _actdcOauthToken  :: !(Maybe Text)
    , _actdcFields      :: !(Maybe Text)
    , _actdcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdcQuotaUser'
--
-- * 'actdcPrettyPrint'
--
-- * 'actdcContainerId'
--
-- * 'actdcUserIp'
--
-- * 'actdcAccountId'
--
-- * 'actdcTagId'
--
-- * 'actdcKey'
--
-- * 'actdcOauthToken'
--
-- * 'actdcFields'
--
-- * 'actdcAlt'
accountsContainersTagsDelete
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsDelete
accountsContainersTagsDelete pActdcContainerId_ pActdcAccountId_ pActdcTagId_ =
    AccountsContainersTagsDelete
    { _actdcQuotaUser = Nothing
    , _actdcPrettyPrint = True
    , _actdcContainerId = pActdcContainerId_
    , _actdcUserIp = Nothing
    , _actdcAccountId = pActdcAccountId_
    , _actdcTagId = pActdcTagId_
    , _actdcKey = Nothing
    , _actdcOauthToken = Nothing
    , _actdcFields = Nothing
    , _actdcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actdcQuotaUser :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcQuotaUser
  = lens _actdcQuotaUser
      (\ s a -> s{_actdcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actdcPrettyPrint :: Lens' AccountsContainersTagsDelete' Bool
actdcPrettyPrint
  = lens _actdcPrettyPrint
      (\ s a -> s{_actdcPrettyPrint = a})

-- | The GTM Container ID.
actdcContainerId :: Lens' AccountsContainersTagsDelete' Text
actdcContainerId
  = lens _actdcContainerId
      (\ s a -> s{_actdcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actdcUserIp :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcUserIp
  = lens _actdcUserIp (\ s a -> s{_actdcUserIp = a})

-- | The GTM Account ID.
actdcAccountId :: Lens' AccountsContainersTagsDelete' Text
actdcAccountId
  = lens _actdcAccountId
      (\ s a -> s{_actdcAccountId = a})

-- | The GTM Tag ID.
actdcTagId :: Lens' AccountsContainersTagsDelete' Text
actdcTagId
  = lens _actdcTagId (\ s a -> s{_actdcTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actdcKey :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcKey = lens _actdcKey (\ s a -> s{_actdcKey = a})

-- | OAuth 2.0 token for the current user.
actdcOauthToken :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcOauthToken
  = lens _actdcOauthToken
      (\ s a -> s{_actdcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actdcFields :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcFields
  = lens _actdcFields (\ s a -> s{_actdcFields = a})

-- | Data format for the response.
actdcAlt :: Lens' AccountsContainersTagsDelete' Text
actdcAlt = lens _actdcAlt (\ s a -> s{_actdcAlt = a})

instance GoogleRequest AccountsContainersTagsDelete'
         where
        type Rs AccountsContainersTagsDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersTagsDelete{..}
          = go _actdcQuotaUser _actdcPrettyPrint
              _actdcContainerId
              _actdcUserIp
              _actdcAccountId
              _actdcTagId
              _actdcKey
              _actdcOauthToken
              _actdcFields
              _actdcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsDeleteAPI)
                      r
                      u
