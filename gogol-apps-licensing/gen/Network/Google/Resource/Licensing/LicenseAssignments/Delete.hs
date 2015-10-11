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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revoke License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsDelete@.
module Network.Google.Resource.Licensing.LicenseAssignments.Delete
    (
    -- * REST Resource
      LicenseAssignmentsDeleteResource

    -- * Creating a Request
    , licenseAssignmentsDelete'
    , LicenseAssignmentsDelete'

    -- * Request Lenses
    , ladQuotaUser
    , ladPrettyPrint
    , ladUserIP
    , ladSKUId
    , ladUserId
    , ladKey
    , ladOAuthToken
    , ladProductId
    , ladFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsDelete@ method which the
-- 'LicenseAssignmentsDelete'' request conforms to.
type LicenseAssignmentsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Revoke License.
--
-- /See:/ 'licenseAssignmentsDelete'' smart constructor.
data LicenseAssignmentsDelete' = LicenseAssignmentsDelete'
    { _ladQuotaUser   :: !(Maybe Text)
    , _ladPrettyPrint :: !Bool
    , _ladUserIP      :: !(Maybe Text)
    , _ladSKUId       :: !Text
    , _ladUserId      :: !Text
    , _ladKey         :: !(Maybe AuthKey)
    , _ladOAuthToken  :: !(Maybe OAuthToken)
    , _ladProductId   :: !Text
    , _ladFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladQuotaUser'
--
-- * 'ladPrettyPrint'
--
-- * 'ladUserIP'
--
-- * 'ladSKUId'
--
-- * 'ladUserId'
--
-- * 'ladKey'
--
-- * 'ladOAuthToken'
--
-- * 'ladProductId'
--
-- * 'ladFields'
licenseAssignmentsDelete'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsDelete'
licenseAssignmentsDelete' pLadSKUId_ pLadUserId_ pLadProductId_ =
    LicenseAssignmentsDelete'
    { _ladQuotaUser = Nothing
    , _ladPrettyPrint = True
    , _ladUserIP = Nothing
    , _ladSKUId = pLadSKUId_
    , _ladUserId = pLadUserId_
    , _ladKey = Nothing
    , _ladOAuthToken = Nothing
    , _ladProductId = pLadProductId_
    , _ladFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ladQuotaUser :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladQuotaUser
  = lens _ladQuotaUser (\ s a -> s{_ladQuotaUser = a})

-- | Returns response with indentations and line breaks.
ladPrettyPrint :: Lens' LicenseAssignmentsDelete' Bool
ladPrettyPrint
  = lens _ladPrettyPrint
      (\ s a -> s{_ladPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ladUserIP :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladUserIP
  = lens _ladUserIP (\ s a -> s{_ladUserIP = a})

-- | Name for sku
ladSKUId :: Lens' LicenseAssignmentsDelete' Text
ladSKUId = lens _ladSKUId (\ s a -> s{_ladSKUId = a})

-- | email id or unique Id of the user
ladUserId :: Lens' LicenseAssignmentsDelete' Text
ladUserId
  = lens _ladUserId (\ s a -> s{_ladUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ladKey :: Lens' LicenseAssignmentsDelete' (Maybe AuthKey)
ladKey = lens _ladKey (\ s a -> s{_ladKey = a})

-- | OAuth 2.0 token for the current user.
ladOAuthToken :: Lens' LicenseAssignmentsDelete' (Maybe OAuthToken)
ladOAuthToken
  = lens _ladOAuthToken
      (\ s a -> s{_ladOAuthToken = a})

-- | Name for product
ladProductId :: Lens' LicenseAssignmentsDelete' Text
ladProductId
  = lens _ladProductId (\ s a -> s{_ladProductId = a})

-- | Selector specifying which fields to include in a partial response.
ladFields :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladFields
  = lens _ladFields (\ s a -> s{_ladFields = a})

instance GoogleAuth LicenseAssignmentsDelete' where
        _AuthKey = ladKey . _Just
        _AuthToken = ladOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsDelete'
         where
        type Rs LicenseAssignmentsDelete' = ()
        request = requestWith appsLicensingRequest
        requestWith rq LicenseAssignmentsDelete'{..}
          = go _ladProductId _ladSKUId _ladUserId _ladQuotaUser
              (Just _ladPrettyPrint)
              _ladUserIP
              _ladFields
              _ladKey
              _ladOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LicenseAssignmentsDeleteResource)
                      rq
