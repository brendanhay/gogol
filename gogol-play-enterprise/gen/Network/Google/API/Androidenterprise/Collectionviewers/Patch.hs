{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collectionviewers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.patch@.
module Network.Google.API.Androidenterprise.Collectionviewers.Patch
    (
    -- * REST Resource
      CollectionviewersPatchAPI

    -- * Creating a Request
    , collectionviewersPatch'
    , CollectionviewersPatch'

    -- * Request Lenses
    , colQuotaUser
    , colPrettyPrint
    , colEnterpriseId
    , colUserIp
    , colCollectionId
    , colUserId
    , colKey
    , colOauthToken
    , colFields
    , colAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collectionviewers.patch which the
-- 'CollectionviewersPatch'' request conforms to.
type CollectionviewersPatchAPI =
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
                             QueryParam "alt" Alt :> Patch '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ 'collectionviewersPatch'' smart constructor.
data CollectionviewersPatch' = CollectionviewersPatch'
    { _colQuotaUser    :: !(Maybe Text)
    , _colPrettyPrint  :: !Bool
    , _colEnterpriseId :: !Text
    , _colUserIp       :: !(Maybe Text)
    , _colCollectionId :: !Text
    , _colUserId       :: !Text
    , _colKey          :: !(Maybe Text)
    , _colOauthToken   :: !(Maybe Text)
    , _colFields       :: !(Maybe Text)
    , _colAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersPatch'' with the minimum fields required to make a request.
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
-- * 'colUserId'
--
-- * 'colKey'
--
-- * 'colOauthToken'
--
-- * 'colFields'
--
-- * 'colAlt'
collectionviewersPatch'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersPatch'
collectionviewersPatch' pColEnterpriseId_ pColCollectionId_ pColUserId_ =
    CollectionviewersPatch'
    { _colQuotaUser = Nothing
    , _colPrettyPrint = True
    , _colEnterpriseId = pColEnterpriseId_
    , _colUserIp = Nothing
    , _colCollectionId = pColCollectionId_
    , _colUserId = pColUserId_
    , _colKey = Nothing
    , _colOauthToken = Nothing
    , _colFields = Nothing
    , _colAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
colQuotaUser :: Lens' CollectionviewersPatch' (Maybe Text)
colQuotaUser
  = lens _colQuotaUser (\ s a -> s{_colQuotaUser = a})

-- | Returns response with indentations and line breaks.
colPrettyPrint :: Lens' CollectionviewersPatch' Bool
colPrettyPrint
  = lens _colPrettyPrint
      (\ s a -> s{_colPrettyPrint = a})

-- | The ID of the enterprise.
colEnterpriseId :: Lens' CollectionviewersPatch' Text
colEnterpriseId
  = lens _colEnterpriseId
      (\ s a -> s{_colEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
colUserIp :: Lens' CollectionviewersPatch' (Maybe Text)
colUserIp
  = lens _colUserIp (\ s a -> s{_colUserIp = a})

-- | The ID of the collection.
colCollectionId :: Lens' CollectionviewersPatch' Text
colCollectionId
  = lens _colCollectionId
      (\ s a -> s{_colCollectionId = a})

-- | The ID of the user.
colUserId :: Lens' CollectionviewersPatch' Text
colUserId
  = lens _colUserId (\ s a -> s{_colUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
colKey :: Lens' CollectionviewersPatch' (Maybe Text)
colKey = lens _colKey (\ s a -> s{_colKey = a})

-- | OAuth 2.0 token for the current user.
colOauthToken :: Lens' CollectionviewersPatch' (Maybe Text)
colOauthToken
  = lens _colOauthToken
      (\ s a -> s{_colOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
colFields :: Lens' CollectionviewersPatch' (Maybe Text)
colFields
  = lens _colFields (\ s a -> s{_colFields = a})

-- | Data format for the response.
colAlt :: Lens' CollectionviewersPatch' Alt
colAlt = lens _colAlt (\ s a -> s{_colAlt = a})

instance GoogleRequest CollectionviewersPatch' where
        type Rs CollectionviewersPatch' = User
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersPatch'{..}
          = go _colQuotaUser (Just _colPrettyPrint)
              _colEnterpriseId
              _colUserIp
              _colCollectionId
              _colUserId
              _colKey
              _colOauthToken
              _colFields
              (Just _colAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersPatchAPI)
                      r
                      u
