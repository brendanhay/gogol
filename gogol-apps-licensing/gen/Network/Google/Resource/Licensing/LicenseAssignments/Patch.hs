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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Assign License. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsPatch@.
module Network.Google.Resource.Licensing.LicenseAssignments.Patch
    (
    -- * REST Resource
      LicenseAssignmentsPatchResource

    -- * Creating a Request
    , licenseAssignmentsPatch'
    , LicenseAssignmentsPatch'

    -- * Request Lenses
    , lapQuotaUser
    , lapPrettyPrint
    , lapUserIP
    , lapLicenseAssignment
    , lapSkuId
    , lapUserId
    , lapKey
    , lapOAuthToken
    , lapProductId
    , lapFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsPatch@ which the
-- 'LicenseAssignmentsPatch'' request conforms to.
type LicenseAssignmentsPatchResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             Capture "userId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LicenseAssignment :>
                               Patch '[JSON] LicenseAssignment

-- | Assign License. This method supports patch semantics.
--
-- /See:/ 'licenseAssignmentsPatch'' smart constructor.
data LicenseAssignmentsPatch' = LicenseAssignmentsPatch'
    { _lapQuotaUser         :: !(Maybe Text)
    , _lapPrettyPrint       :: !Bool
    , _lapUserIP            :: !(Maybe Text)
    , _lapLicenseAssignment :: !LicenseAssignment
    , _lapSkuId             :: !Text
    , _lapUserId            :: !Text
    , _lapKey               :: !(Maybe Key)
    , _lapOAuthToken        :: !(Maybe OAuthToken)
    , _lapProductId         :: !Text
    , _lapFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapQuotaUser'
--
-- * 'lapPrettyPrint'
--
-- * 'lapUserIP'
--
-- * 'lapLicenseAssignment'
--
-- * 'lapSkuId'
--
-- * 'lapUserId'
--
-- * 'lapKey'
--
-- * 'lapOAuthToken'
--
-- * 'lapProductId'
--
-- * 'lapFields'
licenseAssignmentsPatch'
    :: LicenseAssignment -- ^ 'LicenseAssignment'
    -> Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsPatch'
licenseAssignmentsPatch' pLapLicenseAssignment_ pLapSkuId_ pLapUserId_ pLapProductId_ =
    LicenseAssignmentsPatch'
    { _lapQuotaUser = Nothing
    , _lapPrettyPrint = True
    , _lapUserIP = Nothing
    , _lapLicenseAssignment = pLapLicenseAssignment_
    , _lapSkuId = pLapSkuId_
    , _lapUserId = pLapUserId_
    , _lapKey = Nothing
    , _lapOAuthToken = Nothing
    , _lapProductId = pLapProductId_
    , _lapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lapQuotaUser :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapQuotaUser
  = lens _lapQuotaUser (\ s a -> s{_lapQuotaUser = a})

-- | Returns response with indentations and line breaks.
lapPrettyPrint :: Lens' LicenseAssignmentsPatch' Bool
lapPrettyPrint
  = lens _lapPrettyPrint
      (\ s a -> s{_lapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lapUserIP :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapUserIP
  = lens _lapUserIP (\ s a -> s{_lapUserIP = a})

-- | Multipart request metadata.
lapLicenseAssignment :: Lens' LicenseAssignmentsPatch' LicenseAssignment
lapLicenseAssignment
  = lens _lapLicenseAssignment
      (\ s a -> s{_lapLicenseAssignment = a})

-- | Name for sku for which license would be revoked
lapSkuId :: Lens' LicenseAssignmentsPatch' Text
lapSkuId = lens _lapSkuId (\ s a -> s{_lapSkuId = a})

-- | email id or unique Id of the user
lapUserId :: Lens' LicenseAssignmentsPatch' Text
lapUserId
  = lens _lapUserId (\ s a -> s{_lapUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lapKey :: Lens' LicenseAssignmentsPatch' (Maybe Key)
lapKey = lens _lapKey (\ s a -> s{_lapKey = a})

-- | OAuth 2.0 token for the current user.
lapOAuthToken :: Lens' LicenseAssignmentsPatch' (Maybe OAuthToken)
lapOAuthToken
  = lens _lapOAuthToken
      (\ s a -> s{_lapOAuthToken = a})

-- | Name for product
lapProductId :: Lens' LicenseAssignmentsPatch' Text
lapProductId
  = lens _lapProductId (\ s a -> s{_lapProductId = a})

-- | Selector specifying which fields to include in a partial response.
lapFields :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapFields
  = lens _lapFields (\ s a -> s{_lapFields = a})

instance GoogleAuth LicenseAssignmentsPatch' where
        authKey = lapKey . _Just
        authToken = lapOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsPatch' where
        type Rs LicenseAssignmentsPatch' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsPatch'{..}
          = go _lapProductId _lapSkuId _lapUserId _lapQuotaUser
              (Just _lapPrettyPrint)
              _lapUserIP
              _lapFields
              _lapKey
              _lapOAuthToken
              (Just AltJSON)
              _lapLicenseAssignment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsPatchResource)
                      r
                      u
