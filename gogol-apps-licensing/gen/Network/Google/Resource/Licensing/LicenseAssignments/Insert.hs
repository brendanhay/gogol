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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Assign License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsInsert@.
module Network.Google.Resource.Licensing.LicenseAssignments.Insert
    (
    -- * REST Resource
      LicenseAssignmentsInsertResource

    -- * Creating a Request
    , licenseAssignmentsInsert'
    , LicenseAssignmentsInsert'

    -- * Request Lenses
    , laiQuotaUser
    , laiPrettyPrint
    , laiLicenseAssignmentInsert
    , laiUserIP
    , laiSkuId
    , laiKey
    , laiOAuthToken
    , laiProductId
    , laiFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsInsert@ which the
-- 'LicenseAssignmentsInsert'' request conforms to.
type LicenseAssignmentsInsertResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LicenseAssignmentInsert :>
                             Post '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsInsert'' smart constructor.
data LicenseAssignmentsInsert' = LicenseAssignmentsInsert'
    { _laiQuotaUser               :: !(Maybe Text)
    , _laiPrettyPrint             :: !Bool
    , _laiLicenseAssignmentInsert :: !LicenseAssignmentInsert
    , _laiUserIP                  :: !(Maybe Text)
    , _laiSkuId                   :: !Text
    , _laiKey                     :: !(Maybe Key)
    , _laiOAuthToken              :: !(Maybe OAuthToken)
    , _laiProductId               :: !Text
    , _laiFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiQuotaUser'
--
-- * 'laiPrettyPrint'
--
-- * 'laiLicenseAssignmentInsert'
--
-- * 'laiUserIP'
--
-- * 'laiSkuId'
--
-- * 'laiKey'
--
-- * 'laiOAuthToken'
--
-- * 'laiProductId'
--
-- * 'laiFields'
licenseAssignmentsInsert'
    :: LicenseAssignmentInsert -- ^ 'LicenseAssignmentInsert'
    -> Text -- ^ 'skuId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsInsert'
licenseAssignmentsInsert' pLaiLicenseAssignmentInsert_ pLaiSkuId_ pLaiProductId_ =
    LicenseAssignmentsInsert'
    { _laiQuotaUser = Nothing
    , _laiPrettyPrint = True
    , _laiLicenseAssignmentInsert = pLaiLicenseAssignmentInsert_
    , _laiUserIP = Nothing
    , _laiSkuId = pLaiSkuId_
    , _laiKey = Nothing
    , _laiOAuthToken = Nothing
    , _laiProductId = pLaiProductId_
    , _laiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
laiQuotaUser :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiQuotaUser
  = lens _laiQuotaUser (\ s a -> s{_laiQuotaUser = a})

-- | Returns response with indentations and line breaks.
laiPrettyPrint :: Lens' LicenseAssignmentsInsert' Bool
laiPrettyPrint
  = lens _laiPrettyPrint
      (\ s a -> s{_laiPrettyPrint = a})

-- | Multipart request metadata.
laiLicenseAssignmentInsert :: Lens' LicenseAssignmentsInsert' LicenseAssignmentInsert
laiLicenseAssignmentInsert
  = lens _laiLicenseAssignmentInsert
      (\ s a -> s{_laiLicenseAssignmentInsert = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
laiUserIP :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiUserIP
  = lens _laiUserIP (\ s a -> s{_laiUserIP = a})

-- | Name for sku
laiSkuId :: Lens' LicenseAssignmentsInsert' Text
laiSkuId = lens _laiSkuId (\ s a -> s{_laiSkuId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
laiKey :: Lens' LicenseAssignmentsInsert' (Maybe Key)
laiKey = lens _laiKey (\ s a -> s{_laiKey = a})

-- | OAuth 2.0 token for the current user.
laiOAuthToken :: Lens' LicenseAssignmentsInsert' (Maybe OAuthToken)
laiOAuthToken
  = lens _laiOAuthToken
      (\ s a -> s{_laiOAuthToken = a})

-- | Name for product
laiProductId :: Lens' LicenseAssignmentsInsert' Text
laiProductId
  = lens _laiProductId (\ s a -> s{_laiProductId = a})

-- | Selector specifying which fields to include in a partial response.
laiFields :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiFields
  = lens _laiFields (\ s a -> s{_laiFields = a})

instance GoogleAuth LicenseAssignmentsInsert' where
        authKey = laiKey . _Just
        authToken = laiOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsInsert'
         where
        type Rs LicenseAssignmentsInsert' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsInsert'{..}
          = go _laiQuotaUser (Just _laiPrettyPrint) _laiUserIP
              _laiSkuId
              _laiKey
              _laiOAuthToken
              _laiProductId
              _laiFields
              (Just AltJSON)
              _laiLicenseAssignmentInsert
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsInsertResource)
                      r
                      u
