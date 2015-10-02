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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTagsUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update
    (
    -- * REST Resource
      AccountsContainersTagsUpdateResource

    -- * Creating a Request
    , accountsContainersTagsUpdate'
    , AccountsContainersTagsUpdate'

    -- * Request Lenses
    , actucQuotaUser
    , actucPrettyPrint
    , actucTag
    , actucContainerId
    , actucUserIP
    , actucFingerprint
    , actucAccountId
    , actucTagId
    , actucKey
    , actucOAuthToken
    , actucFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTagsUpdate@ which the
-- 'AccountsContainersTagsUpdate'' request conforms to.
type AccountsContainersTagsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Tag :> Put '[JSON] Tag

-- | Updates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsUpdate'' smart constructor.
data AccountsContainersTagsUpdate' = AccountsContainersTagsUpdate'
    { _actucQuotaUser   :: !(Maybe Text)
    , _actucPrettyPrint :: !Bool
    , _actucTag         :: !Tag
    , _actucContainerId :: !Text
    , _actucUserIP      :: !(Maybe Text)
    , _actucFingerprint :: !(Maybe Text)
    , _actucAccountId   :: !Text
    , _actucTagId       :: !Text
    , _actucKey         :: !(Maybe Key)
    , _actucOAuthToken  :: !(Maybe OAuthToken)
    , _actucFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actucQuotaUser'
--
-- * 'actucPrettyPrint'
--
-- * 'actucTag'
--
-- * 'actucContainerId'
--
-- * 'actucUserIP'
--
-- * 'actucFingerprint'
--
-- * 'actucAccountId'
--
-- * 'actucTagId'
--
-- * 'actucKey'
--
-- * 'actucOAuthToken'
--
-- * 'actucFields'
accountsContainersTagsUpdate'
    :: Tag -- ^ 'Tag'
    -> Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsUpdate'
accountsContainersTagsUpdate' pActucTag_ pActucContainerId_ pActucAccountId_ pActucTagId_ =
    AccountsContainersTagsUpdate'
    { _actucQuotaUser = Nothing
    , _actucPrettyPrint = True
    , _actucTag = pActucTag_
    , _actucContainerId = pActucContainerId_
    , _actucUserIP = Nothing
    , _actucFingerprint = Nothing
    , _actucAccountId = pActucAccountId_
    , _actucTagId = pActucTagId_
    , _actucKey = Nothing
    , _actucOAuthToken = Nothing
    , _actucFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actucQuotaUser :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucQuotaUser
  = lens _actucQuotaUser
      (\ s a -> s{_actucQuotaUser = a})

-- | Returns response with indentations and line breaks.
actucPrettyPrint :: Lens' AccountsContainersTagsUpdate' Bool
actucPrettyPrint
  = lens _actucPrettyPrint
      (\ s a -> s{_actucPrettyPrint = a})

-- | Multipart request metadata.
actucTag :: Lens' AccountsContainersTagsUpdate' Tag
actucTag = lens _actucTag (\ s a -> s{_actucTag = a})

-- | The GTM Container ID.
actucContainerId :: Lens' AccountsContainersTagsUpdate' Text
actucContainerId
  = lens _actucContainerId
      (\ s a -> s{_actucContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actucUserIP :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucUserIP
  = lens _actucUserIP (\ s a -> s{_actucUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
actucFingerprint :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucFingerprint
  = lens _actucFingerprint
      (\ s a -> s{_actucFingerprint = a})

-- | The GTM Account ID.
actucAccountId :: Lens' AccountsContainersTagsUpdate' Text
actucAccountId
  = lens _actucAccountId
      (\ s a -> s{_actucAccountId = a})

-- | The GTM Tag ID.
actucTagId :: Lens' AccountsContainersTagsUpdate' Text
actucTagId
  = lens _actucTagId (\ s a -> s{_actucTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actucKey :: Lens' AccountsContainersTagsUpdate' (Maybe Key)
actucKey = lens _actucKey (\ s a -> s{_actucKey = a})

-- | OAuth 2.0 token for the current user.
actucOAuthToken :: Lens' AccountsContainersTagsUpdate' (Maybe OAuthToken)
actucOAuthToken
  = lens _actucOAuthToken
      (\ s a -> s{_actucOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actucFields :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucFields
  = lens _actucFields (\ s a -> s{_actucFields = a})

instance GoogleAuth AccountsContainersTagsUpdate'
         where
        authKey = actucKey . _Just
        authToken = actucOAuthToken . _Just

instance GoogleRequest AccountsContainersTagsUpdate'
         where
        type Rs AccountsContainersTagsUpdate' = Tag
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTagsUpdate'{..}
          = go _actucFingerprint _actucAccountId
              _actucContainerId
              _actucTagId
              _actucQuotaUser
              (Just _actucPrettyPrint)
              _actucUserIP
              _actucFields
              _actucKey
              _actucOAuthToken
              (Just AltJSON)
              _actucTag
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsUpdateResource)
                      r
                      u
