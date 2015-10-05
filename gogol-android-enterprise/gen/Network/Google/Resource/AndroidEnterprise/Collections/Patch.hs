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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsPatch@.
module Network.Google.Resource.AndroidEnterprise.Collections.Patch
    (
    -- * REST Resource
      CollectionsPatchResource

    -- * Creating a Request
    , collectionsPatch'
    , CollectionsPatch'

    -- * Request Lenses
    , colQuotaUser
    , colPrettyPrint
    , colEnterpriseId
    , colUserIP
    , colCollectionId
    , colPayload
    , colKey
    , colOAuthToken
    , colFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsPatch@ which the
-- 'CollectionsPatch'' request conforms to.
type CollectionsPatchResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Collection :>
                             Patch '[JSON] Collection

-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ 'collectionsPatch'' smart constructor.
data CollectionsPatch' = CollectionsPatch'
    { _colQuotaUser    :: !(Maybe Text)
    , _colPrettyPrint  :: !Bool
    , _colEnterpriseId :: !Text
    , _colUserIP       :: !(Maybe Text)
    , _colCollectionId :: !Text
    , _colPayload      :: !Collection
    , _colKey          :: !(Maybe Key)
    , _colOAuthToken   :: !(Maybe OAuthToken)
    , _colFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colQuotaUser'
--
-- * 'colPrettyPrint'
--
-- * 'colEnterpriseId'
--
-- * 'colUserIP'
--
-- * 'colCollectionId'
--
-- * 'colPayload'
--
-- * 'colKey'
--
-- * 'colOAuthToken'
--
-- * 'colFields'
collectionsPatch'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Collection -- ^ 'payload'
    -> CollectionsPatch'
collectionsPatch' pColEnterpriseId_ pColCollectionId_ pColPayload_ =
    CollectionsPatch'
    { _colQuotaUser = Nothing
    , _colPrettyPrint = True
    , _colEnterpriseId = pColEnterpriseId_
    , _colUserIP = Nothing
    , _colCollectionId = pColCollectionId_
    , _colPayload = pColPayload_
    , _colKey = Nothing
    , _colOAuthToken = Nothing
    , _colFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
colQuotaUser :: Lens' CollectionsPatch' (Maybe Text)
colQuotaUser
  = lens _colQuotaUser (\ s a -> s{_colQuotaUser = a})

-- | Returns response with indentations and line breaks.
colPrettyPrint :: Lens' CollectionsPatch' Bool
colPrettyPrint
  = lens _colPrettyPrint
      (\ s a -> s{_colPrettyPrint = a})

-- | The ID of the enterprise.
colEnterpriseId :: Lens' CollectionsPatch' Text
colEnterpriseId
  = lens _colEnterpriseId
      (\ s a -> s{_colEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
colUserIP :: Lens' CollectionsPatch' (Maybe Text)
colUserIP
  = lens _colUserIP (\ s a -> s{_colUserIP = a})

-- | The ID of the collection.
colCollectionId :: Lens' CollectionsPatch' Text
colCollectionId
  = lens _colCollectionId
      (\ s a -> s{_colCollectionId = a})

-- | Multipart request metadata.
colPayload :: Lens' CollectionsPatch' Collection
colPayload
  = lens _colPayload (\ s a -> s{_colPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
colKey :: Lens' CollectionsPatch' (Maybe Key)
colKey = lens _colKey (\ s a -> s{_colKey = a})

-- | OAuth 2.0 token for the current user.
colOAuthToken :: Lens' CollectionsPatch' (Maybe OAuthToken)
colOAuthToken
  = lens _colOAuthToken
      (\ s a -> s{_colOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
colFields :: Lens' CollectionsPatch' (Maybe Text)
colFields
  = lens _colFields (\ s a -> s{_colFields = a})

instance GoogleAuth CollectionsPatch' where
        authKey = colKey . _Just
        authToken = colOAuthToken . _Just

instance GoogleRequest CollectionsPatch' where
        type Rs CollectionsPatch' = Collection
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionsPatch'{..}
          = go _colEnterpriseId _colCollectionId _colQuotaUser
              (Just _colPrettyPrint)
              _colUserIP
              _colFields
              _colKey
              _colOAuthToken
              (Just AltJSON)
              _colPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsPatchResource)
                      r
                      u
