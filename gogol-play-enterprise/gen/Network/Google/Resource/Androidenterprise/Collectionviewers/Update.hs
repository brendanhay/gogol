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
-- Module      : Network.Google.Resource.Androidenterprise.Collectionviewers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionviewersUpdate@.
module Network.Google.Resource.Androidenterprise.Collectionviewers.Update
    (
    -- * REST Resource
      CollectionviewersUpdateResource

    -- * Creating a Request
    , collectionviewersUpdate'
    , CollectionviewersUpdate'

    -- * Request Lenses
    , cuuQuotaUser
    , cuuPrettyPrint
    , cuuEnterpriseId
    , cuuUserIp
    , cuuCollectionId
    , cuuUserId
    , cuuKey
    , cuuOauthToken
    , cuuFields
    , cuuAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionviewersUpdate@ which the
-- 'CollectionviewersUpdate'' request conforms to.
type CollectionviewersUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Put '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersUpdate'' smart constructor.
data CollectionviewersUpdate' = CollectionviewersUpdate'
    { _cuuQuotaUser    :: !(Maybe Text)
    , _cuuPrettyPrint  :: !Bool
    , _cuuEnterpriseId :: !Text
    , _cuuUserIp       :: !(Maybe Text)
    , _cuuCollectionId :: !Text
    , _cuuUserId       :: !Text
    , _cuuKey          :: !(Maybe Text)
    , _cuuOauthToken   :: !(Maybe Text)
    , _cuuFields       :: !(Maybe Text)
    , _cuuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuQuotaUser'
--
-- * 'cuuPrettyPrint'
--
-- * 'cuuEnterpriseId'
--
-- * 'cuuUserIp'
--
-- * 'cuuCollectionId'
--
-- * 'cuuUserId'
--
-- * 'cuuKey'
--
-- * 'cuuOauthToken'
--
-- * 'cuuFields'
--
-- * 'cuuAlt'
collectionviewersUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersUpdate'
collectionviewersUpdate' pCuuEnterpriseId_ pCuuCollectionId_ pCuuUserId_ =
    CollectionviewersUpdate'
    { _cuuQuotaUser = Nothing
    , _cuuPrettyPrint = True
    , _cuuEnterpriseId = pCuuEnterpriseId_
    , _cuuUserIp = Nothing
    , _cuuCollectionId = pCuuCollectionId_
    , _cuuUserId = pCuuUserId_
    , _cuuKey = Nothing
    , _cuuOauthToken = Nothing
    , _cuuFields = Nothing
    , _cuuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuuQuotaUser :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuQuotaUser
  = lens _cuuQuotaUser (\ s a -> s{_cuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuuPrettyPrint :: Lens' CollectionviewersUpdate' Bool
cuuPrettyPrint
  = lens _cuuPrettyPrint
      (\ s a -> s{_cuuPrettyPrint = a})

-- | The ID of the enterprise.
cuuEnterpriseId :: Lens' CollectionviewersUpdate' Text
cuuEnterpriseId
  = lens _cuuEnterpriseId
      (\ s a -> s{_cuuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuuUserIp :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuUserIp
  = lens _cuuUserIp (\ s a -> s{_cuuUserIp = a})

-- | The ID of the collection.
cuuCollectionId :: Lens' CollectionviewersUpdate' Text
cuuCollectionId
  = lens _cuuCollectionId
      (\ s a -> s{_cuuCollectionId = a})

-- | The ID of the user.
cuuUserId :: Lens' CollectionviewersUpdate' Text
cuuUserId
  = lens _cuuUserId (\ s a -> s{_cuuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuuKey :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuKey = lens _cuuKey (\ s a -> s{_cuuKey = a})

-- | OAuth 2.0 token for the current user.
cuuOauthToken :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuOauthToken
  = lens _cuuOauthToken
      (\ s a -> s{_cuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuuFields :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuFields
  = lens _cuuFields (\ s a -> s{_cuuFields = a})

-- | Data format for the response.
cuuAlt :: Lens' CollectionviewersUpdate' Alt
cuuAlt = lens _cuuAlt (\ s a -> s{_cuuAlt = a})

instance GoogleRequest CollectionviewersUpdate' where
        type Rs CollectionviewersUpdate' = User
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersUpdate'{..}
          = go _cuuQuotaUser (Just _cuuPrettyPrint)
              _cuuEnterpriseId
              _cuuUserIp
              _cuuCollectionId
              _cuuUserId
              _cuuKey
              _cuuOauthToken
              _cuuFields
              (Just _cuuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersUpdateResource)
                      r
                      u
