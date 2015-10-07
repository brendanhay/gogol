{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.List
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersList@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.List
    (
    -- * REST Resource
      CollectionviewersListResource

    -- * Creating a Request
    , collectionviewersList'
    , CollectionviewersList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clEnterpriseId
    , clUserIP
    , clCollectionId
    , clKey
    , clOAuthToken
    , clFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersList@ method which the
-- 'CollectionviewersList'' request conforms to.
type CollectionviewersListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] CollectionViewersListResponse

-- | Retrieves the IDs of the users who have been specifically allowed to see
-- the collection. If the collection\'s visibility is set to viewersOnly
-- then only these users will see the collection.
--
-- /See:/ 'collectionviewersList'' smart constructor.
data CollectionviewersList' = CollectionviewersList'
    { _clQuotaUser    :: !(Maybe Text)
    , _clPrettyPrint  :: !Bool
    , _clEnterpriseId :: !Text
    , _clUserIP       :: !(Maybe Text)
    , _clCollectionId :: !Text
    , _clKey          :: !(Maybe AuthKey)
    , _clOAuthToken   :: !(Maybe OAuthToken)
    , _clFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clEnterpriseId'
--
-- * 'clUserIP'
--
-- * 'clCollectionId'
--
-- * 'clKey'
--
-- * 'clOAuthToken'
--
-- * 'clFields'
collectionviewersList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionviewersList'
collectionviewersList' pClEnterpriseId_ pClCollectionId_ =
    CollectionviewersList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clEnterpriseId = pClEnterpriseId_
    , _clUserIP = Nothing
    , _clCollectionId = pClCollectionId_
    , _clKey = Nothing
    , _clOAuthToken = Nothing
    , _clFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CollectionviewersList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CollectionviewersList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | The ID of the enterprise.
clEnterpriseId :: Lens' CollectionviewersList' Text
clEnterpriseId
  = lens _clEnterpriseId
      (\ s a -> s{_clEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIP :: Lens' CollectionviewersList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | The ID of the collection.
clCollectionId :: Lens' CollectionviewersList' Text
clCollectionId
  = lens _clCollectionId
      (\ s a -> s{_clCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CollectionviewersList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' CollectionviewersList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CollectionviewersList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

instance GoogleAuth CollectionviewersList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest CollectionviewersList' where
        type Rs CollectionviewersList' =
             CollectionViewersListResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq CollectionviewersList'{..}
          = go _clEnterpriseId _clCollectionId _clQuotaUser
              (Just _clPrettyPrint)
              _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CollectionviewersListResource)
                      rq
