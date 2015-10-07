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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedstatusesCustombatch@.
module Network.Google.Resource.Content.Datafeedstatuses.Custombatch
    (
    -- * REST Resource
      DatafeedstatusesCustombatchResource

    -- * Creating a Request
    , datafeedstatusesCustombatch'
    , DatafeedstatusesCustombatch'

    -- * Request Lenses
    , dcQuotaUser
    , dcPrettyPrint
    , dcUserIP
    , dcPayload
    , dcKey
    , dcOAuthToken
    , dcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedstatusesCustombatch@ method which the
-- 'DatafeedstatusesCustombatch'' request conforms to.
type DatafeedstatusesCustombatchResource =
     "datafeedstatuses" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DatafeedstatusesCustomBatchRequest :>
                         Post '[JSON] DatafeedstatusesCustomBatchResponse

--
-- /See:/ 'datafeedstatusesCustombatch'' smart constructor.
data DatafeedstatusesCustombatch' = DatafeedstatusesCustombatch'
    { _dcQuotaUser   :: !(Maybe Text)
    , _dcPrettyPrint :: !Bool
    , _dcUserIP      :: !(Maybe Text)
    , _dcPayload     :: !DatafeedstatusesCustomBatchRequest
    , _dcKey         :: !(Maybe AuthKey)
    , _dcOAuthToken  :: !(Maybe OAuthToken)
    , _dcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcQuotaUser'
--
-- * 'dcPrettyPrint'
--
-- * 'dcUserIP'
--
-- * 'dcPayload'
--
-- * 'dcKey'
--
-- * 'dcOAuthToken'
--
-- * 'dcFields'
datafeedstatusesCustombatch'
    :: DatafeedstatusesCustomBatchRequest -- ^ 'payload'
    -> DatafeedstatusesCustombatch'
datafeedstatusesCustombatch' pDcPayload_ =
    DatafeedstatusesCustombatch'
    { _dcQuotaUser = Nothing
    , _dcPrettyPrint = True
    , _dcUserIP = Nothing
    , _dcPayload = pDcPayload_
    , _dcKey = Nothing
    , _dcOAuthToken = Nothing
    , _dcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcQuotaUser :: Lens' DatafeedstatusesCustombatch' (Maybe Text)
dcQuotaUser
  = lens _dcQuotaUser (\ s a -> s{_dcQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcPrettyPrint :: Lens' DatafeedstatusesCustombatch' Bool
dcPrettyPrint
  = lens _dcPrettyPrint
      (\ s a -> s{_dcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcUserIP :: Lens' DatafeedstatusesCustombatch' (Maybe Text)
dcUserIP = lens _dcUserIP (\ s a -> s{_dcUserIP = a})

-- | Multipart request metadata.
dcPayload :: Lens' DatafeedstatusesCustombatch' DatafeedstatusesCustomBatchRequest
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcKey :: Lens' DatafeedstatusesCustombatch' (Maybe AuthKey)
dcKey = lens _dcKey (\ s a -> s{_dcKey = a})

-- | OAuth 2.0 token for the current user.
dcOAuthToken :: Lens' DatafeedstatusesCustombatch' (Maybe OAuthToken)
dcOAuthToken
  = lens _dcOAuthToken (\ s a -> s{_dcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcFields :: Lens' DatafeedstatusesCustombatch' (Maybe Text)
dcFields = lens _dcFields (\ s a -> s{_dcFields = a})

instance GoogleAuth DatafeedstatusesCustombatch'
         where
        _AuthKey = dcKey . _Just
        _AuthToken = dcOAuthToken . _Just

instance GoogleRequest DatafeedstatusesCustombatch'
         where
        type Rs DatafeedstatusesCustombatch' =
             DatafeedstatusesCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedstatusesCustombatch'{..}
          = go _dcQuotaUser (Just _dcPrettyPrint) _dcUserIP
              _dcFields
              _dcKey
              _dcOAuthToken
              (Just AltJSON)
              _dcPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedstatusesCustombatchResource)
                      rq
