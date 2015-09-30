{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collectionviewers.Update
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionviewersUpdate@.
module Androidenterprise.Collectionviewers.Update
    (
    -- * REST Resource
      CollectionviewersUpdateAPI

    -- * Creating a Request
    , collectionviewersUpdate
    , CollectionviewersUpdate

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuEnterpriseId
    , cuUserIp
    , cuCollectionId
    , cuUserId
    , cuKey
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionviewersUpdate@ which the
-- 'CollectionviewersUpdate' request conforms to.
type CollectionviewersUpdateAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :> Capture "userId" Text :> Put '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersUpdate' smart constructor.
data CollectionviewersUpdate = CollectionviewersUpdate
    { _cuQuotaUser    :: !(Maybe Text)
    , _cuPrettyPrint  :: !Bool
    , _cuEnterpriseId :: !Text
    , _cuUserIp       :: !(Maybe Text)
    , _cuCollectionId :: !Text
    , _cuUserId       :: !Text
    , _cuKey          :: !(Maybe Text)
    , _cuOauthToken   :: !(Maybe Text)
    , _cuFields       :: !(Maybe Text)
    , _cuAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersUpdate'' with the minimum fields required to make a request.
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
-- * 'cuUserId'
--
-- * 'cuKey'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
collectionviewersUpdate
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersUpdate
collectionviewersUpdate pCuEnterpriseId_ pCuCollectionId_ pCuUserId_ =
    CollectionviewersUpdate
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuEnterpriseId = pCuEnterpriseId_
    , _cuUserIp = Nothing
    , _cuCollectionId = pCuCollectionId_
    , _cuUserId = pCuUserId_
    , _cuKey = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CollectionviewersUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CollectionviewersUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | The ID of the enterprise.
cuEnterpriseId :: Lens' CollectionviewersUpdate' Text
cuEnterpriseId
  = lens _cuEnterpriseId
      (\ s a -> s{_cuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CollectionviewersUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | The ID of the collection.
cuCollectionId :: Lens' CollectionviewersUpdate' Text
cuCollectionId
  = lens _cuCollectionId
      (\ s a -> s{_cuCollectionId = a})

-- | The ID of the user.
cuUserId :: Lens' CollectionviewersUpdate' Text
cuUserId = lens _cuUserId (\ s a -> s{_cuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CollectionviewersUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CollectionviewersUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CollectionviewersUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CollectionviewersUpdate' Text
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CollectionviewersUpdate' where
        type Rs CollectionviewersUpdate' = User
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersUpdate{..}
          = go _cuQuotaUser _cuPrettyPrint _cuEnterpriseId
              _cuUserIp
              _cuCollectionId
              _cuUserId
              _cuKey
              _cuOauthToken
              _cuFields
              _cuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersUpdateAPI)
                      r
                      u
