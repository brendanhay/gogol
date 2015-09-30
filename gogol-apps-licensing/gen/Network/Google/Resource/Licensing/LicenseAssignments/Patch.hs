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
    , lapUserIp
    , lapSkuId
    , lapUserId
    , lapKey
    , lapOauthToken
    , lapProductId
    , lapFields
    , lapAlt
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Patch '[JSON] LicenseAssignment

-- | Assign License. This method supports patch semantics.
--
-- /See:/ 'licenseAssignmentsPatch'' smart constructor.
data LicenseAssignmentsPatch' = LicenseAssignmentsPatch'
    { _lapQuotaUser   :: !(Maybe Text)
    , _lapPrettyPrint :: !Bool
    , _lapUserIp      :: !(Maybe Text)
    , _lapSkuId       :: !Text
    , _lapUserId      :: !Text
    , _lapKey         :: !(Maybe Text)
    , _lapOauthToken  :: !(Maybe Text)
    , _lapProductId   :: !Text
    , _lapFields      :: !(Maybe Text)
    , _lapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapQuotaUser'
--
-- * 'lapPrettyPrint'
--
-- * 'lapUserIp'
--
-- * 'lapSkuId'
--
-- * 'lapUserId'
--
-- * 'lapKey'
--
-- * 'lapOauthToken'
--
-- * 'lapProductId'
--
-- * 'lapFields'
--
-- * 'lapAlt'
licenseAssignmentsPatch'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsPatch'
licenseAssignmentsPatch' pLapSkuId_ pLapUserId_ pLapProductId_ =
    LicenseAssignmentsPatch'
    { _lapQuotaUser = Nothing
    , _lapPrettyPrint = True
    , _lapUserIp = Nothing
    , _lapSkuId = pLapSkuId_
    , _lapUserId = pLapUserId_
    , _lapKey = Nothing
    , _lapOauthToken = Nothing
    , _lapProductId = pLapProductId_
    , _lapFields = Nothing
    , _lapAlt = JSON
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
lapUserIp :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapUserIp
  = lens _lapUserIp (\ s a -> s{_lapUserIp = a})

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
lapKey :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapKey = lens _lapKey (\ s a -> s{_lapKey = a})

-- | OAuth 2.0 token for the current user.
lapOauthToken :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapOauthToken
  = lens _lapOauthToken
      (\ s a -> s{_lapOauthToken = a})

-- | Name for product
lapProductId :: Lens' LicenseAssignmentsPatch' Text
lapProductId
  = lens _lapProductId (\ s a -> s{_lapProductId = a})

-- | Selector specifying which fields to include in a partial response.
lapFields :: Lens' LicenseAssignmentsPatch' (Maybe Text)
lapFields
  = lens _lapFields (\ s a -> s{_lapFields = a})

-- | Data format for the response.
lapAlt :: Lens' LicenseAssignmentsPatch' Alt
lapAlt = lens _lapAlt (\ s a -> s{_lapAlt = a})

instance GoogleRequest LicenseAssignmentsPatch' where
        type Rs LicenseAssignmentsPatch' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsPatch'{..}
          = go _lapQuotaUser (Just _lapPrettyPrint) _lapUserIp
              _lapSkuId
              _lapUserId
              _lapKey
              _lapOauthToken
              _lapProductId
              _lapFields
              (Just _lapAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsPatchResource)
                      r
                      u
