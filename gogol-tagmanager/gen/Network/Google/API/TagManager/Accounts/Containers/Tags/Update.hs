{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Tags.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.update@.
module Network.Google.API.TagManager.Accounts.Containers.Tags.Update
    (
    -- * REST Resource
      AccountsContainersTagsUpdateAPI

    -- * Creating a Request
    , accountsContainersTagsUpdate'
    , AccountsContainersTagsUpdate'

    -- * Request Lenses
    , actuQuotaUser
    , actuPrettyPrint
    , actuContainerId
    , actuUserIp
    , actuFingerprint
    , actuAccountId
    , actuTagId
    , actuKey
    , actuOauthToken
    , actuFields
    , actuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.tags.update which the
-- 'AccountsContainersTagsUpdate'' request conforms to.
type AccountsContainersTagsUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] Tag

-- | Updates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsUpdate'' smart constructor.
data AccountsContainersTagsUpdate' = AccountsContainersTagsUpdate'
    { _actuQuotaUser   :: !(Maybe Text)
    , _actuPrettyPrint :: !Bool
    , _actuContainerId :: !Text
    , _actuUserIp      :: !(Maybe Text)
    , _actuFingerprint :: !(Maybe Text)
    , _actuAccountId   :: !Text
    , _actuTagId       :: !Text
    , _actuKey         :: !(Maybe Text)
    , _actuOauthToken  :: !(Maybe Text)
    , _actuFields      :: !(Maybe Text)
    , _actuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actuQuotaUser'
--
-- * 'actuPrettyPrint'
--
-- * 'actuContainerId'
--
-- * 'actuUserIp'
--
-- * 'actuFingerprint'
--
-- * 'actuAccountId'
--
-- * 'actuTagId'
--
-- * 'actuKey'
--
-- * 'actuOauthToken'
--
-- * 'actuFields'
--
-- * 'actuAlt'
accountsContainersTagsUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsUpdate'
accountsContainersTagsUpdate' pActuContainerId_ pActuAccountId_ pActuTagId_ =
    AccountsContainersTagsUpdate'
    { _actuQuotaUser = Nothing
    , _actuPrettyPrint = True
    , _actuContainerId = pActuContainerId_
    , _actuUserIp = Nothing
    , _actuFingerprint = Nothing
    , _actuAccountId = pActuAccountId_
    , _actuTagId = pActuTagId_
    , _actuKey = Nothing
    , _actuOauthToken = Nothing
    , _actuFields = Nothing
    , _actuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actuQuotaUser :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actuQuotaUser
  = lens _actuQuotaUser
      (\ s a -> s{_actuQuotaUser = a})

-- | Returns response with indentations and line breaks.
actuPrettyPrint :: Lens' AccountsContainersTagsUpdate' Bool
actuPrettyPrint
  = lens _actuPrettyPrint
      (\ s a -> s{_actuPrettyPrint = a})

-- | The GTM Container ID.
actuContainerId :: Lens' AccountsContainersTagsUpdate' Text
actuContainerId
  = lens _actuContainerId
      (\ s a -> s{_actuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actuUserIp :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actuUserIp
  = lens _actuUserIp (\ s a -> s{_actuUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
actuFingerprint :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actuFingerprint
  = lens _actuFingerprint
      (\ s a -> s{_actuFingerprint = a})

-- | The GTM Account ID.
actuAccountId :: Lens' AccountsContainersTagsUpdate' Text
actuAccountId
  = lens _actuAccountId
      (\ s a -> s{_actuAccountId = a})

-- | The GTM Tag ID.
actuTagId :: Lens' AccountsContainersTagsUpdate' Text
actuTagId
  = lens _actuTagId (\ s a -> s{_actuTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actuKey :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actuKey = lens _actuKey (\ s a -> s{_actuKey = a})

-- | OAuth 2.0 token for the current user.
actuOauthToken :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actuOauthToken
  = lens _actuOauthToken
      (\ s a -> s{_actuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actuFields :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actuFields
  = lens _actuFields (\ s a -> s{_actuFields = a})

-- | Data format for the response.
actuAlt :: Lens' AccountsContainersTagsUpdate' Alt
actuAlt = lens _actuAlt (\ s a -> s{_actuAlt = a})

instance GoogleRequest AccountsContainersTagsUpdate'
         where
        type Rs AccountsContainersTagsUpdate' = Tag
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTagsUpdate'{..}
          = go _actuQuotaUser (Just _actuPrettyPrint)
              _actuContainerId
              _actuUserIp
              _actuFingerprint
              _actuAccountId
              _actuTagId
              _actuKey
              _actuOauthToken
              _actuFields
              (Just _actuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsUpdateAPI)
                      r
                      u
