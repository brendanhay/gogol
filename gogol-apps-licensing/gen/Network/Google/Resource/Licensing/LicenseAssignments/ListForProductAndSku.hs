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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSku
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List license assignments for given product and sku of the customer.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsListForProductAndSku@.
module Network.Google.Resource.Licensing.LicenseAssignments.ListForProductAndSku
    (
    -- * REST Resource
      LicenseAssignmentsListForProductAndSkuResource

    -- * Creating a Request
    , licenseAssignmentsListForProductAndSku'
    , LicenseAssignmentsListForProductAndSku'

    -- * Request Lenses
    , lalfpasQuotaUser
    , lalfpasPrettyPrint
    , lalfpasUserIp
    , lalfpasSkuId
    , lalfpasCustomerId
    , lalfpasKey
    , lalfpasPageToken
    , lalfpasOauthToken
    , lalfpasProductId
    , lalfpasMaxResults
    , lalfpasFields
    , lalfpasAlt
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsListForProductAndSku@ which the
-- 'LicenseAssignmentsListForProductAndSku'' request conforms to.
type LicenseAssignmentsListForProductAndSkuResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "users" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "customerId" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] LicenseAssignmentList

-- | List license assignments for given product and sku of the customer.
--
-- /See:/ 'licenseAssignmentsListForProductAndSku'' smart constructor.
data LicenseAssignmentsListForProductAndSku' = LicenseAssignmentsListForProductAndSku'
    { _lalfpasQuotaUser   :: !(Maybe Text)
    , _lalfpasPrettyPrint :: !Bool
    , _lalfpasUserIp      :: !(Maybe Text)
    , _lalfpasSkuId       :: !Text
    , _lalfpasCustomerId  :: !Text
    , _lalfpasKey         :: !(Maybe Text)
    , _lalfpasPageToken   :: !Text
    , _lalfpasOauthToken  :: !(Maybe Text)
    , _lalfpasProductId   :: !Text
    , _lalfpasMaxResults  :: !Word32
    , _lalfpasFields      :: !(Maybe Text)
    , _lalfpasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsListForProductAndSku'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalfpasQuotaUser'
--
-- * 'lalfpasPrettyPrint'
--
-- * 'lalfpasUserIp'
--
-- * 'lalfpasSkuId'
--
-- * 'lalfpasCustomerId'
--
-- * 'lalfpasKey'
--
-- * 'lalfpasPageToken'
--
-- * 'lalfpasOauthToken'
--
-- * 'lalfpasProductId'
--
-- * 'lalfpasMaxResults'
--
-- * 'lalfpasFields'
--
-- * 'lalfpasAlt'
licenseAssignmentsListForProductAndSku'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsListForProductAndSku'
licenseAssignmentsListForProductAndSku' pLalfpasSkuId_ pLalfpasCustomerId_ pLalfpasProductId_ =
    LicenseAssignmentsListForProductAndSku'
    { _lalfpasQuotaUser = Nothing
    , _lalfpasPrettyPrint = True
    , _lalfpasUserIp = Nothing
    , _lalfpasSkuId = pLalfpasSkuId_
    , _lalfpasCustomerId = pLalfpasCustomerId_
    , _lalfpasKey = Nothing
    , _lalfpasPageToken = ""
    , _lalfpasOauthToken = Nothing
    , _lalfpasProductId = pLalfpasProductId_
    , _lalfpasMaxResults = 100
    , _lalfpasFields = Nothing
    , _lalfpasAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lalfpasQuotaUser :: Lens' LicenseAssignmentsListForProductAndSku' (Maybe Text)
lalfpasQuotaUser
  = lens _lalfpasQuotaUser
      (\ s a -> s{_lalfpasQuotaUser = a})

-- | Returns response with indentations and line breaks.
lalfpasPrettyPrint :: Lens' LicenseAssignmentsListForProductAndSku' Bool
lalfpasPrettyPrint
  = lens _lalfpasPrettyPrint
      (\ s a -> s{_lalfpasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lalfpasUserIp :: Lens' LicenseAssignmentsListForProductAndSku' (Maybe Text)
lalfpasUserIp
  = lens _lalfpasUserIp
      (\ s a -> s{_lalfpasUserIp = a})

-- | Name for sku
lalfpasSkuId :: Lens' LicenseAssignmentsListForProductAndSku' Text
lalfpasSkuId
  = lens _lalfpasSkuId (\ s a -> s{_lalfpasSkuId = a})

-- | CustomerId represents the customer for whom licenseassignments are
-- queried
lalfpasCustomerId :: Lens' LicenseAssignmentsListForProductAndSku' Text
lalfpasCustomerId
  = lens _lalfpasCustomerId
      (\ s a -> s{_lalfpasCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lalfpasKey :: Lens' LicenseAssignmentsListForProductAndSku' (Maybe Text)
lalfpasKey
  = lens _lalfpasKey (\ s a -> s{_lalfpasKey = a})

-- | Token to fetch the next page.Optional. By default server will return
-- first page
lalfpasPageToken :: Lens' LicenseAssignmentsListForProductAndSku' Text
lalfpasPageToken
  = lens _lalfpasPageToken
      (\ s a -> s{_lalfpasPageToken = a})

-- | OAuth 2.0 token for the current user.
lalfpasOauthToken :: Lens' LicenseAssignmentsListForProductAndSku' (Maybe Text)
lalfpasOauthToken
  = lens _lalfpasOauthToken
      (\ s a -> s{_lalfpasOauthToken = a})

-- | Name for product
lalfpasProductId :: Lens' LicenseAssignmentsListForProductAndSku' Text
lalfpasProductId
  = lens _lalfpasProductId
      (\ s a -> s{_lalfpasProductId = a})

-- | Maximum number of campaigns to return at one time. Must be positive.
-- Optional. Default value is 100.
lalfpasMaxResults :: Lens' LicenseAssignmentsListForProductAndSku' Word32
lalfpasMaxResults
  = lens _lalfpasMaxResults
      (\ s a -> s{_lalfpasMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lalfpasFields :: Lens' LicenseAssignmentsListForProductAndSku' (Maybe Text)
lalfpasFields
  = lens _lalfpasFields
      (\ s a -> s{_lalfpasFields = a})

-- | Data format for the response.
lalfpasAlt :: Lens' LicenseAssignmentsListForProductAndSku' Alt
lalfpasAlt
  = lens _lalfpasAlt (\ s a -> s{_lalfpasAlt = a})

instance GoogleRequest
         LicenseAssignmentsListForProductAndSku' where
        type Rs LicenseAssignmentsListForProductAndSku' =
             LicenseAssignmentList
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u
          LicenseAssignmentsListForProductAndSku'{..}
          = go _lalfpasQuotaUser (Just _lalfpasPrettyPrint)
              _lalfpasUserIp
              _lalfpasSkuId
              (Just _lalfpasCustomerId)
              _lalfpasKey
              (Just _lalfpasPageToken)
              _lalfpasOauthToken
              _lalfpasProductId
              (Just _lalfpasMaxResults)
              _lalfpasFields
              (Just _lalfpasAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy LicenseAssignmentsListForProductAndSkuResource)
                      r
                      u
