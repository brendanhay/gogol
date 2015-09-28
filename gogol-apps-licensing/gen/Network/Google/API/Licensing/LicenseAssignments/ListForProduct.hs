{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Licensing.LicenseAssignments.ListForProduct
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List license assignments for given product of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.listForProduct@.
module Network.Google.API.Licensing.LicenseAssignments.ListForProduct
    (
    -- * REST Resource
      LicenseAssignmentsListForProductAPI

    -- * Creating a Request
    , licenseAssignmentsListForProduct'
    , LicenseAssignmentsListForProduct'

    -- * Request Lenses
    , lalfpQuotaUser
    , lalfpPrettyPrint
    , lalfpUserIp
    , lalfpCustomerId
    , lalfpKey
    , lalfpPageToken
    , lalfpOauthToken
    , lalfpProductId
    , lalfpMaxResults
    , lalfpFields
    , lalfpAlt
    ) where

import           Network.Google.Apps.Licensing.Types
import           Network.Google.Prelude

-- | A resource alias for licensing.licenseAssignments.listForProduct which the
-- 'LicenseAssignmentsListForProduct'' request conforms to.
type LicenseAssignmentsListForProductAPI =
     Capture "productId" Text :>
       "users" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "customerId" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Nat :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] LicenseAssignmentList

-- | List license assignments for given product of the customer.
--
-- /See:/ 'licenseAssignmentsListForProduct'' smart constructor.
data LicenseAssignmentsListForProduct' = LicenseAssignmentsListForProduct'
    { _lalfpQuotaUser   :: !(Maybe Text)
    , _lalfpPrettyPrint :: !Bool
    , _lalfpUserIp      :: !(Maybe Text)
    , _lalfpCustomerId  :: !Text
    , _lalfpKey         :: !(Maybe Text)
    , _lalfpPageToken   :: !Text
    , _lalfpOauthToken  :: !(Maybe Text)
    , _lalfpProductId   :: !Text
    , _lalfpMaxResults  :: !Nat
    , _lalfpFields      :: !(Maybe Text)
    , _lalfpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsListForProduct'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpQuotaUser'
--
-- * 'lalfpPrettyPrint'
--
-- * 'lalfpUserIp'
--
-- * 'lalfpCustomerId'
--
-- * 'lalfpKey'
--
-- * 'lalfpPageToken'
--
-- * 'lalfpOauthToken'
--
-- * 'lalfpProductId'
--
-- * 'lalfpMaxResults'
--
-- * 'lalfpFields'
--
-- * 'lalfpAlt'
licenseAssignmentsListForProduct'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsListForProduct'
licenseAssignmentsListForProduct' pLalfpCustomerId_ pLalfpProductId_ =
    LicenseAssignmentsListForProduct'
    { _lalfpQuotaUser = Nothing
    , _lalfpPrettyPrint = True
    , _lalfpUserIp = Nothing
    , _lalfpCustomerId = pLalfpCustomerId_
    , _lalfpKey = Nothing
    , _lalfpPageToken = ""
    , _lalfpOauthToken = Nothing
    , _lalfpProductId = pLalfpProductId_
    , _lalfpMaxResults = 100
    , _lalfpFields = Nothing
    , _lalfpAlt = JSON
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
lalfpUserIp :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpUserIp
  = lens _lalfpUserIp (\ s a -> s{_lalfpUserIp = a})

-- | CustomerId represents the customer for whom licenseassignments are
-- queried
lalfpCustomerId :: Lens' LicenseAssignmentsListForProduct' Text
lalfpCustomerId
  = lens _lalfpCustomerId
      (\ s a -> s{_lalfpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lalfpKey :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpKey = lens _lalfpKey (\ s a -> s{_lalfpKey = a})

-- | Token to fetch the next page.Optional. By default server will return
-- first page
lalfpPageToken :: Lens' LicenseAssignmentsListForProduct' Text
lalfpPageToken
  = lens _lalfpPageToken
      (\ s a -> s{_lalfpPageToken = a})

-- | OAuth 2.0 token for the current user.
lalfpOauthToken :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpOauthToken
  = lens _lalfpOauthToken
      (\ s a -> s{_lalfpOauthToken = a})

-- | Name for product
lalfpProductId :: Lens' LicenseAssignmentsListForProduct' Text
lalfpProductId
  = lens _lalfpProductId
      (\ s a -> s{_lalfpProductId = a})

-- | Maximum number of campaigns to return at one time. Must be positive.
-- Optional. Default value is 100.
lalfpMaxResults :: Lens' LicenseAssignmentsListForProduct' Natural
lalfpMaxResults
  = lens _lalfpMaxResults
      (\ s a -> s{_lalfpMaxResults = a})
      . _Nat

-- | Selector specifying which fields to include in a partial response.
lalfpFields :: Lens' LicenseAssignmentsListForProduct' (Maybe Text)
lalfpFields
  = lens _lalfpFields (\ s a -> s{_lalfpFields = a})

-- | Data format for the response.
lalfpAlt :: Lens' LicenseAssignmentsListForProduct' Alt
lalfpAlt = lens _lalfpAlt (\ s a -> s{_lalfpAlt = a})

instance GoogleRequest
         LicenseAssignmentsListForProduct' where
        type Rs LicenseAssignmentsListForProduct' =
             LicenseAssignmentList
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u
          LicenseAssignmentsListForProduct'{..}
          = go _lalfpQuotaUser (Just _lalfpPrettyPrint)
              _lalfpUserIp
              (Just _lalfpCustomerId)
              _lalfpKey
              (Just _lalfpPageToken)
              _lalfpOauthToken
              _lalfpProductId
              (Just _lalfpMaxResults)
              _lalfpFields
              (Just _lalfpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsListForProductAPI)
                      r
                      u
