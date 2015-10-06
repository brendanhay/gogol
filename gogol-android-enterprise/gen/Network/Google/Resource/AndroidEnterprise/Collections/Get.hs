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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the details of a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsGet@.
module Network.Google.Resource.AndroidEnterprise.Collections.Get
    (
    -- * REST Resource
      CollectionsGetResource

    -- * Creating a Request
    , collectionsGet'
    , CollectionsGet'

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggEnterpriseId
    , cggUserIP
    , cggCollectionId
    , cggKey
    , cggOAuthToken
    , cggFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsGet@ which the
-- 'CollectionsGet'' request conforms to.
type CollectionsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Collection

-- | Retrieves the details of a collection.
--
-- /See:/ 'collectionsGet'' smart constructor.
data CollectionsGet' = CollectionsGet'
    { _cggQuotaUser    :: !(Maybe Text)
    , _cggPrettyPrint  :: !Bool
    , _cggEnterpriseId :: !Text
    , _cggUserIP       :: !(Maybe Text)
    , _cggCollectionId :: !Text
    , _cggKey          :: !(Maybe AuthKey)
    , _cggOAuthToken   :: !(Maybe OAuthToken)
    , _cggFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggEnterpriseId'
--
-- * 'cggUserIP'
--
-- * 'cggCollectionId'
--
-- * 'cggKey'
--
-- * 'cggOAuthToken'
--
-- * 'cggFields'
collectionsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsGet'
collectionsGet' pCggEnterpriseId_ pCggCollectionId_ =
    CollectionsGet'
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggEnterpriseId = pCggEnterpriseId_
    , _cggUserIP = Nothing
    , _cggCollectionId = pCggCollectionId_
    , _cggKey = Nothing
    , _cggOAuthToken = Nothing
    , _cggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CollectionsGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CollectionsGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | The ID of the enterprise.
cggEnterpriseId :: Lens' CollectionsGet' Text
cggEnterpriseId
  = lens _cggEnterpriseId
      (\ s a -> s{_cggEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIP :: Lens' CollectionsGet' (Maybe Text)
cggUserIP
  = lens _cggUserIP (\ s a -> s{_cggUserIP = a})

-- | The ID of the collection.
cggCollectionId :: Lens' CollectionsGet' Text
cggCollectionId
  = lens _cggCollectionId
      (\ s a -> s{_cggCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CollectionsGet' (Maybe AuthKey)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | OAuth 2.0 token for the current user.
cggOAuthToken :: Lens' CollectionsGet' (Maybe OAuthToken)
cggOAuthToken
  = lens _cggOAuthToken
      (\ s a -> s{_cggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CollectionsGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

instance GoogleAuth CollectionsGet' where
        _AuthKey = cggKey . _Just
        _AuthToken = cggOAuthToken . _Just

instance GoogleRequest CollectionsGet' where
        type Rs CollectionsGet' = Collection
        request = requestWith androidEnterpriseRequest
        requestWith rq CollectionsGet'{..}
          = go _cggEnterpriseId _cggCollectionId _cggQuotaUser
              (Just _cggPrettyPrint)
              _cggUserIP
              _cggFields
              _cggKey
              _cggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CollectionsGetResource)
                      rq
