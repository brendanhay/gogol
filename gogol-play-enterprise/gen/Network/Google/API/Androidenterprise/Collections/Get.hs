{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.get@.
module Network.Google.API.Androidenterprise.Collections.Get
    (
    -- * REST Resource
      CollectionsGetAPI

    -- * Creating a Request
    , collectionsGet'
    , CollectionsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgEnterpriseId
    , cgUserIp
    , cgCollectionId
    , cgKey
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collections.get which the
-- 'CollectionsGet'' request conforms to.
type CollectionsGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Collection

-- | Retrieves the details of a collection.
--
-- /See:/ 'collectionsGet'' smart constructor.
data CollectionsGet' = CollectionsGet'
    { _cgQuotaUser    :: !(Maybe Text)
    , _cgPrettyPrint  :: !Bool
    , _cgEnterpriseId :: !Text
    , _cgUserIp       :: !(Maybe Text)
    , _cgCollectionId :: !Text
    , _cgKey          :: !(Maybe Text)
    , _cgOauthToken   :: !(Maybe Text)
    , _cgFields       :: !(Maybe Text)
    , _cgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgEnterpriseId'
--
-- * 'cgUserIp'
--
-- * 'cgCollectionId'
--
-- * 'cgKey'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
collectionsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsGet'
collectionsGet' pCgEnterpriseId_ pCgCollectionId_ =
    CollectionsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgEnterpriseId = pCgEnterpriseId_
    , _cgUserIp = Nothing
    , _cgCollectionId = pCgCollectionId_
    , _cgKey = Nothing
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CollectionsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CollectionsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | The ID of the enterprise.
cgEnterpriseId :: Lens' CollectionsGet' Text
cgEnterpriseId
  = lens _cgEnterpriseId
      (\ s a -> s{_cgEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CollectionsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | The ID of the collection.
cgCollectionId :: Lens' CollectionsGet' Text
cgCollectionId
  = lens _cgCollectionId
      (\ s a -> s{_cgCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CollectionsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CollectionsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CollectionsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CollectionsGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CollectionsGet' where
        type Rs CollectionsGet' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint)
              _cgEnterpriseId
              _cgUserIp
              _cgCollectionId
              _cgKey
              _cgOauthToken
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CollectionsGetAPI)
                      r
                      u
