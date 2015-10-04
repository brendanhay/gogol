{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersGet@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get
    (
    -- * REST Resource
      CollectionviewersGetResource

    -- * Creating a Request
    , collectionviewersGet'
    , CollectionviewersGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgEnterpriseId
    , cgUserIP
    , cgCollectionId
    , cgUserId
    , cgKey
    , cgOAuthToken
    , cgFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersGet@ which the
-- 'CollectionviewersGet'' request conforms to.
type CollectionviewersGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
--
-- /See:/ 'collectionviewersGet'' smart constructor.
data CollectionviewersGet' = CollectionviewersGet'
    { _cgQuotaUser    :: !(Maybe Text)
    , _cgPrettyPrint  :: !Bool
    , _cgEnterpriseId :: !Text
    , _cgUserIP       :: !(Maybe Text)
    , _cgCollectionId :: !Text
    , _cgUserId       :: !Text
    , _cgKey          :: !(Maybe Key)
    , _cgOAuthToken   :: !(Maybe OAuthToken)
    , _cgFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgEnterpriseId'
--
-- * 'cgUserIP'
--
-- * 'cgCollectionId'
--
-- * 'cgUserId'
--
-- * 'cgKey'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
collectionviewersGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersGet'
collectionviewersGet' pCgEnterpriseId_ pCgCollectionId_ pCgUserId_ =
    CollectionviewersGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgEnterpriseId = pCgEnterpriseId_
    , _cgUserIP = Nothing
    , _cgCollectionId = pCgCollectionId_
    , _cgUserId = pCgUserId_
    , _cgKey = Nothing
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CollectionviewersGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CollectionviewersGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | The ID of the enterprise.
cgEnterpriseId :: Lens' CollectionviewersGet' Text
cgEnterpriseId
  = lens _cgEnterpriseId
      (\ s a -> s{_cgEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' CollectionviewersGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | The ID of the collection.
cgCollectionId :: Lens' CollectionviewersGet' Text
cgCollectionId
  = lens _cgCollectionId
      (\ s a -> s{_cgCollectionId = a})

-- | The ID of the user.
cgUserId :: Lens' CollectionviewersGet' Text
cgUserId = lens _cgUserId (\ s a -> s{_cgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CollectionviewersGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CollectionviewersGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CollectionviewersGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CollectionviewersGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CollectionviewersGet' where
        type Rs CollectionviewersGet' = User
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionviewersGet'{..}
          = go _cgEnterpriseId _cgCollectionId _cgUserId
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgUserIP
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersGetResource)
                      r
                      u
