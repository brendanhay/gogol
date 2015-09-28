{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Licensing.LicenseAssignments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Assign License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.insert@.
module Network.Google.API.Licensing.LicenseAssignments.Insert
    (
    -- * REST Resource
      LicenseAssignmentsInsertAPI

    -- * Creating a Request
    , licenseAssignmentsInsert'
    , LicenseAssignmentsInsert'

    -- * Request Lenses
    , laiQuotaUser
    , laiPrettyPrint
    , laiUserIp
    , laiSkuId
    , laiKey
    , laiOauthToken
    , laiProductId
    , laiFields
    , laiAlt
    ) where

import           Network.Google.Apps.Licensing.Types
import           Network.Google.Prelude

-- | A resource alias for licensing.licenseAssignments.insert which the
-- 'LicenseAssignmentsInsert'' request conforms to.
type LicenseAssignmentsInsertAPI =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsInsert'' smart constructor.
data LicenseAssignmentsInsert' = LicenseAssignmentsInsert'
    { _laiQuotaUser   :: !(Maybe Text)
    , _laiPrettyPrint :: !Bool
    , _laiUserIp      :: !(Maybe Text)
    , _laiSkuId       :: !Text
    , _laiKey         :: !(Maybe Text)
    , _laiOauthToken  :: !(Maybe Text)
    , _laiProductId   :: !Text
    , _laiFields      :: !(Maybe Text)
    , _laiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laiQuotaUser'
--
-- * 'laiPrettyPrint'
--
-- * 'laiUserIp'
--
-- * 'laiSkuId'
--
-- * 'laiKey'
--
-- * 'laiOauthToken'
--
-- * 'laiProductId'
--
-- * 'laiFields'
--
-- * 'laiAlt'
licenseAssignmentsInsert'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsInsert'
licenseAssignmentsInsert' pLaiSkuId_ pLaiProductId_ =
    LicenseAssignmentsInsert'
    { _laiQuotaUser = Nothing
    , _laiPrettyPrint = True
    , _laiUserIp = Nothing
    , _laiSkuId = pLaiSkuId_
    , _laiKey = Nothing
    , _laiOauthToken = Nothing
    , _laiProductId = pLaiProductId_
    , _laiFields = Nothing
    , _laiAlt = JSON
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
laiUserIp :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiUserIp
  = lens _laiUserIp (\ s a -> s{_laiUserIp = a})

-- | Name for sku
laiSkuId :: Lens' LicenseAssignmentsInsert' Text
laiSkuId = lens _laiSkuId (\ s a -> s{_laiSkuId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
laiKey :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiKey = lens _laiKey (\ s a -> s{_laiKey = a})

-- | OAuth 2.0 token for the current user.
laiOauthToken :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiOauthToken
  = lens _laiOauthToken
      (\ s a -> s{_laiOauthToken = a})

-- | Name for product
laiProductId :: Lens' LicenseAssignmentsInsert' Text
laiProductId
  = lens _laiProductId (\ s a -> s{_laiProductId = a})

-- | Selector specifying which fields to include in a partial response.
laiFields :: Lens' LicenseAssignmentsInsert' (Maybe Text)
laiFields
  = lens _laiFields (\ s a -> s{_laiFields = a})

-- | Data format for the response.
laiAlt :: Lens' LicenseAssignmentsInsert' Alt
laiAlt = lens _laiAlt (\ s a -> s{_laiAlt = a})

instance GoogleRequest LicenseAssignmentsInsert'
         where
        type Rs LicenseAssignmentsInsert' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsInsert'{..}
          = go _laiQuotaUser (Just _laiPrettyPrint) _laiUserIp
              _laiSkuId
              _laiKey
              _laiOauthToken
              _laiProductId
              _laiFields
              (Just _laiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsInsertAPI)
                      r
                      u
