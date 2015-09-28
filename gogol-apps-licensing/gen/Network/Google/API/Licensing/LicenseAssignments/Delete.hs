{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Licensing.LicenseAssignments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revoke License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.delete@.
module Network.Google.API.Licensing.LicenseAssignments.Delete
    (
    -- * REST Resource
      LicenseAssignmentsDeleteAPI

    -- * Creating a Request
    , licenseAssignmentsDelete'
    , LicenseAssignmentsDelete'

    -- * Request Lenses
    , ladQuotaUser
    , ladPrettyPrint
    , ladUserIp
    , ladSkuId
    , ladUserId
    , ladKey
    , ladOauthToken
    , ladProductId
    , ladFields
    , ladAlt
    ) where

import           Network.Google.Apps.Licensing.Types
import           Network.Google.Prelude

-- | A resource alias for licensing.licenseAssignments.delete which the
-- 'LicenseAssignmentsDelete'' request conforms to.
type LicenseAssignmentsDeleteAPI =
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
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Revoke License.
--
-- /See:/ 'licenseAssignmentsDelete'' smart constructor.
data LicenseAssignmentsDelete' = LicenseAssignmentsDelete'
    { _ladQuotaUser   :: !(Maybe Text)
    , _ladPrettyPrint :: !Bool
    , _ladUserIp      :: !(Maybe Text)
    , _ladSkuId       :: !Text
    , _ladUserId      :: !Text
    , _ladKey         :: !(Maybe Text)
    , _ladOauthToken  :: !(Maybe Text)
    , _ladProductId   :: !Text
    , _ladFields      :: !(Maybe Text)
    , _ladAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladQuotaUser'
--
-- * 'ladPrettyPrint'
--
-- * 'ladUserIp'
--
-- * 'ladSkuId'
--
-- * 'ladUserId'
--
-- * 'ladKey'
--
-- * 'ladOauthToken'
--
-- * 'ladProductId'
--
-- * 'ladFields'
--
-- * 'ladAlt'
licenseAssignmentsDelete'
    :: Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsDelete'
licenseAssignmentsDelete' pLadSkuId_ pLadUserId_ pLadProductId_ =
    LicenseAssignmentsDelete'
    { _ladQuotaUser = Nothing
    , _ladPrettyPrint = True
    , _ladUserIp = Nothing
    , _ladSkuId = pLadSkuId_
    , _ladUserId = pLadUserId_
    , _ladKey = Nothing
    , _ladOauthToken = Nothing
    , _ladProductId = pLadProductId_
    , _ladFields = Nothing
    , _ladAlt = JSON
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
ladUserIp :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladUserIp
  = lens _ladUserIp (\ s a -> s{_ladUserIp = a})

-- | Name for sku
ladSkuId :: Lens' LicenseAssignmentsDelete' Text
ladSkuId = lens _ladSkuId (\ s a -> s{_ladSkuId = a})

-- | email id or unique Id of the user
ladUserId :: Lens' LicenseAssignmentsDelete' Text
ladUserId
  = lens _ladUserId (\ s a -> s{_ladUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ladKey :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladKey = lens _ladKey (\ s a -> s{_ladKey = a})

-- | OAuth 2.0 token for the current user.
ladOauthToken :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladOauthToken
  = lens _ladOauthToken
      (\ s a -> s{_ladOauthToken = a})

-- | Name for product
ladProductId :: Lens' LicenseAssignmentsDelete' Text
ladProductId
  = lens _ladProductId (\ s a -> s{_ladProductId = a})

-- | Selector specifying which fields to include in a partial response.
ladFields :: Lens' LicenseAssignmentsDelete' (Maybe Text)
ladFields
  = lens _ladFields (\ s a -> s{_ladFields = a})

-- | Data format for the response.
ladAlt :: Lens' LicenseAssignmentsDelete' Alt
ladAlt = lens _ladAlt (\ s a -> s{_ladAlt = a})

instance GoogleRequest LicenseAssignmentsDelete'
         where
        type Rs LicenseAssignmentsDelete' = ()
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsDelete'{..}
          = go _ladQuotaUser (Just _ladPrettyPrint) _ladUserIp
              _ladSkuId
              _ladUserId
              _ladKey
              _ladOauthToken
              _ladProductId
              _ladFields
              (Just _ladAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsDeleteAPI)
                      r
                      u
