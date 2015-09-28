{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collectionviewers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.get@.
module Network.Google.API.Androidenterprise.Collectionviewers.Get
    (
    -- * REST Resource
      CollectionviewersGetAPI

    -- * Creating a Request
    , collectionviewersGet'
    , CollectionviewersGet'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cEnterpriseId
    , cUserIp
    , cCollectionId
    , cUserId
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collectionviewers.get which the
-- 'CollectionviewersGet'' request conforms to.
type CollectionviewersGetAPI =
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
                             QueryParam "alt" Alt :> Get '[JSON] User

-- | Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
--
-- /See:/ 'collectionviewersGet'' smart constructor.
data CollectionviewersGet' = CollectionviewersGet'
    { _cQuotaUser    :: !(Maybe Text)
    , _cPrettyPrint  :: !Bool
    , _cEnterpriseId :: !Text
    , _cUserIp       :: !(Maybe Text)
    , _cCollectionId :: !Text
    , _cUserId       :: !Text
    , _cKey          :: !(Maybe Text)
    , _cOauthToken   :: !(Maybe Text)
    , _cFields       :: !(Maybe Text)
    , _cAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cEnterpriseId'
--
-- * 'cUserIp'
--
-- * 'cCollectionId'
--
-- * 'cUserId'
--
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
collectionviewersGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersGet'
collectionviewersGet' pCEnterpriseId_ pCCollectionId_ pCUserId_ =
    CollectionviewersGet'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cEnterpriseId = pCEnterpriseId_
    , _cUserIp = Nothing
    , _cCollectionId = pCCollectionId_
    , _cUserId = pCUserId_
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CollectionviewersGet' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CollectionviewersGet' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | The ID of the enterprise.
cEnterpriseId :: Lens' CollectionviewersGet' Text
cEnterpriseId
  = lens _cEnterpriseId
      (\ s a -> s{_cEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CollectionviewersGet' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | The ID of the collection.
cCollectionId :: Lens' CollectionviewersGet' Text
cCollectionId
  = lens _cCollectionId
      (\ s a -> s{_cCollectionId = a})

-- | The ID of the user.
cUserId :: Lens' CollectionviewersGet' Text
cUserId = lens _cUserId (\ s a -> s{_cUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CollectionviewersGet' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CollectionviewersGet' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CollectionviewersGet' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CollectionviewersGet' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CollectionviewersGet' where
        type Rs CollectionviewersGet' = User
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersGet'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cEnterpriseId
              _cUserIp
              _cCollectionId
              _cUserId
              _cKey
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersGetAPI)
                      r
                      u
