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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List license assignments for given product of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsListForProduct@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProduct
    (
    -- * REST Resource
      LicenseAssignmentsListForProductResource

    -- * Creating a Request
    , licenseAssignmentsListForProduct'
    , LicenseAssignmentsListForProduct'

    -- * Request Lenses
    , lalfpQuotaUser
    , lalfpPrettyPrint
    , lalfpUserIP
    , lalfpCustomerId
    , lalfpKey
    , lalfpPageToken
    , lalfpOAuthToken
    , lalfpProductId
    , lalfpMaxResults
    , lalfpFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsListForProduct@ which the
-- 'LicenseAssignmentsListForProduct'' request conforms to.
type LicenseAssignmentsListForProductResource =
     Capture "productId" Text :>
       "users" :>
         QueryParam "customerId" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LicenseAssignmentList

-- | List license assignments for given product of the customer.
--
-- /See:/ 'licenseAssignmentsListForProduct'' smart constructor.
data LicenseAssignmentsListForProduct' = LicenseAssignmentsListForProduct'
    { _lalfpQuotaUser   :: !(Maybe Text)
    , _lalfpPrettyPrint :: !Bool
    , _lalfpUserIP      :: !(Maybe Text)
    , _lalfpCustomerId  :: !Text
    , _lalfpKey         :: !(Maybe AuthKey)
    , _lalfpPageToken   :: !Text
    , _lalfpOAuthToken  :: !(Maybe OAuthToken)
    , _lalfpProductId   :: !Text
    , _lalfpMaxResults  :: !Word32
    , _lalfpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsListForProduct'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpQuotaUser'
--
-- * 'lalfpPrettyPrint'
--
-- * 'lalfpUserIP'
--
-- * 'lalfpCustomerId'
--
-- * 'lalfpKey'
--
-- * 'lalfpPageToken'
--
-- * 'lalfpOAuthToken'
--
-- * 'lalfpProductId'
--
-- * 'lalfpMaxResults'
--
-- * 'lalfpFields'
licenseAssignmentsListForProduct'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsListForProduct'
licenseAssignmentsListForProduct' pLalfpCustomerId_ pLalfpProductId_ =
    LicenseAssignmentsListForProduct'
    { _lalfpQuotaUser = Nothing
    , _lalfpPrettyPrint = True
    , _lalfpUserIP = Nothing
    , _lalfpCustomerId = pLalfpCustomerId_
    , _lalfpKey = Nothing
    , _lalfpPageToken = ""
    , _lalfpOAuthToken = Nothing
    , _lalfpProductId = pLalfpProductId_
    , _lalfpMaxResults = 100
    , _lalfpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lalfpQuotaUser :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpQuotaUser
  = lens _lalfpQuotaUser
      (\ s a -> s{_lalfpQuotaUser = a})

-- | Returns response with indentations and line breaks.
lalfpPrettyPrint :: Lens' LicenseAssignmentsListForProduct' Bool
lalfpPrettyPrint
  = lens _lalfpPrettyPrint
      (\ s a -> s{_lalfpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lalfpUserIP :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpUserIP
  = lens _lalfpUserIP (\ s a -> s{_lalfpUserIP = a})

-- | CustomerId represents the customer for whom licenseassignments are
-- queried
lalfpCustomerId :: Lens' LicenseAssignmentsListForProduct' Text
lalfpCustomerId
  = lens _lalfpCustomerId
      (\ s a -> s{_lalfpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lalfpKey :: Lens' LicenseAssignmentsListForProduct' (Maybe AuthKey)
lalfpKey = lens _lalfpKey (\ s a -> s{_lalfpKey = a})

-- | Token to fetch the next page.Optional. By default server will return
-- first page
lalfpPageToken :: Lens' LicenseAssignmentsListForProduct' Text
lalfpPageToken
  = lens _lalfpPageToken
      (\ s a -> s{_lalfpPageToken = a})

-- | OAuth 2.0 token for the current user.
lalfpOAuthToken :: Lens' LicenseAssignmentsListForProduct' (Maybe OAuthToken)
lalfpOAuthToken
  = lens _lalfpOAuthToken
      (\ s a -> s{_lalfpOAuthToken = a})

-- | Name for product
lalfpProductId :: Lens' LicenseAssignmentsListForProduct' Text
lalfpProductId
  = lens _lalfpProductId
      (\ s a -> s{_lalfpProductId = a})

-- | Maximum number of campaigns to return at one time. Must be positive.
-- Optional. Default value is 100.
lalfpMaxResults :: Lens' LicenseAssignmentsListForProduct' Word32
lalfpMaxResults
  = lens _lalfpMaxResults
      (\ s a -> s{_lalfpMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lalfpFields :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpFields
  = lens _lalfpFields (\ s a -> s{_lalfpFields = a})

instance GoogleAuth LicenseAssignmentsListForProduct'
         where
        authKey = lalfpKey . _Just
        authToken = lalfpOAuthToken . _Just

instance GoogleRequest
         LicenseAssignmentsListForProduct' where
        type Rs LicenseAssignmentsListForProduct' =
             LicenseAssignmentList
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u
          LicenseAssignmentsListForProduct'{..}
          = go _lalfpProductId (Just _lalfpCustomerId)
              (Just _lalfpPageToken)
              (Just _lalfpMaxResults)
              _lalfpQuotaUser
              (Just _lalfpPrettyPrint)
              _lalfpUserIP
              _lalfpFields
              _lalfpKey
              _lalfpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductResource)
                      r
                      u
