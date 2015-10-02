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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get license assignment of a particular product and sku for a user
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsGet@.
module Network.Google.Resource.Licensing.LicenseAssignments.Get
    (
    -- * REST Resource
      LicenseAssignmentsGetResource

    -- * Creating a Request
    , licenseAssignmentsGet'
    , LicenseAssignmentsGet'

    -- * Request Lenses
    , lagQuotaUser
    , lagPrettyPrint
    , lagUserIP
    , lagSkuId
    , lagUserId
    , lagKey
    , lagOAuthToken
    , lagProductId
    , lagFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsGet@ which the
-- 'LicenseAssignmentsGet'' request conforms to.
type LicenseAssignmentsGetResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             Capture "userId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LicenseAssignment

-- | Get license assignment of a particular product and sku for a user
--
-- /See:/ 'licenseAssignmentsGet'' smart constructor.
data LicenseAssignmentsGet' = LicenseAssignmentsGet'
    { _lagQuotaUser   :: !(Maybe Text)
    , _lagPrettyPrint :: !Bool
    , _lagUserIP      :: !(Maybe Text)
    , _lagSkuId       :: !Text
    , _lagUserId      :: !Text
    , _lagKey         :: !(Maybe Key)
    , _lagOAuthToken  :: !(Maybe OAuthToken)
    , _lagProductId   :: !Text
    , _lagFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagQuotaUser'
--
-- * 'lagPrettyPrint'
--
-- * 'lagUserIP'
--
-- * 'lagSkuId'
--
-- * 'lagUserId'
--
-- * 'lagKey'
--
-- * 'lagOAuthToken'
--
-- * 'lagProductId'
--
-- * 'lagFields'
licenseAssignmentsGet'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsGet'
licenseAssignmentsGet' pLagSkuId_ pLagUserId_ pLagProductId_ =
    LicenseAssignmentsGet'
    { _lagQuotaUser = Nothing
    , _lagPrettyPrint = True
    , _lagUserIP = Nothing
    , _lagSkuId = pLagSkuId_
    , _lagUserId = pLagUserId_
    , _lagKey = Nothing
    , _lagOAuthToken = Nothing
    , _lagProductId = pLagProductId_
    , _lagFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lagQuotaUser :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagQuotaUser
  = lens _lagQuotaUser (\ s a -> s{_lagQuotaUser = a})

-- | Returns response with indentations and line breaks.
lagPrettyPrint :: Lens' LicenseAssignmentsGet' Bool
lagPrettyPrint
  = lens _lagPrettyPrint
      (\ s a -> s{_lagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lagUserIP :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagUserIP
  = lens _lagUserIP (\ s a -> s{_lagUserIP = a})

-- | Name for sku
lagSkuId :: Lens' LicenseAssignmentsGet' Text
lagSkuId = lens _lagSkuId (\ s a -> s{_lagSkuId = a})

-- | email id or unique Id of the user
lagUserId :: Lens' LicenseAssignmentsGet' Text
lagUserId
  = lens _lagUserId (\ s a -> s{_lagUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lagKey :: Lens' LicenseAssignmentsGet' (Maybe Key)
lagKey = lens _lagKey (\ s a -> s{_lagKey = a})

-- | OAuth 2.0 token for the current user.
lagOAuthToken :: Lens' LicenseAssignmentsGet' (Maybe OAuthToken)
lagOAuthToken
  = lens _lagOAuthToken
      (\ s a -> s{_lagOAuthToken = a})

-- | Name for product
lagProductId :: Lens' LicenseAssignmentsGet' Text
lagProductId
  = lens _lagProductId (\ s a -> s{_lagProductId = a})

-- | Selector specifying which fields to include in a partial response.
lagFields :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagFields
  = lens _lagFields (\ s a -> s{_lagFields = a})

instance GoogleAuth LicenseAssignmentsGet' where
        authKey = lagKey . _Just
        authToken = lagOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsGet' where
        type Rs LicenseAssignmentsGet' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsGet'{..}
          = go _lagQuotaUser (Just _lagPrettyPrint) _lagUserIP
              _lagSkuId
              _lagUserId
              _lagKey
              _lagOAuthToken
              _lagProductId
              _lagFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsGetResource)
                      r
                      u
