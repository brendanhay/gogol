{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionsPatch@.
module Androidenterprise.Collections.Patch
    (
    -- * REST Resource
      CollectionsPatchAPI

    -- * Creating a Request
    , collectionsPatch
    , CollectionsPatch

    -- * Request Lenses
    , colQuotaUser
    , colPrettyPrint
    , colEnterpriseId
    , colUserIp
    , colCollectionId
    , colKey
    , colOauthToken
    , colFields
    , colAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionsPatch@ which the
-- 'CollectionsPatch' request conforms to.
type CollectionsPatchAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             Patch '[JSON] Collection

-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ 'collectionsPatch' smart constructor.
data CollectionsPatch = CollectionsPatch
    { _colQuotaUser    :: !(Maybe Text)
    , _colPrettyPrint  :: !Bool
    , _colEnterpriseId :: !Text
    , _colUserIp       :: !(Maybe Text)
    , _colCollectionId :: !Text
    , _colKey          :: !(Maybe Text)
    , _colOauthToken   :: !(Maybe Text)
    , _colFields       :: !(Maybe Text)
    , _colAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colQuotaUser'
--
-- * 'colPrettyPrint'
--
-- * 'colEnterpriseId'
--
-- * 'colUserIp'
--
-- * 'colCollectionId'
--
-- * 'colKey'
--
-- * 'colOauthToken'
--
-- * 'colFields'
--
-- * 'colAlt'
collectionsPatch
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsPatch
collectionsPatch pColEnterpriseId_ pColCollectionId_ =
    CollectionsPatch
    { _colQuotaUser = Nothing
    , _colPrettyPrint = True
    , _colEnterpriseId = pColEnterpriseId_
    , _colUserIp = Nothing
    , _colCollectionId = pColCollectionId_
    , _colKey = Nothing
    , _colOauthToken = Nothing
    , _colFields = Nothing
    , _colAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
colQuotaUser :: Lens' CollectionsPatch' (Maybe Text)
colQuotaUser
  = lens _colQuotaUser (\ s a -> s{_colQuotaUser = a})

-- | Returns response with indentations and line breaks.
colPrettyPrint :: Lens' CollectionsPatch' Bool
colPrettyPrint
  = lens _colPrettyPrint
      (\ s a -> s{_colPrettyPrint = a})

-- | The ID of the enterprise.
colEnterpriseId :: Lens' CollectionsPatch' Text
colEnterpriseId
  = lens _colEnterpriseId
      (\ s a -> s{_colEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
colUserIp :: Lens' CollectionsPatch' (Maybe Text)
colUserIp
  = lens _colUserIp (\ s a -> s{_colUserIp = a})

-- | The ID of the collection.
colCollectionId :: Lens' CollectionsPatch' Text
colCollectionId
  = lens _colCollectionId
      (\ s a -> s{_colCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
colKey :: Lens' CollectionsPatch' (Maybe Text)
colKey = lens _colKey (\ s a -> s{_colKey = a})

-- | OAuth 2.0 token for the current user.
colOauthToken :: Lens' CollectionsPatch' (Maybe Text)
colOauthToken
  = lens _colOauthToken
      (\ s a -> s{_colOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
colFields :: Lens' CollectionsPatch' (Maybe Text)
colFields
  = lens _colFields (\ s a -> s{_colFields = a})

-- | Data format for the response.
colAlt :: Lens' CollectionsPatch' Text
colAlt = lens _colAlt (\ s a -> s{_colAlt = a})

instance GoogleRequest CollectionsPatch' where
        type Rs CollectionsPatch' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsPatch{..}
          = go _colQuotaUser _colPrettyPrint _colEnterpriseId
              _colUserIp
              _colCollectionId
              _colKey
              _colOauthToken
              _colFields
              _colAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsPatchAPI)
                      r
                      u
