{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Licensing.LicenseAssignments.Get
    (
    -- * REST Resource
      LicenseAssignmentsGetAPI

    -- * Creating a Request
    , licenseAssignmentsGet
    , LicenseAssignmentsGet

    -- * Request Lenses
    , lagQuotaUser
    , lagPrettyPrint
    , lagUserIp
    , lagSkuId
    , lagUserId
    , lagKey
    , lagOauthToken
    , lagProductId
    , lagFields
    , lagAlt
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsGet@ which the
-- 'LicenseAssignmentsGet' request conforms to.
type LicenseAssignmentsGetAPI =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             Capture "userId" Text :>
               Get '[JSON] LicenseAssignment

-- | Get license assignment of a particular product and sku for a user
--
-- /See:/ 'licenseAssignmentsGet' smart constructor.
data LicenseAssignmentsGet = LicenseAssignmentsGet
    { _lagQuotaUser   :: !(Maybe Text)
    , _lagPrettyPrint :: !Bool
    , _lagUserIp      :: !(Maybe Text)
    , _lagSkuId       :: !Text
    , _lagUserId      :: !Text
    , _lagKey         :: !(Maybe Text)
    , _lagOauthToken  :: !(Maybe Text)
    , _lagProductId   :: !Text
    , _lagFields      :: !(Maybe Text)
    , _lagAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagQuotaUser'
--
-- * 'lagPrettyPrint'
--
-- * 'lagUserIp'
--
-- * 'lagSkuId'
--
-- * 'lagUserId'
--
-- * 'lagKey'
--
-- * 'lagOauthToken'
--
-- * 'lagProductId'
--
-- * 'lagFields'
--
-- * 'lagAlt'
licenseAssignmentsGet
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsGet
licenseAssignmentsGet pLagSkuId_ pLagUserId_ pLagProductId_ =
    LicenseAssignmentsGet
    { _lagQuotaUser = Nothing
    , _lagPrettyPrint = True
    , _lagUserIp = Nothing
    , _lagSkuId = pLagSkuId_
    , _lagUserId = pLagUserId_
    , _lagKey = Nothing
    , _lagOauthToken = Nothing
    , _lagProductId = pLagProductId_
    , _lagFields = Nothing
    , _lagAlt = "json"
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
lagUserIp :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagUserIp
  = lens _lagUserIp (\ s a -> s{_lagUserIp = a})

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
lagKey :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagKey = lens _lagKey (\ s a -> s{_lagKey = a})

-- | OAuth 2.0 token for the current user.
lagOauthToken :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagOauthToken
  = lens _lagOauthToken
      (\ s a -> s{_lagOauthToken = a})

-- | Name for product
lagProductId :: Lens' LicenseAssignmentsGet' Text
lagProductId
  = lens _lagProductId (\ s a -> s{_lagProductId = a})

-- | Selector specifying which fields to include in a partial response.
lagFields :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagFields
  = lens _lagFields (\ s a -> s{_lagFields = a})

-- | Data format for the response.
lagAlt :: Lens' LicenseAssignmentsGet' Text
lagAlt = lens _lagAlt (\ s a -> s{_lagAlt = a})

instance GoogleRequest LicenseAssignmentsGet' where
        type Rs LicenseAssignmentsGet' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsGet{..}
          = go _lagQuotaUser _lagPrettyPrint _lagUserIp
              _lagSkuId
              _lagUserId
              _lagKey
              _lagOauthToken
              _lagProductId
              _lagFields
              _lagAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsGetAPI)
                      r
                      u
