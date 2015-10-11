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
module Network.Google.Resource.Licensing.LicenseAssignments.Get
    (
    -- * REST Resource
      LicenseAssignmentsGetResource

    -- * Creating a Request
    , licenseAssignmentsGet'
    , LicenseAssignmentsGet'

    -- * Request Lenses
    , lagQuotaUser
    , lagPrettyPrint
    , lagUserIP
    , lagSKUId
    , lagUserId
    , lagKey
    , lagOAuthToken
    , lagProductId
    , lagFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsGet@ method which the
-- 'LicenseAssignmentsGet'' request conforms to.
type LicenseAssignmentsGetResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             Capture "userId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LicenseAssignment

-- | Get license assignment of a particular product and sku for a user
--
-- /See:/ 'licenseAssignmentsGet'' smart constructor.
data LicenseAssignmentsGet' = LicenseAssignmentsGet'
    { _lagQuotaUser   :: !(Maybe Text)
    , _lagPrettyPrint :: !Bool
    , _lagUserIP      :: !(Maybe Text)
    , _lagSKUId       :: !Text
    , _lagUserId      :: !Text
    , _lagKey         :: !(Maybe AuthKey)
    , _lagOAuthToken  :: !(Maybe OAuthToken)
    , _lagProductId   :: !Text
    , _lagFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagQuotaUser'
--
-- * 'lagPrettyPrint'
--
-- * 'lagUserIP'
--
-- * 'lagSKUId'
--
-- * 'lagUserId'
--
-- * 'lagKey'
--
-- * 'lagOAuthToken'
--
-- * 'lagProductId'
--
-- * 'lagFields'
licenseAssignmentsGet'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsGet'
licenseAssignmentsGet' pLagSKUId_ pLagUserId_ pLagProductId_ =
    LicenseAssignmentsGet'
    { _lagQuotaUser = Nothing
    , _lagPrettyPrint = True
    , _lagUserIP = Nothing
    , _lagSKUId = pLagSKUId_
    , _lagUserId = pLagUserId_
    , _lagKey = Nothing
    , _lagOAuthToken = Nothing
    , _lagProductId = pLagProductId_
    , _lagFields = Nothing
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
lagUserIP :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagUserIP
  = lens _lagUserIP (\ s a -> s{_lagUserIP = a})

-- | Name for sku
lagSKUId :: Lens' LicenseAssignmentsGet' Text
lagSKUId = lens _lagSKUId (\ s a -> s{_lagSKUId = a})

-- | email id or unique Id of the user
lagUserId :: Lens' LicenseAssignmentsGet' Text
lagUserId
  = lens _lagUserId (\ s a -> s{_lagUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lagKey :: Lens' LicenseAssignmentsGet' (Maybe AuthKey)
lagKey = lens _lagKey (\ s a -> s{_lagKey = a})

-- | OAuth 2.0 token for the current user.
lagOAuthToken :: Lens' LicenseAssignmentsGet' (Maybe OAuthToken)
lagOAuthToken
  = lens _lagOAuthToken
      (\ s a -> s{_lagOAuthToken = a})

-- | Name for product
lagProductId :: Lens' LicenseAssignmentsGet' Text
lagProductId
  = lens _lagProductId (\ s a -> s{_lagProductId = a})

-- | Selector specifying which fields to include in a partial response.
lagFields :: Lens' LicenseAssignmentsGet' (Maybe Text)
lagFields
  = lens _lagFields (\ s a -> s{_lagFields = a})

instance GoogleAuth LicenseAssignmentsGet' where
        _AuthKey = lagKey . _Just
        _AuthToken = lagOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsGet' where
        type Rs LicenseAssignmentsGet' = LicenseAssignment
        request = requestWith appsLicensingRequest
        requestWith rq LicenseAssignmentsGet'{..}
          = go _lagProductId _lagSKUId _lagUserId _lagQuotaUser
              (Just _lagPrettyPrint)
              _lagUserIP
              _lagFields
              _lagKey
              _lagOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LicenseAssignmentsGetResource)
                      rq
