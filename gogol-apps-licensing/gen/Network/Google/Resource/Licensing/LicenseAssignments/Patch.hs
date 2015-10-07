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
    , lapSKUId
    , lapPayload
    , lapUserId
    , lapKey
    , lapOAuthToken
    , lapProductId
    , lapFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsPatch@ method which the
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
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LicenseAssignment :>
                               Patch '[JSON] LicenseAssignment

-- | Assign License. This method supports patch semantics.
--
-- /See:/ 'licenseAssignmentsPatch'' smart constructor.
data LicenseAssignmentsPatch' = LicenseAssignmentsPatch'
    { _lapQuotaUser   :: !(Maybe Text)
    , _lapPrettyPrint :: !Bool
    , _lapUserIP      :: !(Maybe Text)
    , _lapSKUId       :: !Text
    , _lapPayload     :: !LicenseAssignment
    , _lapUserId      :: !Text
    , _lapKey         :: !(Maybe AuthKey)
    , _lapOAuthToken  :: !(Maybe OAuthToken)
    , _lapProductId   :: !Text
    , _lapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'lapSKUId'
--
-- * 'lapPayload'
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
    :: Text -- ^ 'skuId'
    -> LicenseAssignment -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsPatch'
licenseAssignmentsPatch' pLapSKUId_ pLapPayload_ pLapUserId_ pLapProductId_ =
    LicenseAssignmentsPatch'
    { _lapQuotaUser = Nothing
    , _lapPrettyPrint = True
    , _lapUserIP = Nothing
    , _lapSKUId = pLapSKUId_
    , _lapPayload = pLapPayload_
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

-- | Name for sku for which license would be revoked
lapSKUId :: Lens' LicenseAssignmentsPatch' Text
lapSKUId = lens _lapSKUId (\ s a -> s{_lapSKUId = a})

-- | Multipart request metadata.
lapPayload :: Lens' LicenseAssignmentsPatch' LicenseAssignment
lapPayload
  = lens _lapPayload (\ s a -> s{_lapPayload = a})

-- | email id or unique Id of the user
lapUserId :: Lens' LicenseAssignmentsPatch' Text
lapUserId
  = lens _lapUserId (\ s a -> s{_lapUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lapKey :: Lens' LicenseAssignmentsPatch' (Maybe AuthKey)
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
        _AuthKey = lapKey . _Just
        _AuthToken = lapOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsPatch' where
        type Rs LicenseAssignmentsPatch' = LicenseAssignment
        request = requestWith appsLicensingRequest
        requestWith rq LicenseAssignmentsPatch'{..}
          = go _lapProductId _lapSKUId _lapUserId _lapQuotaUser
              (Just _lapPrettyPrint)
              _lapUserIP
              _lapFields
              _lapKey
              _lapOAuthToken
              (Just AltJSON)
              _lapPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy LicenseAssignmentsPatchResource)
                      rq
