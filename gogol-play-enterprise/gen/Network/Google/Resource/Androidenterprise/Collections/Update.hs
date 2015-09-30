{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collections.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionsUpdate@.
module Androidenterprise.Collections.Update
    (
    -- * REST Resource
      CollectionsUpdateAPI

    -- * Creating a Request
    , collectionsUpdate
    , CollectionsUpdate

    -- * Request Lenses
    , cuuQuotaUser
    , cuuPrettyPrint
    , cuuEnterpriseId
    , cuuUserIp
    , cuuCollectionId
    , cuuKey
    , cuuOauthToken
    , cuuFields
    , cuuAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionsUpdate@ which the
-- 'CollectionsUpdate' request conforms to.
type CollectionsUpdateAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :> Put '[JSON] Collection

-- | Updates a collection.
--
-- /See:/ 'collectionsUpdate' smart constructor.
data CollectionsUpdate = CollectionsUpdate
    { _cuuQuotaUser    :: !(Maybe Text)
    , _cuuPrettyPrint  :: !Bool
    , _cuuEnterpriseId :: !Text
    , _cuuUserIp       :: !(Maybe Text)
    , _cuuCollectionId :: !Text
    , _cuuKey          :: !(Maybe Text)
    , _cuuOauthToken   :: !(Maybe Text)
    , _cuuFields       :: !(Maybe Text)
    , _cuuAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsUpdate'' with the minimum fields required to make a request.
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
-- * 'cuuKey'
--
-- * 'cuuOauthToken'
--
-- * 'cuuFields'
--
-- * 'cuuAlt'
collectionsUpdate
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsUpdate
collectionsUpdate pCuuEnterpriseId_ pCuuCollectionId_ =
    CollectionsUpdate
    { _cuuQuotaUser = Nothing
    , _cuuPrettyPrint = True
    , _cuuEnterpriseId = pCuuEnterpriseId_
    , _cuuUserIp = Nothing
    , _cuuCollectionId = pCuuCollectionId_
    , _cuuKey = Nothing
    , _cuuOauthToken = Nothing
    , _cuuFields = Nothing
    , _cuuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuuQuotaUser :: Lens' CollectionsUpdate' (Maybe Text)
cuuQuotaUser
  = lens _cuuQuotaUser (\ s a -> s{_cuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuuPrettyPrint :: Lens' CollectionsUpdate' Bool
cuuPrettyPrint
  = lens _cuuPrettyPrint
      (\ s a -> s{_cuuPrettyPrint = a})

-- | The ID of the enterprise.
cuuEnterpriseId :: Lens' CollectionsUpdate' Text
cuuEnterpriseId
  = lens _cuuEnterpriseId
      (\ s a -> s{_cuuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuuUserIp :: Lens' CollectionsUpdate' (Maybe Text)
cuuUserIp
  = lens _cuuUserIp (\ s a -> s{_cuuUserIp = a})

-- | The ID of the collection.
cuuCollectionId :: Lens' CollectionsUpdate' Text
cuuCollectionId
  = lens _cuuCollectionId
      (\ s a -> s{_cuuCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuuKey :: Lens' CollectionsUpdate' (Maybe Text)
cuuKey = lens _cuuKey (\ s a -> s{_cuuKey = a})

-- | OAuth 2.0 token for the current user.
cuuOauthToken :: Lens' CollectionsUpdate' (Maybe Text)
cuuOauthToken
  = lens _cuuOauthToken
      (\ s a -> s{_cuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuuFields :: Lens' CollectionsUpdate' (Maybe Text)
cuuFields
  = lens _cuuFields (\ s a -> s{_cuuFields = a})

-- | Data format for the response.
cuuAlt :: Lens' CollectionsUpdate' Text
cuuAlt = lens _cuuAlt (\ s a -> s{_cuuAlt = a})

instance GoogleRequest CollectionsUpdate' where
        type Rs CollectionsUpdate' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsUpdate{..}
          = go _cuuQuotaUser _cuuPrettyPrint _cuuEnterpriseId
              _cuuUserIp
              _cuuCollectionId
              _cuuKey
              _cuuOauthToken
              _cuuFields
              _cuuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsUpdateAPI)
                      r
                      u
