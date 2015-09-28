{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collections.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.update@.
module Network.Google.API.Androidenterprise.Collections.Update
    (
    -- * REST Resource
      CollectionsUpdateAPI

    -- * Creating a Request
    , collectionsUpdate'
    , CollectionsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuEnterpriseId
    , cuUserIp
    , cuCollectionId
    , cuKey
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collections.update which the
-- 'CollectionsUpdate'' request conforms to.
type CollectionsUpdateAPI =
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
                         QueryParam "alt" Alt :> Put '[JSON] Collection

-- | Updates a collection.
--
-- /See:/ 'collectionsUpdate'' smart constructor.
data CollectionsUpdate' = CollectionsUpdate'
    { _cuQuotaUser    :: !(Maybe Text)
    , _cuPrettyPrint  :: !Bool
    , _cuEnterpriseId :: !Text
    , _cuUserIp       :: !(Maybe Text)
    , _cuCollectionId :: !Text
    , _cuKey          :: !(Maybe Text)
    , _cuOauthToken   :: !(Maybe Text)
    , _cuFields       :: !(Maybe Text)
    , _cuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuEnterpriseId'
--
-- * 'cuUserIp'
--
-- * 'cuCollectionId'
--
-- * 'cuKey'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
collectionsUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsUpdate'
collectionsUpdate' pCuEnterpriseId_ pCuCollectionId_ =
    CollectionsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuEnterpriseId = pCuEnterpriseId_
    , _cuUserIp = Nothing
    , _cuCollectionId = pCuCollectionId_
    , _cuKey = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CollectionsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CollectionsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | The ID of the enterprise.
cuEnterpriseId :: Lens' CollectionsUpdate' Text
cuEnterpriseId
  = lens _cuEnterpriseId
      (\ s a -> s{_cuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CollectionsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | The ID of the collection.
cuCollectionId :: Lens' CollectionsUpdate' Text
cuCollectionId
  = lens _cuCollectionId
      (\ s a -> s{_cuCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CollectionsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CollectionsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CollectionsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CollectionsUpdate' Alt
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CollectionsUpdate' where
        type Rs CollectionsUpdate' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint)
              _cuEnterpriseId
              _cuUserIp
              _cuCollectionId
              _cuKey
              _cuOauthToken
              _cuFields
              (Just _cuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsUpdateAPI)
                      r
                      u
