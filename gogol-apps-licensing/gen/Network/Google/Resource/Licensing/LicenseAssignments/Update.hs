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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Assign License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsUpdate@.
module Network.Google.Resource.Licensing.LicenseAssignments.Update
    (
    -- * REST Resource
      LicenseAssignmentsUpdateResource

    -- * Creating a Request
    , licenseAssignmentsUpdate'
    , LicenseAssignmentsUpdate'

    -- * Request Lenses
    , lauQuotaUser
    , lauPrettyPrint
    , lauUserIp
    , lauSkuId
    , lauUserId
    , lauKey
    , lauOauthToken
    , lauProductId
    , lauFields
    , lauAlt
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsUpdate@ which the
-- 'LicenseAssignmentsUpdate'' request conforms to.
type LicenseAssignmentsUpdateResource =
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
                           QueryParam "alt" Alt :> Put '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsUpdate'' smart constructor.
data LicenseAssignmentsUpdate' = LicenseAssignmentsUpdate'
    { _lauQuotaUser   :: !(Maybe Text)
    , _lauPrettyPrint :: !Bool
    , _lauUserIp      :: !(Maybe Text)
    , _lauSkuId       :: !Text
    , _lauUserId      :: !Text
    , _lauKey         :: !(Maybe Text)
    , _lauOauthToken  :: !(Maybe Text)
    , _lauProductId   :: !Text
    , _lauFields      :: !(Maybe Text)
    , _lauAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lauQuotaUser'
--
-- * 'lauPrettyPrint'
--
-- * 'lauUserIp'
--
-- * 'lauSkuId'
--
-- * 'lauUserId'
--
-- * 'lauKey'
--
-- * 'lauOauthToken'
--
-- * 'lauProductId'
--
-- * 'lauFields'
--
-- * 'lauAlt'
licenseAssignmentsUpdate'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsUpdate'
licenseAssignmentsUpdate' pLauSkuId_ pLauUserId_ pLauProductId_ =
    LicenseAssignmentsUpdate'
    { _lauQuotaUser = Nothing
    , _lauPrettyPrint = True
    , _lauUserIp = Nothing
    , _lauSkuId = pLauSkuId_
    , _lauUserId = pLauUserId_
    , _lauKey = Nothing
    , _lauOauthToken = Nothing
    , _lauProductId = pLauProductId_
    , _lauFields = Nothing
    , _lauAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lauQuotaUser :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauQuotaUser
  = lens _lauQuotaUser (\ s a -> s{_lauQuotaUser = a})

-- | Returns response with indentations and line breaks.
lauPrettyPrint :: Lens' LicenseAssignmentsUpdate' Bool
lauPrettyPrint
  = lens _lauPrettyPrint
      (\ s a -> s{_lauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lauUserIp :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauUserIp
  = lens _lauUserIp (\ s a -> s{_lauUserIp = a})

-- | Name for sku for which license would be revoked
lauSkuId :: Lens' LicenseAssignmentsUpdate' Text
lauSkuId = lens _lauSkuId (\ s a -> s{_lauSkuId = a})

-- | email id or unique Id of the user
lauUserId :: Lens' LicenseAssignmentsUpdate' Text
lauUserId
  = lens _lauUserId (\ s a -> s{_lauUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lauKey :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauKey = lens _lauKey (\ s a -> s{_lauKey = a})

-- | OAuth 2.0 token for the current user.
lauOauthToken :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauOauthToken
  = lens _lauOauthToken
      (\ s a -> s{_lauOauthToken = a})

-- | Name for product
lauProductId :: Lens' LicenseAssignmentsUpdate' Text
lauProductId
  = lens _lauProductId (\ s a -> s{_lauProductId = a})

-- | Selector specifying which fields to include in a partial response.
lauFields :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauFields
  = lens _lauFields (\ s a -> s{_lauFields = a})

-- | Data format for the response.
lauAlt :: Lens' LicenseAssignmentsUpdate' Alt
lauAlt = lens _lauAlt (\ s a -> s{_lauAlt = a})

instance GoogleRequest LicenseAssignmentsUpdate'
         where
        type Rs LicenseAssignmentsUpdate' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsUpdate'{..}
          = go _lauQuotaUser (Just _lauPrettyPrint) _lauUserIp
              _lauSkuId
              _lauUserId
              _lauKey
              _lauOauthToken
              _lauProductId
              _lauFields
              (Just _lauAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsUpdateResource)
                      r
                      u
