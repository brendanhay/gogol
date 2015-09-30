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
-- Module      : Network.Google.Resource.Cloudbilling.BillingAccounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about a billing account. The current authenticated user
-- must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @CloudbillingBillingAccountsGet@.
module Network.Google.Resource.Cloudbilling.BillingAccounts.Get
    (
    -- * REST Resource
      BillingAccountsGetResource

    -- * Creating a Request
    , billingAccountsGet'
    , BillingAccountsGet'

    -- * Request Lenses
    , bagXgafv
    , bagQuotaUser
    , bagPrettyPrint
    , bagUploadProtocol
    , bagPp
    , bagAccessToken
    , bagUploadType
    , bagBearerToken
    , bagKey
    , bagName
    , bagOauthToken
    , bagFields
    , bagCallback
    , bagAlt
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudbillingBillingAccountsGet@ which the
-- 'BillingAccountsGet'' request conforms to.
type BillingAccountsGetResource =
     "v1" :>
       "{+name}" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] BillingAccount

-- | Gets information about a billing account. The current authenticated user
-- must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ 'billingAccountsGet'' smart constructor.
data BillingAccountsGet' = BillingAccountsGet'
    { _bagXgafv          :: !(Maybe Text)
    , _bagQuotaUser      :: !(Maybe Text)
    , _bagPrettyPrint    :: !Bool
    , _bagUploadProtocol :: !(Maybe Text)
    , _bagPp             :: !Bool
    , _bagAccessToken    :: !(Maybe Text)
    , _bagUploadType     :: !(Maybe Text)
    , _bagBearerToken    :: !(Maybe Text)
    , _bagKey            :: !(Maybe Text)
    , _bagName           :: !Text
    , _bagOauthToken     :: !(Maybe Text)
    , _bagFields         :: !(Maybe Text)
    , _bagCallback       :: !(Maybe Text)
    , _bagAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bagXgafv'
--
-- * 'bagQuotaUser'
--
-- * 'bagPrettyPrint'
--
-- * 'bagUploadProtocol'
--
-- * 'bagPp'
--
-- * 'bagAccessToken'
--
-- * 'bagUploadType'
--
-- * 'bagBearerToken'
--
-- * 'bagKey'
--
-- * 'bagName'
--
-- * 'bagOauthToken'
--
-- * 'bagFields'
--
-- * 'bagCallback'
--
-- * 'bagAlt'
billingAccountsGet'
    :: Text -- ^ 'name'
    -> BillingAccountsGet'
billingAccountsGet' pBagName_ =
    BillingAccountsGet'
    { _bagXgafv = Nothing
    , _bagQuotaUser = Nothing
    , _bagPrettyPrint = True
    , _bagUploadProtocol = Nothing
    , _bagPp = True
    , _bagAccessToken = Nothing
    , _bagUploadType = Nothing
    , _bagBearerToken = Nothing
    , _bagKey = Nothing
    , _bagName = pBagName_
    , _bagOauthToken = Nothing
    , _bagFields = Nothing
    , _bagCallback = Nothing
    , _bagAlt = "json"
    }

-- | V1 error format.
bagXgafv :: Lens' BillingAccountsGet' (Maybe Text)
bagXgafv = lens _bagXgafv (\ s a -> s{_bagXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bagQuotaUser :: Lens' BillingAccountsGet' (Maybe Text)
bagQuotaUser
  = lens _bagQuotaUser (\ s a -> s{_bagQuotaUser = a})

-- | Returns response with indentations and line breaks.
bagPrettyPrint :: Lens' BillingAccountsGet' Bool
bagPrettyPrint
  = lens _bagPrettyPrint
      (\ s a -> s{_bagPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bagUploadProtocol :: Lens' BillingAccountsGet' (Maybe Text)
bagUploadProtocol
  = lens _bagUploadProtocol
      (\ s a -> s{_bagUploadProtocol = a})

-- | Pretty-print response.
bagPp :: Lens' BillingAccountsGet' Bool
bagPp = lens _bagPp (\ s a -> s{_bagPp = a})

-- | OAuth access token.
bagAccessToken :: Lens' BillingAccountsGet' (Maybe Text)
bagAccessToken
  = lens _bagAccessToken
      (\ s a -> s{_bagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bagUploadType :: Lens' BillingAccountsGet' (Maybe Text)
bagUploadType
  = lens _bagUploadType
      (\ s a -> s{_bagUploadType = a})

-- | OAuth bearer token.
bagBearerToken :: Lens' BillingAccountsGet' (Maybe Text)
bagBearerToken
  = lens _bagBearerToken
      (\ s a -> s{_bagBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bagKey :: Lens' BillingAccountsGet' (Maybe Text)
bagKey = lens _bagKey (\ s a -> s{_bagKey = a})

-- | The resource name of the billing account to retrieve. For example,
-- \`billingAccounts\/012345-567890-ABCDEF\`.
bagName :: Lens' BillingAccountsGet' Text
bagName = lens _bagName (\ s a -> s{_bagName = a})

-- | OAuth 2.0 token for the current user.
bagOauthToken :: Lens' BillingAccountsGet' (Maybe Text)
bagOauthToken
  = lens _bagOauthToken
      (\ s a -> s{_bagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bagFields :: Lens' BillingAccountsGet' (Maybe Text)
bagFields
  = lens _bagFields (\ s a -> s{_bagFields = a})

-- | JSONP
bagCallback :: Lens' BillingAccountsGet' (Maybe Text)
bagCallback
  = lens _bagCallback (\ s a -> s{_bagCallback = a})

-- | Data format for response.
bagAlt :: Lens' BillingAccountsGet' Text
bagAlt = lens _bagAlt (\ s a -> s{_bagAlt = a})

instance GoogleRequest BillingAccountsGet' where
        type Rs BillingAccountsGet' = BillingAccount
        request = requestWithRoute defReq billingURL
        requestWithRoute r u BillingAccountsGet'{..}
          = go _bagXgafv _bagQuotaUser (Just _bagPrettyPrint)
              _bagUploadProtocol
              (Just _bagPp)
              _bagAccessToken
              _bagUploadType
              _bagBearerToken
              _bagKey
              _bagName
              _bagOauthToken
              _bagFields
              _bagCallback
              (Just _bagAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BillingAccountsGetResource)
                      r
                      u
