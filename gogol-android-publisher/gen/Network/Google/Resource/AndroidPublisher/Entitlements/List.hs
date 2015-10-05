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
-- Module      : Network.Google.Resource.AndroidPublisher.Entitlements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the user\'s current inapp item or subscription entitlements
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEntitlementsList@.
module Network.Google.Resource.AndroidPublisher.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListResource

    -- * Creating a Request
    , entitlementsList'
    , EntitlementsList'

    -- * Request Lenses
    , elQuotaUser
    , elPrettyPrint
    , elPackageName
    , elUserIP
    , elToken
    , elKey
    , elOAuthToken
    , elStartIndex
    , elProductId
    , elMaxResults
    , elFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEntitlementsList@ which the
-- 'EntitlementsList'' request conforms to.
type EntitlementsListResource =
     Capture "packageName" Text :>
       "entitlements" :>
         QueryParam "token" Text :>
           QueryParam "startIndex" Word32 :>
             QueryParam "productId" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] EntitlementsListResponse

-- | Lists the user\'s current inapp item or subscription entitlements
--
-- /See:/ 'entitlementsList'' smart constructor.
data EntitlementsList' = EntitlementsList'
    { _elQuotaUser   :: !(Maybe Text)
    , _elPrettyPrint :: !Bool
    , _elPackageName :: !Text
    , _elUserIP      :: !(Maybe Text)
    , _elToken       :: !(Maybe Text)
    , _elKey         :: !(Maybe AuthKey)
    , _elOAuthToken  :: !(Maybe OAuthToken)
    , _elStartIndex  :: !(Maybe Word32)
    , _elProductId   :: !(Maybe Text)
    , _elMaxResults  :: !(Maybe Word32)
    , _elFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elQuotaUser'
--
-- * 'elPrettyPrint'
--
-- * 'elPackageName'
--
-- * 'elUserIP'
--
-- * 'elToken'
--
-- * 'elKey'
--
-- * 'elOAuthToken'
--
-- * 'elStartIndex'
--
-- * 'elProductId'
--
-- * 'elMaxResults'
--
-- * 'elFields'
entitlementsList'
    :: Text -- ^ 'packageName'
    -> EntitlementsList'
entitlementsList' pElPackageName_ =
    EntitlementsList'
    { _elQuotaUser = Nothing
    , _elPrettyPrint = True
    , _elPackageName = pElPackageName_
    , _elUserIP = Nothing
    , _elToken = Nothing
    , _elKey = Nothing
    , _elOAuthToken = Nothing
    , _elStartIndex = Nothing
    , _elProductId = Nothing
    , _elMaxResults = Nothing
    , _elFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elQuotaUser :: Lens' EntitlementsList' (Maybe Text)
elQuotaUser
  = lens _elQuotaUser (\ s a -> s{_elQuotaUser = a})

-- | Returns response with indentations and line breaks.
elPrettyPrint :: Lens' EntitlementsList' Bool
elPrettyPrint
  = lens _elPrettyPrint
      (\ s a -> s{_elPrettyPrint = a})

-- | The package name of the application the inapp product was sold in (for
-- example, \'com.some.thing\').
elPackageName :: Lens' EntitlementsList' Text
elPackageName
  = lens _elPackageName
      (\ s a -> s{_elPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elUserIP :: Lens' EntitlementsList' (Maybe Text)
elUserIP = lens _elUserIP (\ s a -> s{_elUserIP = a})

elToken :: Lens' EntitlementsList' (Maybe Text)
elToken = lens _elToken (\ s a -> s{_elToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elKey :: Lens' EntitlementsList' (Maybe AuthKey)
elKey = lens _elKey (\ s a -> s{_elKey = a})

-- | OAuth 2.0 token for the current user.
elOAuthToken :: Lens' EntitlementsList' (Maybe OAuthToken)
elOAuthToken
  = lens _elOAuthToken (\ s a -> s{_elOAuthToken = a})

elStartIndex :: Lens' EntitlementsList' (Maybe Word32)
elStartIndex
  = lens _elStartIndex (\ s a -> s{_elStartIndex = a})

-- | The product id of the inapp product (for example, \'sku1\'). This can be
-- used to restrict the result set.
elProductId :: Lens' EntitlementsList' (Maybe Text)
elProductId
  = lens _elProductId (\ s a -> s{_elProductId = a})

elMaxResults :: Lens' EntitlementsList' (Maybe Word32)
elMaxResults
  = lens _elMaxResults (\ s a -> s{_elMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
elFields :: Lens' EntitlementsList' (Maybe Text)
elFields = lens _elFields (\ s a -> s{_elFields = a})

instance GoogleAuth EntitlementsList' where
        authKey = elKey . _Just
        authToken = elOAuthToken . _Just

instance GoogleRequest EntitlementsList' where
        type Rs EntitlementsList' = EntitlementsListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EntitlementsList'{..}
          = go _elPackageName _elToken _elStartIndex
              _elProductId
              _elMaxResults
              _elQuotaUser
              (Just _elPrettyPrint)
              _elUserIP
              _elFields
              _elKey
              _elOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EntitlementsListResource)
                      r
                      u
