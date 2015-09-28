{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.patch@.
module Network.Google.API.Androidenterprise.Collections.Patch
    (
    -- * REST Resource
      CollectionsPatchAPI

    -- * Creating a Request
    , collectionsPatch'
    , CollectionsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpEnterpriseId
    , cpUserIp
    , cpCollectionId
    , cpKey
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collections.patch which the
-- 'CollectionsPatch'' request conforms to.
type CollectionsPatchAPI =
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
                         QueryParam "alt" Alt :> Patch '[JSON] Collection

-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ 'collectionsPatch'' smart constructor.
data CollectionsPatch' = CollectionsPatch'
    { _cpQuotaUser    :: !(Maybe Text)
    , _cpPrettyPrint  :: !Bool
    , _cpEnterpriseId :: !Text
    , _cpUserIp       :: !(Maybe Text)
    , _cpCollectionId :: !Text
    , _cpKey          :: !(Maybe Text)
    , _cpOauthToken   :: !(Maybe Text)
    , _cpFields       :: !(Maybe Text)
    , _cpAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpEnterpriseId'
--
-- * 'cpUserIp'
--
-- * 'cpCollectionId'
--
-- * 'cpKey'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
collectionsPatch'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsPatch'
collectionsPatch' pCpEnterpriseId_ pCpCollectionId_ =
    CollectionsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpEnterpriseId = pCpEnterpriseId_
    , _cpUserIp = Nothing
    , _cpCollectionId = pCpCollectionId_
    , _cpKey = Nothing
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CollectionsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CollectionsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | The ID of the enterprise.
cpEnterpriseId :: Lens' CollectionsPatch' Text
cpEnterpriseId
  = lens _cpEnterpriseId
      (\ s a -> s{_cpEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' CollectionsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | The ID of the collection.
cpCollectionId :: Lens' CollectionsPatch' Text
cpCollectionId
  = lens _cpCollectionId
      (\ s a -> s{_cpCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CollectionsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CollectionsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CollectionsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CollectionsPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CollectionsPatch' where
        type Rs CollectionsPatch' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint)
              _cpEnterpriseId
              _cpUserIp
              _cpCollectionId
              _cpKey
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsPatchAPI)
                      r
                      u
