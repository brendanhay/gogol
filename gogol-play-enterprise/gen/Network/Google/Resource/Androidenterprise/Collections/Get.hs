{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionsGet@.
module Androidenterprise.Collections.Get
    (
    -- * REST Resource
      CollectionsGetAPI

    -- * Creating a Request
    , collectionsGet
    , CollectionsGet

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggEnterpriseId
    , cggUserIp
    , cggCollectionId
    , cggKey
    , cggOauthToken
    , cggFields
    , cggAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionsGet@ which the
-- 'CollectionsGet' request conforms to.
type CollectionsGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :> Get '[JSON] Collection

-- | Retrieves the details of a collection.
--
-- /See:/ 'collectionsGet' smart constructor.
data CollectionsGet = CollectionsGet
    { _cggQuotaUser    :: !(Maybe Text)
    , _cggPrettyPrint  :: !Bool
    , _cggEnterpriseId :: !Text
    , _cggUserIp       :: !(Maybe Text)
    , _cggCollectionId :: !Text
    , _cggKey          :: !(Maybe Text)
    , _cggOauthToken   :: !(Maybe Text)
    , _cggFields       :: !(Maybe Text)
    , _cggAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggEnterpriseId'
--
-- * 'cggUserIp'
--
-- * 'cggCollectionId'
--
-- * 'cggKey'
--
-- * 'cggOauthToken'
--
-- * 'cggFields'
--
-- * 'cggAlt'
collectionsGet
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsGet
collectionsGet pCggEnterpriseId_ pCggCollectionId_ =
    CollectionsGet
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggEnterpriseId = pCggEnterpriseId_
    , _cggUserIp = Nothing
    , _cggCollectionId = pCggCollectionId_
    , _cggKey = Nothing
    , _cggOauthToken = Nothing
    , _cggFields = Nothing
    , _cggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CollectionsGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CollectionsGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | The ID of the enterprise.
cggEnterpriseId :: Lens' CollectionsGet' Text
cggEnterpriseId
  = lens _cggEnterpriseId
      (\ s a -> s{_cggEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' CollectionsGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

-- | The ID of the collection.
cggCollectionId :: Lens' CollectionsGet' Text
cggCollectionId
  = lens _cggCollectionId
      (\ s a -> s{_cggCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CollectionsGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' CollectionsGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CollectionsGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' CollectionsGet' Text
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest CollectionsGet' where
        type Rs CollectionsGet' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsGet{..}
          = go _cggQuotaUser _cggPrettyPrint _cggEnterpriseId
              _cggUserIp
              _cggCollectionId
              _cggKey
              _cggOauthToken
              _cggFields
              _cggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CollectionsGetAPI)
                      r
                      u
