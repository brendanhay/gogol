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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedstatusesGet@.
module Network.Google.Resource.Content.Datafeedstatuses.Get
    (
    -- * REST Resource
      DatafeedstatusesGetResource

    -- * Creating a Request
    , datafeedstatusesGet'
    , DatafeedstatusesGet'

    -- * Request Lenses
    , dQuotaUser
    , dMerchantId
    , dPrettyPrint
    , dUserIP
    , dKey
    , dDatafeedId
    , dOAuthToken
    , dFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedstatusesGet@ method which the
-- 'DatafeedstatusesGet'' request conforms to.
type DatafeedstatusesGetResource =
     Capture "merchantId" Word64 :>
       "datafeedstatuses" :>
         Capture "datafeedId" Word64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] DatafeedStatus

-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedstatusesGet'' smart constructor.
data DatafeedstatusesGet' = DatafeedstatusesGet'
    { _dQuotaUser   :: !(Maybe Text)
    , _dMerchantId  :: !Word64
    , _dPrettyPrint :: !Bool
    , _dUserIP      :: !(Maybe Text)
    , _dKey         :: !(Maybe AuthKey)
    , _dDatafeedId  :: !Word64
    , _dOAuthToken  :: !(Maybe OAuthToken)
    , _dFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dQuotaUser'
--
-- * 'dMerchantId'
--
-- * 'dPrettyPrint'
--
-- * 'dUserIP'
--
-- * 'dKey'
--
-- * 'dDatafeedId'
--
-- * 'dOAuthToken'
--
-- * 'dFields'
datafeedstatusesGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedstatusesGet'
datafeedstatusesGet' pDMerchantId_ pDDatafeedId_ =
    DatafeedstatusesGet'
    { _dQuotaUser = Nothing
    , _dMerchantId = pDMerchantId_
    , _dPrettyPrint = True
    , _dUserIP = Nothing
    , _dKey = Nothing
    , _dDatafeedId = pDDatafeedId_
    , _dOAuthToken = Nothing
    , _dFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dQuotaUser :: Lens' DatafeedstatusesGet' (Maybe Text)
dQuotaUser
  = lens _dQuotaUser (\ s a -> s{_dQuotaUser = a})

dMerchantId :: Lens' DatafeedstatusesGet' Word64
dMerchantId
  = lens _dMerchantId (\ s a -> s{_dMerchantId = a})

-- | Returns response with indentations and line breaks.
dPrettyPrint :: Lens' DatafeedstatusesGet' Bool
dPrettyPrint
  = lens _dPrettyPrint (\ s a -> s{_dPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dUserIP :: Lens' DatafeedstatusesGet' (Maybe Text)
dUserIP = lens _dUserIP (\ s a -> s{_dUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dKey :: Lens' DatafeedstatusesGet' (Maybe AuthKey)
dKey = lens _dKey (\ s a -> s{_dKey = a})

dDatafeedId :: Lens' DatafeedstatusesGet' Word64
dDatafeedId
  = lens _dDatafeedId (\ s a -> s{_dDatafeedId = a})

-- | OAuth 2.0 token for the current user.
dOAuthToken :: Lens' DatafeedstatusesGet' (Maybe OAuthToken)
dOAuthToken
  = lens _dOAuthToken (\ s a -> s{_dOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dFields :: Lens' DatafeedstatusesGet' (Maybe Text)
dFields = lens _dFields (\ s a -> s{_dFields = a})

instance GoogleAuth DatafeedstatusesGet' where
        _AuthKey = dKey . _Just
        _AuthToken = dOAuthToken . _Just

instance GoogleRequest DatafeedstatusesGet' where
        type Rs DatafeedstatusesGet' = DatafeedStatus
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedstatusesGet'{..}
          = go _dMerchantId _dDatafeedId _dQuotaUser
              (Just _dPrettyPrint)
              _dUserIP
              _dFields
              _dKey
              _dOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedstatusesGetResource)
                      rq
