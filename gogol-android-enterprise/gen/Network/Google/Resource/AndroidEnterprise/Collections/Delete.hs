{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsDelete@.
module Network.Google.Resource.AndroidEnterprise.Collections.Delete
    (
    -- * REST Resource
      CollectionsDeleteResource

    -- * Creating a Request
    , collectionsDelete'
    , CollectionsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdEnterpriseId
    , cdUserIP
    , cdCollectionId
    , cdKey
    , cdOAuthToken
    , cdFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsDelete@ which the
-- 'CollectionsDelete'' request conforms to.
type CollectionsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a collection.
--
-- /See:/ 'collectionsDelete'' smart constructor.
data CollectionsDelete' = CollectionsDelete'
    { _cdQuotaUser    :: !(Maybe Text)
    , _cdPrettyPrint  :: !Bool
    , _cdEnterpriseId :: !Text
    , _cdUserIP       :: !(Maybe Text)
    , _cdCollectionId :: !Text
    , _cdKey          :: !(Maybe Key)
    , _cdOAuthToken   :: !(Maybe OAuthToken)
    , _cdFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdEnterpriseId'
--
-- * 'cdUserIP'
--
-- * 'cdCollectionId'
--
-- * 'cdKey'
--
-- * 'cdOAuthToken'
--
-- * 'cdFields'
collectionsDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsDelete'
collectionsDelete' pCdEnterpriseId_ pCdCollectionId_ =
    CollectionsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdEnterpriseId = pCdEnterpriseId_
    , _cdUserIP = Nothing
    , _cdCollectionId = pCdCollectionId_
    , _cdKey = Nothing
    , _cdOAuthToken = Nothing
    , _cdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CollectionsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CollectionsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | The ID of the enterprise.
cdEnterpriseId :: Lens' CollectionsDelete' Text
cdEnterpriseId
  = lens _cdEnterpriseId
      (\ s a -> s{_cdEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIP :: Lens' CollectionsDelete' (Maybe Text)
cdUserIP = lens _cdUserIP (\ s a -> s{_cdUserIP = a})

-- | The ID of the collection.
cdCollectionId :: Lens' CollectionsDelete' Text
cdCollectionId
  = lens _cdCollectionId
      (\ s a -> s{_cdCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CollectionsDelete' (Maybe Key)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' CollectionsDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CollectionsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

instance GoogleAuth CollectionsDelete' where
        authKey = cdKey . _Just
        authToken = cdOAuthToken . _Just

instance GoogleRequest CollectionsDelete' where
        type Rs CollectionsDelete' = ()
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionsDelete'{..}
          = go _cdEnterpriseId _cdCollectionId _cdQuotaUser
              (Just _cdPrettyPrint)
              _cdUserIP
              _cdFields
              _cdKey
              _cdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsDeleteResource)
                      r
                      u
