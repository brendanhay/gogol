{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsList@.
module Network.Google.Resource.AndroidEnterprise.Collections.List
    (
    -- * REST Resource
      CollectionsListResource

    -- * Creating a Request
    , collectionsList'
    , CollectionsList'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cEnterpriseId
    , cUserIP
    , cKey
    , cOAuthToken
    , cFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsList@ which the
-- 'CollectionsList'' request conforms to.
type CollectionsListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CollectionsListResponse

-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ 'collectionsList'' smart constructor.
data CollectionsList' = CollectionsList'
    { _cQuotaUser    :: !(Maybe Text)
    , _cPrettyPrint  :: !Bool
    , _cEnterpriseId :: !Text
    , _cUserIP       :: !(Maybe Text)
    , _cKey          :: !(Maybe Key)
    , _cOAuthToken   :: !(Maybe OAuthToken)
    , _cFields       :: !(Maybe Text)
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
-- * 'cUserIP'
--
-- * 'cKey'
--
-- * 'cOAuthToken'
--
-- * 'cFields'
collectionsList'
    :: Text -- ^ 'enterpriseId'
    -> CollectionsList'
collectionsList' pCEnterpriseId_ =
    CollectionsList'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cEnterpriseId = pCEnterpriseId_
    , _cUserIP = Nothing
    , _cKey = Nothing
    , _cOAuthToken = Nothing
    , _cFields = Nothing
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
cUserIP :: Lens' CollectionsList' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CollectionsList' (Maybe Key)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' CollectionsList' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CollectionsList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth CollectionsList' where
        authKey = cKey . _Just
        authToken = cOAuthToken . _Just

instance GoogleRequest CollectionsList' where
        type Rs CollectionsList' = CollectionsListResponse
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionsList'{..}
          = go _cEnterpriseId _cQuotaUser (Just _cPrettyPrint)
              _cUserIP
              _cFields
              _cKey
              _cOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsListResource)
                      r
                      u
