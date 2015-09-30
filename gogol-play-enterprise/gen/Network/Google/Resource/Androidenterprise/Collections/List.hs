{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionsList@.
module Androidenterprise.Collections.List
    (
    -- * REST Resource
      CollectionsListAPI

    -- * Creating a Request
    , collectionsList
    , CollectionsList

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cEnterpriseId
    , cUserIp
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionsList@ which the
-- 'CollectionsList' request conforms to.
type CollectionsListAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :> Get '[JSON] CollectionsListResponse

-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ 'collectionsList' smart constructor.
data CollectionsList = CollectionsList
    { _cQuotaUser    :: !(Maybe Text)
    , _cPrettyPrint  :: !Bool
    , _cEnterpriseId :: !Text
    , _cUserIp       :: !(Maybe Text)
    , _cKey          :: !(Maybe Text)
    , _cOauthToken   :: !(Maybe Text)
    , _cFields       :: !(Maybe Text)
    , _cAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsList'' with the minimum fields required to make a request.
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
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
collectionsList
    :: Text -- ^ 'enterpriseId'
    -> CollectionsList
collectionsList pCEnterpriseId_ =
    CollectionsList
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cEnterpriseId = pCEnterpriseId_
    , _cUserIp = Nothing
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CollectionsList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CollectionsList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | The ID of the enterprise.
cEnterpriseId :: Lens' CollectionsList' Text
cEnterpriseId
  = lens _cEnterpriseId
      (\ s a -> s{_cEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CollectionsList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CollectionsList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CollectionsList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CollectionsList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CollectionsList' Text
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CollectionsList' where
        type Rs CollectionsList' = CollectionsListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsList{..}
          = go _cQuotaUser _cPrettyPrint _cEnterpriseId
              _cUserIp
              _cKey
              _cOauthToken
              _cFields
              _cAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CollectionsListAPI)
                      r
                      u
