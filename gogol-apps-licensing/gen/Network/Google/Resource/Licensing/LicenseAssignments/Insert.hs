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
    , laiUserIP
    , laiSKUId
    , laiPayload
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] LicenseAssignmentInsert :>
                             Post '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsInsert'' smart constructor.
data LicenseAssignmentsInsert' = LicenseAssignmentsInsert'
    { _laiQuotaUser   :: !(Maybe Text)
    , _laiPrettyPrint :: !Bool
    , _laiUserIP      :: !(Maybe Text)
    , _laiSKUId       :: !Text
    , _laiPayload     :: !LicenseAssignmentInsert
    , _laiKey         :: !(Maybe Key)
    , _laiOAuthToken  :: !(Maybe OAuthToken)
    , _laiProductId   :: !Text
    , _laiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiQuotaUser'
--
-- * 'laiPrettyPrint'
--
-- * 'laiUserIP'
--
-- * 'laiSKUId'
--
-- * 'laiPayload'
--
-- * 'laiKey'
--
-- * 'laiOAuthToken'
--
-- * 'laiProductId'
--
-- * 'laiFields'
licenseAssignmentsInsert'
    :: Text -- ^ 'skuId'
    -> LicenseAssignmentInsert -- ^ 'payload'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsInsert'
licenseAssignmentsInsert' pLaiSKUId_ pLaiPayload_ pLaiProductId_ =
    LicenseAssignmentsInsert'
    { _laiQuotaUser = Nothing
    , _laiPrettyPrint = True
    , _laiUserIP = Nothing
    , _laiSKUId = pLaiSKUId_
    , _laiPayload = pLaiPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
laiUserIP :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiUserIP
  = lens _laiUserIP (\ s a -> s{_laiUserIP = a})

-- | Name for sku
laiSKUId :: Lens' LicenseAssignmentsInsert' Text
laiSKUId = lens _laiSKUId (\ s a -> s{_laiSKUId = a})

-- | Multipart request metadata.
laiPayload :: Lens' LicenseAssignmentsInsert' LicenseAssignmentInsert
laiPayload
  = lens _laiPayload (\ s a -> s{_laiPayload = a})

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
          = go _laiProductId _laiSKUId _laiQuotaUser
              (Just _laiPrettyPrint)
              _laiUserIP
              _laiFields
              _laiKey
              _laiOAuthToken
              (Just AltJSON)
              _laiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsInsertResource)
                      r
                      u
