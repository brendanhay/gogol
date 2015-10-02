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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersUpdate@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update
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
    , cuuUserIP
    , cuuCollectionId
    , cuuUser
    , cuuUserId
    , cuuKey
    , cuuOAuthToken
    , cuuFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersUpdate@ which the
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
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] User :> Put '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersUpdate'' smart constructor.
data CollectionviewersUpdate' = CollectionviewersUpdate'
    { _cuuQuotaUser    :: !(Maybe Text)
    , _cuuPrettyPrint  :: !Bool
    , _cuuEnterpriseId :: !Text
    , _cuuUserIP       :: !(Maybe Text)
    , _cuuCollectionId :: !Text
    , _cuuUser         :: !User
    , _cuuUserId       :: !Text
    , _cuuKey          :: !(Maybe Key)
    , _cuuOAuthToken   :: !(Maybe OAuthToken)
    , _cuuFields       :: !(Maybe Text)
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
-- * 'cuuUserIP'
--
-- * 'cuuCollectionId'
--
-- * 'cuuUser'
--
-- * 'cuuUserId'
--
-- * 'cuuKey'
--
-- * 'cuuOAuthToken'
--
-- * 'cuuFields'
collectionviewersUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> User -- ^ 'User'
    -> Text -- ^ 'userId'
    -> CollectionviewersUpdate'
collectionviewersUpdate' pCuuEnterpriseId_ pCuuCollectionId_ pCuuUser_ pCuuUserId_ =
    CollectionviewersUpdate'
    { _cuuQuotaUser = Nothing
    , _cuuPrettyPrint = True
    , _cuuEnterpriseId = pCuuEnterpriseId_
    , _cuuUserIP = Nothing
    , _cuuCollectionId = pCuuCollectionId_
    , _cuuUser = pCuuUser_
    , _cuuUserId = pCuuUserId_
    , _cuuKey = Nothing
    , _cuuOAuthToken = Nothing
    , _cuuFields = Nothing
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
cuuUserIP :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuUserIP
  = lens _cuuUserIP (\ s a -> s{_cuuUserIP = a})

-- | The ID of the collection.
cuuCollectionId :: Lens' CollectionviewersUpdate' Text
cuuCollectionId
  = lens _cuuCollectionId
      (\ s a -> s{_cuuCollectionId = a})

-- | Multipart request metadata.
cuuUser :: Lens' CollectionviewersUpdate' User
cuuUser = lens _cuuUser (\ s a -> s{_cuuUser = a})

-- | The ID of the user.
cuuUserId :: Lens' CollectionviewersUpdate' Text
cuuUserId
  = lens _cuuUserId (\ s a -> s{_cuuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuuKey :: Lens' CollectionviewersUpdate' (Maybe Key)
cuuKey = lens _cuuKey (\ s a -> s{_cuuKey = a})

-- | OAuth 2.0 token for the current user.
cuuOAuthToken :: Lens' CollectionviewersUpdate' (Maybe OAuthToken)
cuuOAuthToken
  = lens _cuuOAuthToken
      (\ s a -> s{_cuuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuuFields :: Lens' CollectionviewersUpdate' (Maybe Text)
cuuFields
  = lens _cuuFields (\ s a -> s{_cuuFields = a})

instance GoogleAuth CollectionviewersUpdate' where
        authKey = cuuKey . _Just
        authToken = cuuOAuthToken . _Just

instance GoogleRequest CollectionviewersUpdate' where
        type Rs CollectionviewersUpdate' = User
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionviewersUpdate'{..}
          = go _cuuEnterpriseId _cuuCollectionId _cuuUserId
              _cuuQuotaUser
              (Just _cuuPrettyPrint)
              _cuuUserIP
              _cuuFields
              _cuuKey
              _cuuOAuthToken
              (Just AltJSON)
              _cuuUser
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersUpdateResource)
                      r
                      u
