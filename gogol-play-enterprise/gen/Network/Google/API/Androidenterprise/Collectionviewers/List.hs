{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collectionviewers.List
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.list@.
module Network.Google.API.Androidenterprise.Collectionviewers.List
    (
    -- * REST Resource
      CollectionviewersListAPI

    -- * Creating a Request
    , collectionviewersList'
    , CollectionviewersList'

    -- * Request Lenses
    , cllQuotaUser
    , cllPrettyPrint
    , cllEnterpriseId
    , cllUserIp
    , cllCollectionId
    , cllKey
    , cllOauthToken
    , cllFields
    , cllAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collectionviewers.list which the
-- 'CollectionviewersList'' request conforms to.
type CollectionviewersListAPI =
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
    { _cllQuotaUser    :: !(Maybe Text)
    , _cllPrettyPrint  :: !Bool
    , _cllEnterpriseId :: !Text
    , _cllUserIp       :: !(Maybe Text)
    , _cllCollectionId :: !Text
    , _cllKey          :: !(Maybe Text)
    , _cllOauthToken   :: !(Maybe Text)
    , _cllFields       :: !(Maybe Text)
    , _cllAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllEnterpriseId'
--
-- * 'cllUserIp'
--
-- * 'cllCollectionId'
--
-- * 'cllKey'
--
-- * 'cllOauthToken'
--
-- * 'cllFields'
--
-- * 'cllAlt'
collectionviewersList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionviewersList'
collectionviewersList' pCllEnterpriseId_ pCllCollectionId_ =
    CollectionviewersList'
    { _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllEnterpriseId = pCllEnterpriseId_
    , _cllUserIp = Nothing
    , _cllCollectionId = pCllCollectionId_
    , _cllKey = Nothing
    , _cllOauthToken = Nothing
    , _cllFields = Nothing
    , _cllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' CollectionviewersList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' CollectionviewersList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | The ID of the enterprise.
cllEnterpriseId :: Lens' CollectionviewersList' Text
cllEnterpriseId
  = lens _cllEnterpriseId
      (\ s a -> s{_cllEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' CollectionviewersList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | The ID of the collection.
cllCollectionId :: Lens' CollectionviewersList' Text
cllCollectionId
  = lens _cllCollectionId
      (\ s a -> s{_cllCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' CollectionviewersList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' CollectionviewersList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' CollectionviewersList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' CollectionviewersList' Alt
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest CollectionviewersList' where
        type Rs CollectionviewersList' =
             CollectionViewersListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersList'{..}
          = go _cllQuotaUser (Just _cllPrettyPrint)
              _cllEnterpriseId
              _cllUserIp
              _cllCollectionId
              _cllKey
              _cllOauthToken
              _cllFields
              (Just _cllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersListAPI)
                      r
                      u
