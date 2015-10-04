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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List license assignments for given product and sku of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsListForProductAndSKU@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSKU
    (
    -- * REST Resource
      LicenseAssignmentsListForProductAndSKUResource

    -- * Creating a Request
    , licenseAssignmentsListForProductAndSKU'
    , LicenseAssignmentsListForProductAndSKU'

    -- * Request Lenses
    , lalfpaskuQuotaUser
    , lalfpaskuPrettyPrint
    , lalfpaskuUserIP
    , lalfpaskuSKUId
    , lalfpaskuCustomerId
    , lalfpaskuKey
    , lalfpaskuPageToken
    , lalfpaskuOAuthToken
    , lalfpaskuProductId
    , lalfpaskuMaxResults
    , lalfpaskuFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsListForProductAndSKU@ which the
-- 'LicenseAssignmentsListForProductAndSKU'' request conforms to.
type LicenseAssignmentsListForProductAndSKUResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "users" :>
             QueryParam "customerId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] LicenseAssignmentList

-- | List license assignments for given product and sku of the customer.
--
-- /See:/ 'licenseAssignmentsListForProductAndSKU'' smart constructor.
data LicenseAssignmentsListForProductAndSKU' = LicenseAssignmentsListForProductAndSKU'
    { _lalfpaskuQuotaUser   :: !(Maybe Text)
    , _lalfpaskuPrettyPrint :: !Bool
    , _lalfpaskuUserIP      :: !(Maybe Text)
    , _lalfpaskuSKUId       :: !Text
    , _lalfpaskuCustomerId  :: !Text
    , _lalfpaskuKey         :: !(Maybe Key)
    , _lalfpaskuPageToken   :: !Text
    , _lalfpaskuOAuthToken  :: !(Maybe OAuthToken)
    , _lalfpaskuProductId   :: !Text
    , _lalfpaskuMaxResults  :: !Word32
    , _lalfpaskuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsListForProductAndSKU'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpaskuQuotaUser'
--
-- * 'lalfpaskuPrettyPrint'
--
-- * 'lalfpaskuUserIP'
--
-- * 'lalfpaskuSKUId'
--
-- * 'lalfpaskuCustomerId'
--
-- * 'lalfpaskuKey'
--
-- * 'lalfpaskuPageToken'
--
-- * 'lalfpaskuOAuthToken'
--
-- * 'lalfpaskuProductId'
--
-- * 'lalfpaskuMaxResults'
--
-- * 'lalfpaskuFields'
licenseAssignmentsListForProductAndSKU'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsListForProductAndSKU'
licenseAssignmentsListForProductAndSKU' pLalfpaskuSKUId_ pLalfpaskuCustomerId_ pLalfpaskuProductId_ =
    LicenseAssignmentsListForProductAndSKU'
    { _lalfpaskuQuotaUser = Nothing
    , _lalfpaskuPrettyPrint = True
    , _lalfpaskuUserIP = Nothing
    , _lalfpaskuSKUId = pLalfpaskuSKUId_
    , _lalfpaskuCustomerId = pLalfpaskuCustomerId_
    , _lalfpaskuKey = Nothing
    , _lalfpaskuPageToken = ""
    , _lalfpaskuOAuthToken = Nothing
    , _lalfpaskuProductId = pLalfpaskuProductId_
    , _lalfpaskuMaxResults = 100
    , _lalfpaskuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lalfpaskuQuotaUser :: Lens' LicenseAssignmentsListForProductAndSKU' (Maybe Text)
lalfpaskuQuotaUser
  = lens _lalfpaskuQuotaUser
      (\ s a -> s{_lalfpaskuQuotaUser = a})

-- | Returns response with indentations and line breaks.
lalfpaskuPrettyPrint :: Lens' LicenseAssignmentsListForProductAndSKU' Bool
lalfpaskuPrettyPrint
  = lens _lalfpaskuPrettyPrint
      (\ s a -> s{_lalfpaskuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lalfpaskuUserIP :: Lens' LicenseAssignmentsListForProductAndSKU' (Maybe Text)
lalfpaskuUserIP
  = lens _lalfpaskuUserIP
      (\ s a -> s{_lalfpaskuUserIP = a})

-- | Name for sku
lalfpaskuSKUId :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuSKUId
  = lens _lalfpaskuSKUId
      (\ s a -> s{_lalfpaskuSKUId = a})

-- | CustomerId represents the customer for whom licenseassignments are
-- queried
lalfpaskuCustomerId :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuCustomerId
  = lens _lalfpaskuCustomerId
      (\ s a -> s{_lalfpaskuCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lalfpaskuKey :: Lens' LicenseAssignmentsListForProductAndSKU' (Maybe Key)
lalfpaskuKey
  = lens _lalfpaskuKey (\ s a -> s{_lalfpaskuKey = a})

-- | Token to fetch the next page.Optional. By default server will return
-- first page
lalfpaskuPageToken :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuPageToken
  = lens _lalfpaskuPageToken
      (\ s a -> s{_lalfpaskuPageToken = a})

-- | OAuth 2.0 token for the current user.
lalfpaskuOAuthToken :: Lens' LicenseAssignmentsListForProductAndSKU' (Maybe OAuthToken)
lalfpaskuOAuthToken
  = lens _lalfpaskuOAuthToken
      (\ s a -> s{_lalfpaskuOAuthToken = a})

-- | Name for product
lalfpaskuProductId :: Lens' LicenseAssignmentsListForProductAndSKU' Text
lalfpaskuProductId
  = lens _lalfpaskuProductId
      (\ s a -> s{_lalfpaskuProductId = a})

-- | Maximum number of campaigns to return at one time. Must be positive.
-- Optional. Default value is 100.
lalfpaskuMaxResults :: Lens' LicenseAssignmentsListForProductAndSKU' Word32
lalfpaskuMaxResults
  = lens _lalfpaskuMaxResults
      (\ s a -> s{_lalfpaskuMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lalfpaskuFields :: Lens' LicenseAssignmentsListForProductAndSKU' (Maybe Text)
lalfpaskuFields
  = lens _lalfpaskuFields
      (\ s a -> s{_lalfpaskuFields = a})

instance GoogleAuth
         LicenseAssignmentsListForProductAndSKU' where
        authKey = lalfpaskuKey . _Just
        authToken = lalfpaskuOAuthToken . _Just

instance GoogleRequest
         LicenseAssignmentsListForProductAndSKU' where
        type Rs LicenseAssignmentsListForProductAndSKU' =
             LicenseAssignmentList
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u
          LicenseAssignmentsListForProductAndSKU'{..}
          = go _lalfpaskuProductId _lalfpaskuSKUId
              (Just _lalfpaskuCustomerId)
              (Just _lalfpaskuPageToken)
              (Just _lalfpaskuMaxResults)
              _lalfpaskuQuotaUser
              (Just _lalfpaskuPrettyPrint)
              _lalfpaskuUserIP
              _lalfpaskuFields
              _lalfpaskuKey
              _lalfpaskuOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductAndSKUResource)
                      r
                      u
