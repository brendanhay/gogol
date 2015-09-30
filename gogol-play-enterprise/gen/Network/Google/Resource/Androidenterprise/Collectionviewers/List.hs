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
-- Module      : Network.Google.Resource.Androidenterprise.Collectionviewers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of the users who have been specifically allowed to see
-- the collection. If the collection\'s visibility is set to viewersOnly
-- then only these users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionviewersList@.
module Network.Google.Resource.Androidenterprise.Collectionviewers.List
    (
    -- * REST Resource
      CollectionviewersListResource

    -- * Creating a Request
    , collectionviewersList'
    , CollectionviewersList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clEnterpriseId
    , clUserIp
    , clCollectionId
    , clKey
    , clOauthToken
    , clFields
    , clAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionviewersList@ which the
-- 'CollectionviewersList'' request conforms to.
type CollectionviewersListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] CollectionViewersListResponse

-- | Retrieves the IDs of the users who have been specifically allowed to see
-- the collection. If the collection\'s visibility is set to viewersOnly
-- then only these users will see the collection.
--
-- /See:/ 'collectionviewersList'' smart constructor.
data CollectionviewersList' = CollectionviewersList'
    { _clQuotaUser    :: !(Maybe Text)
    , _clPrettyPrint  :: !Bool
    , _clEnterpriseId :: !Text
    , _clUserIp       :: !(Maybe Text)
    , _clCollectionId :: !Text
    , _clKey          :: !(Maybe Text)
    , _clOauthToken   :: !(Maybe Text)
    , _clFields       :: !(Maybe Text)
    , _clAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clEnterpriseId'
--
-- * 'clUserIp'
--
-- * 'clCollectionId'
--
-- * 'clKey'
--
-- * 'clOauthToken'
--
-- * 'clFields'
--
-- * 'clAlt'
collectionviewersList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionviewersList'
collectionviewersList' pClEnterpriseId_ pClCollectionId_ =
    CollectionviewersList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clEnterpriseId = pClEnterpriseId_
    , _clUserIp = Nothing
    , _clCollectionId = pClCollectionId_
    , _clKey = Nothing
    , _clOauthToken = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CollectionviewersList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CollectionviewersList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | The ID of the enterprise.
clEnterpriseId :: Lens' CollectionviewersList' Text
clEnterpriseId
  = lens _clEnterpriseId
      (\ s a -> s{_clEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CollectionviewersList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | The ID of the collection.
clCollectionId :: Lens' CollectionviewersList' Text
clCollectionId
  = lens _clCollectionId
      (\ s a -> s{_clCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CollectionviewersList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CollectionviewersList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CollectionviewersList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CollectionviewersList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CollectionviewersList' where
        type Rs CollectionviewersList' =
             CollectionViewersListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersList'{..}
          = go _clQuotaUser (Just _clPrettyPrint)
              _clEnterpriseId
              _clUserIp
              _clCollectionId
              _clKey
              _clOauthToken
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersListResource)
                      r
                      u
