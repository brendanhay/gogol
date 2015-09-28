{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collectionviewers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.delete@.
module Network.Google.API.Androidenterprise.Collectionviewers.Delete
    (
    -- * REST Resource
      CollectionviewersDeleteAPI

    -- * Creating a Request
    , collectionviewersDelete'
    , CollectionviewersDelete'

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddEnterpriseId
    , cddUserIp
    , cddCollectionId
    , cddUserId
    , cddKey
    , cddOauthToken
    , cddFields
    , cddAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collectionviewers.delete which the
-- 'CollectionviewersDelete'' request conforms to.
type CollectionviewersDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersDelete'' smart constructor.
data CollectionviewersDelete' = CollectionviewersDelete'
    { _cddQuotaUser    :: !(Maybe Text)
    , _cddPrettyPrint  :: !Bool
    , _cddEnterpriseId :: !Text
    , _cddUserIp       :: !(Maybe Text)
    , _cddCollectionId :: !Text
    , _cddUserId       :: !Text
    , _cddKey          :: !(Maybe Text)
    , _cddOauthToken   :: !(Maybe Text)
    , _cddFields       :: !(Maybe Text)
    , _cddAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddEnterpriseId'
--
-- * 'cddUserIp'
--
-- * 'cddCollectionId'
--
-- * 'cddUserId'
--
-- * 'cddKey'
--
-- * 'cddOauthToken'
--
-- * 'cddFields'
--
-- * 'cddAlt'
collectionviewersDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersDelete'
collectionviewersDelete' pCddEnterpriseId_ pCddCollectionId_ pCddUserId_ =
    CollectionviewersDelete'
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddEnterpriseId = pCddEnterpriseId_
    , _cddUserIp = Nothing
    , _cddCollectionId = pCddCollectionId_
    , _cddUserId = pCddUserId_
    , _cddKey = Nothing
    , _cddOauthToken = Nothing
    , _cddFields = Nothing
    , _cddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' CollectionviewersDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' CollectionviewersDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | The ID of the enterprise.
cddEnterpriseId :: Lens' CollectionviewersDelete' Text
cddEnterpriseId
  = lens _cddEnterpriseId
      (\ s a -> s{_cddEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIp :: Lens' CollectionviewersDelete' (Maybe Text)
cddUserIp
  = lens _cddUserIp (\ s a -> s{_cddUserIp = a})

-- | The ID of the collection.
cddCollectionId :: Lens' CollectionviewersDelete' Text
cddCollectionId
  = lens _cddCollectionId
      (\ s a -> s{_cddCollectionId = a})

-- | The ID of the user.
cddUserId :: Lens' CollectionviewersDelete' Text
cddUserId
  = lens _cddUserId (\ s a -> s{_cddUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' CollectionviewersDelete' (Maybe Text)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | OAuth 2.0 token for the current user.
cddOauthToken :: Lens' CollectionviewersDelete' (Maybe Text)
cddOauthToken
  = lens _cddOauthToken
      (\ s a -> s{_cddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CollectionviewersDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

-- | Data format for the response.
cddAlt :: Lens' CollectionviewersDelete' Alt
cddAlt = lens _cddAlt (\ s a -> s{_cddAlt = a})

instance GoogleRequest CollectionviewersDelete' where
        type Rs CollectionviewersDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersDelete'{..}
          = go _cddQuotaUser (Just _cddPrettyPrint)
              _cddEnterpriseId
              _cddUserIp
              _cddCollectionId
              _cddUserId
              _cddKey
              _cddOauthToken
              _cddFields
              (Just _cddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersDeleteAPI)
                      r
                      u
