{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.list@.
module Network.Google.API.Androidenterprise.Collections.List
    (
    -- * REST Resource
      CollectionsListAPI

    -- * Creating a Request
    , collectionsList'
    , CollectionsList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clEnterpriseId
    , clUserIp
    , clKey
    , clOauthToken
    , clFields
    , clAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collections.list which the
-- 'CollectionsList'' request conforms to.
type CollectionsListAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] CollectionsListResponse

-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ 'collectionsList'' smart constructor.
data CollectionsList' = CollectionsList'
    { _clQuotaUser    :: !(Maybe Text)
    , _clPrettyPrint  :: !Bool
    , _clEnterpriseId :: !Text
    , _clUserIp       :: !(Maybe Text)
    , _clKey          :: !(Maybe Text)
    , _clOauthToken   :: !(Maybe Text)
    , _clFields       :: !(Maybe Text)
    , _clAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsList'' with the minimum fields required to make a request.
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
-- * 'clKey'
--
-- * 'clOauthToken'
--
-- * 'clFields'
--
-- * 'clAlt'
collectionsList'
    :: Text -- ^ 'enterpriseId'
    -> CollectionsList'
collectionsList' pClEnterpriseId_ =
    CollectionsList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clEnterpriseId = pClEnterpriseId_
    , _clUserIp = Nothing
    , _clKey = Nothing
    , _clOauthToken = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CollectionsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CollectionsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | The ID of the enterprise.
clEnterpriseId :: Lens' CollectionsList' Text
clEnterpriseId
  = lens _clEnterpriseId
      (\ s a -> s{_clEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CollectionsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CollectionsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CollectionsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CollectionsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CollectionsList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CollectionsList' where
        type Rs CollectionsList' = CollectionsListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsList'{..}
          = go _clQuotaUser (Just _clPrettyPrint)
              _clEnterpriseId
              _clUserIp
              _clKey
              _clOauthToken
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CollectionsListAPI)
                      r
                      u
