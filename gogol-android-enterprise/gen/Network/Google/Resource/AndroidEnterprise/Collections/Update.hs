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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsUpdate@.
module Network.Google.Resource.AndroidEnterprise.Collections.Update
    (
    -- * REST Resource
      CollectionsUpdateResource

    -- * Creating a Request
    , collectionsUpdate'
    , CollectionsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuEnterpriseId
    , cuUserIP
    , cuCollectionId
    , cuCollection
    , cuKey
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsUpdate@ which the
-- 'CollectionsUpdate'' request conforms to.
type CollectionsUpdateResource =
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
                           ReqBody '[JSON] Collection :> Put '[JSON] Collection

-- | Updates a collection.
--
-- /See:/ 'collectionsUpdate'' smart constructor.
data CollectionsUpdate' = CollectionsUpdate'
    { _cuQuotaUser    :: !(Maybe Text)
    , _cuPrettyPrint  :: !Bool
    , _cuEnterpriseId :: !Text
    , _cuUserIP       :: !(Maybe Text)
    , _cuCollectionId :: !Text
    , _cuCollection   :: !Collection
    , _cuKey          :: !(Maybe Key)
    , _cuOAuthToken   :: !(Maybe OAuthToken)
    , _cuFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuEnterpriseId'
--
-- * 'cuUserIP'
--
-- * 'cuCollectionId'
--
-- * 'cuCollection'
--
-- * 'cuKey'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
collectionsUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Collection -- ^ 'Collection'
    -> CollectionsUpdate'
collectionsUpdate' pCuEnterpriseId_ pCuCollectionId_ pCuCollection_ =
    CollectionsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuEnterpriseId = pCuEnterpriseId_
    , _cuUserIP = Nothing
    , _cuCollectionId = pCuCollectionId_
    , _cuCollection = pCuCollection_
    , _cuKey = Nothing
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CollectionsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CollectionsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | The ID of the enterprise.
cuEnterpriseId :: Lens' CollectionsUpdate' Text
cuEnterpriseId
  = lens _cuEnterpriseId
      (\ s a -> s{_cuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' CollectionsUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | The ID of the collection.
cuCollectionId :: Lens' CollectionsUpdate' Text
cuCollectionId
  = lens _cuCollectionId
      (\ s a -> s{_cuCollectionId = a})

-- | Multipart request metadata.
cuCollection :: Lens' CollectionsUpdate' Collection
cuCollection
  = lens _cuCollection (\ s a -> s{_cuCollection = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CollectionsUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CollectionsUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CollectionsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CollectionsUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest CollectionsUpdate' where
        type Rs CollectionsUpdate' = Collection
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionsUpdate'{..}
          = go _cuEnterpriseId _cuCollectionId _cuQuotaUser
              (Just _cuPrettyPrint)
              _cuUserIP
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuCollection
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsUpdateResource)
                      r
                      u
